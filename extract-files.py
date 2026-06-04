#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.file import File
from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.fixups_lib import (
    lib_fixup_remove,
    lib_fixups,
    lib_fixups_user_type,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'device/sony/sphinx',
]

def lib_fixup_system_suffix(lib: str, partition: str, *args, **kwargs):
    return f'{lib}-{partition}' if partition == 'system' else None

lib_fixups: lib_fixups_user_type = {
    **lib_fixups,
    (
        'vendor.somc.hardware.camera.cacao@1.0',
        'vendor.somc.hardware.camera.cacao@2.0',
        'vendor.somc.hardware.camera.cacao@3.0',
        'vendor.somc.hardware.camera.cacao@3.1',
        'vendor.somc.hardware.camera.cacao@3.2',
        'vendor.somc.hardware.camera.provider@1.0',
        'vendor.somc.hardware.camera.device@1.0',
    ): lib_fixup_system_suffix,
}

blob_fixups: blob_fixups_user_type = {
    (
        'system/lib/vendor.somc.hardware.camera.cacao@1.0.so',
        'system/lib/vendor.somc.hardware.camera.cacao@2.0.so',
        'system/lib/vendor.somc.hardware.camera.cacao@3.0.so',
        'system/lib/vendor.somc.hardware.camera.cacao@3.1.so',
        'system/lib/vendor.somc.hardware.camera.cacao@3.2.so',
        'system/lib/vendor.somc.hardware.camera.provider@1.0.so',
        'system/lib/vendor.somc.hardware.camera.device@1.0.so',
    ): blob_fixup()
        .replace_needed('libhidlbase.so', 'libhidlbase-v32.so'),
    (
        'system/lib/libcacao_client.so',
        'system/lib64/libcacao_client.so',
    ): blob_fixup()
        .add_needed('libshim_binder.so'),
    (
        'system/lib/libcacao_process_ctrl_gateway.so',
    ): blob_fixup()
        .add_needed('libgui_shim.so'),
    (
        'system/bin/cacaoserver',
    ): blob_fixup()
        .add_needed('libshim_hidl.so'),
}  # fmt: skip

module = ExtractUtilsModule(
    'camera',
    'sony',
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
    device_rel_path='vendor/sony/extras',
)

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()