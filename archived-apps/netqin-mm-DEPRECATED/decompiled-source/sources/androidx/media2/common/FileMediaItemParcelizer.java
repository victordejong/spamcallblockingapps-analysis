package androidx.media2.common;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/FileMediaItemParcelizer.class */
public final class FileMediaItemParcelizer {
    public static FileMediaItem read(VersionedParcel versionedParcel) {
        FileMediaItem fileMediaItem = new FileMediaItem();
        fileMediaItem.f1518b = (MediaMetadata) versionedParcel.m36994a((VersionedParcel) fileMediaItem.f1518b, 1);
        fileMediaItem.f1519c = versionedParcel.m36999a(fileMediaItem.f1519c, 2);
        fileMediaItem.f1520d = versionedParcel.m36999a(fileMediaItem.f1520d, 3);
        fileMediaItem.mo32075f();
        return fileMediaItem;
    }

    public static void write(FileMediaItem fileMediaItem, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        fileMediaItem.mo32076a(versionedParcel.m36962c());
        versionedParcel.m36971b(fileMediaItem.f1518b, 1);
        versionedParcel.m36976b(fileMediaItem.f1519c, 2);
        versionedParcel.m36976b(fileMediaItem.f1520d, 3);
    }
}
