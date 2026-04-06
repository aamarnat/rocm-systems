# Patches for Old FIFO Implementation

This directory contains patches to fix issues after rebasing the old FIFO async execution implementation (`users/aamarnat/aie-async-execution`) onto current `develop`.

## Patches

### 1. `deadlock_fix.patch`
**Purpose**: Fix recursive mutex acquisition deadlock in `WaitForAvailableHwCtxSlot()`

**Problem**: `WaitForAvailableHwCtxSlot()` acquires `pending_cmds_mutex_` then calls `DestroyCompletedDeferredContexts()` which tries to acquire the same mutex again, causing deadlock.

**Solution**:
- Split `DestroyCompletedDeferredContexts()` into:
  - `DestroyCompletedDeferredContextsUnlocked()` - assumes lock already held
  - `DestroyCompletedDeferredContexts()` - acquires lock, calls unlocked version
- Update `WaitForAvailableHwCtxSlot()` to call the unlocked version
- Add `DEFAULT_TIMEOUT_VAL` constant definition (set to 0 for no timeout)
- Remove `GetShareableHandle()` function that doesn't exist in header

**Files Modified**:
- `runtime/hsa-runtime/core/driver/xdna/amd_xdna_driver.cpp`
- `runtime/hsa-runtime/core/inc/amd_xdna_driver.h`

### 2. `build_fixes.patch`
**Purpose**: Fix assembly and CMake build issues after rebase to current develop

**Changes**:
- Add missing `HW_REG_WAVE_SCHED_MODE` definition in `trap_handler_gfx12.s`
- Update CMakeLists to use `/opt/rocm/bin/amdclang` directly instead of cmake clang target
- Remove `gfx950` from target list (not supported by clang-18)
- Update blit shaders and image CMakeLists with similar toolchain fixes

**Files Modified**:
- `runtime/hsa-runtime/core/runtime/trap_handler/trap_handler_gfx12.s`
- `runtime/hsa-runtime/core/runtime/trap_handler/CMakeLists.txt`
- `runtime/hsa-runtime/core/runtime/blit_shaders/CMakeLists.txt`
- `runtime/hsa-runtime/image/blit_src/CMakeLists.txt`

## How to Apply

After rebasing `users/aamarnat/aie-async-execution` onto `fork/develop`:

```bash
# From rocr-runtime directory
git apply patches/deadlock_fix.patch
git apply patches/build_fixes.patch

# Commit the changes
git add -A
git commit -m "Apply deadlock fix and build fixes after rebase

- Fix recursive mutex deadlock in WaitForAvailableHwCtxSlot
- Fix trap handler assembly for gfx12
- Update CMakeLists to use /opt/rocm/bin/amdclang
- Remove gfx950 from targets (not supported by clang-18)
"
```

## Verification

After applying patches and building:

```bash
# Configure
mkdir -p build_old_fifo_rebased
cd build_old_fifo_rebased
cmake \
  -DCMAKE_C_COMPILER=/opt/rocm/bin/amdclang \
  -DCMAKE_CXX_COMPILER=/opt/rocm/bin/amdclang++ \
  -DClang_DIR=/opt/rocm/llvm/lib/cmake/clang \
  -DLLVM_DIR=/opt/rocm/llvm/lib/cmake/llvm \
  -DIMAGE_SUPPORT=OFF \
  -DCMAKE_INSTALL_PREFIX=../install_old_fifo_rebased \
  -DBUILD_SHARED_LIBS=ON \
  ..

# Build
make -j8

# Install
make install

# Verify
ls -lh ../install_old_fifo_rebased/lib/libhsa-runtime64.so*
```

Expected output: `libhsa-runtime64.so.1.21.0` (~5MB)

## Background

The old FIFO async execution implementation was 864 commits behind develop. After rebasing:
1. One commit (848d77a85b "Fix ring buffer indexing") was automatically skipped as already applied
2. Two commits required conflict resolution in `amd_xdna_driver.cpp` and `amd_xdna_driver.h`
3. Build infrastructure changes required assembly and CMake fixes

These patches ensure the rebased branch builds and runs correctly for performance comparison with Approach B (Syncobj Multi-Wait).
