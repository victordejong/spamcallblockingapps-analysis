package androidx.media2.common;

import android.graphics.Bitmap;
import androidx.media2.common.MediaMetadata;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/BitmapEntryParcelizer.class */
public final class BitmapEntryParcelizer {
    public static MediaMetadata.C0274a read(VersionedParcel versionedParcel) {
        MediaMetadata.C0274a aVar = new MediaMetadata.C0274a();
        aVar.f1527a = versionedParcel.m36987a(aVar.f1527a, 1);
        aVar.f1528b = (Bitmap) versionedParcel.m36996a((VersionedParcel) aVar.f1528b, 2);
        return aVar;
    }

    public static void write(MediaMetadata.C0274a aVar, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36968b(aVar.f1527a, 1);
        versionedParcel.m36973b(aVar.f1528b, 2);
    }
}
