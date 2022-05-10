package androidx.media2.session;

import androidx.media2.common.MediaItem;
import androidx.media2.common.ParcelImplListSlice;
import androidx.media2.session.MediaLibraryService;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/LibraryResultParcelizer.class */
public final class LibraryResultParcelizer {
    public static LibraryResult read(VersionedParcel versionedParcel) {
        LibraryResult libraryResult = new LibraryResult();
        libraryResult.f2183a = versionedParcel.m37000a(libraryResult.f2183a, 1);
        libraryResult.f2184b = versionedParcel.m36999a(libraryResult.f2184b, 2);
        libraryResult.f2186d = (MediaItem) versionedParcel.m36994a((VersionedParcel) libraryResult.f2186d, 3);
        libraryResult.f2187e = (MediaLibraryService.LibraryParams) versionedParcel.m36994a((VersionedParcel) libraryResult.f2187e, 4);
        libraryResult.f2189g = (ParcelImplListSlice) versionedParcel.m36996a((VersionedParcel) libraryResult.f2189g, 5);
        libraryResult.mo32075f();
        return libraryResult;
    }

    public static void write(LibraryResult libraryResult, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        libraryResult.mo32076a(versionedParcel.m36962c());
        versionedParcel.m36977b(libraryResult.f2183a, 1);
        versionedParcel.m36976b(libraryResult.f2184b, 2);
        versionedParcel.m36971b(libraryResult.f2186d, 3);
        versionedParcel.m36971b(libraryResult.f2187e, 4);
        versionedParcel.m36973b(libraryResult.f2189g, 5);
    }
}
