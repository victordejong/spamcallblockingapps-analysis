package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/MediaMetadataParcelizer.class */
public final class MediaMetadataParcelizer {
    public static MediaMetadata read(VersionedParcel versionedParcel) {
        MediaMetadata mediaMetadata = new MediaMetadata();
        mediaMetadata.f1525a = versionedParcel.m36998a(mediaMetadata.f1525a, 1);
        mediaMetadata.f1526b = (ParcelImplListSlice) versionedParcel.m36996a((VersionedParcel) mediaMetadata.f1526b, 2);
        mediaMetadata.mo32075f();
        return mediaMetadata;
    }

    public static void write(MediaMetadata mediaMetadata, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        mediaMetadata.mo32076a(versionedParcel.m36962c());
        versionedParcel.m36975b(mediaMetadata.f1525a, 1);
        versionedParcel.m36973b(mediaMetadata.f1526b, 2);
    }
}
