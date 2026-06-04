#include <utils/RefBase.h>
#include <binder/Parcel.h>
#include <android/log.h>
#include <cstdint>

extern "C" {
    intptr_t _ZNK7android6Parcel10readIntPtrEv(void* self) {
        if (self == nullptr) return 0;
        auto* parcel = static_cast<android::Parcel*>(self);
        #ifdef __LP64__
        return parcel->readInt64();
        #else
        return parcel->readInt32();
        #endif
    }
}