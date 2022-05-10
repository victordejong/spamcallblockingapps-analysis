package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/CallbackMediaItemParcelizer.class */
public final class CallbackMediaItemParcelizer {
    public static CallbackMediaItem read(VersionedParcel versionedParcel) {
        CallbackMediaItem callbackMediaItem = new CallbackMediaItem();
        callbackMediaItem.f1518b = (MediaMetadata) versionedParcel.m36994a((VersionedParcel) callbackMediaItem.f1518b, 1);
        callbackMediaItem.f1519c = versionedParcel.m36999a(callbackMediaItem.f1519c, 2);
        callbackMediaItem.f1520d = versionedParcel.m36999a(callbackMediaItem.f1520d, 3);
        callbackMediaItem.mo32075f();
        return callbackMediaItem;
    }

    public static void write(CallbackMediaItem callbackMediaItem, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        callbackMediaItem.mo32076a(versionedParcel.m36962c());
        versionedParcel.m36971b(callbackMediaItem.f1518b, 1);
        versionedParcel.m36976b(callbackMediaItem.f1519c, 2);
        versionedParcel.m36976b(callbackMediaItem.f1520d, 3);
    }
}
