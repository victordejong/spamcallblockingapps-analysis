package androidx.media2.common;

import androidx.media2.common.SessionPlayer;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/common/TrackInfoParcelizer.class */
public final class TrackInfoParcelizer {
    public static SessionPlayer.TrackInfo read(VersionedParcel versionedParcel) {
        SessionPlayer.TrackInfo trackInfo = new SessionPlayer.TrackInfo();
        trackInfo.f1535a = versionedParcel.m37000a(trackInfo.f1535a, 1);
        trackInfo.f1536b = (MediaItem) versionedParcel.m36994a((VersionedParcel) trackInfo.f1536b, 2);
        trackInfo.f1537c = versionedParcel.m37000a(trackInfo.f1537c, 3);
        trackInfo.f1538d = versionedParcel.m36998a(trackInfo.f1538d, 4);
        trackInfo.mo32075f();
        return trackInfo;
    }

    public static void write(SessionPlayer.TrackInfo trackInfo, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        trackInfo.mo32076a(versionedParcel.m36962c());
        versionedParcel.m36977b(trackInfo.f1535a, 1);
        versionedParcel.m36971b(trackInfo.f1536b, 2);
        versionedParcel.m36977b(trackInfo.f1537c, 3);
        versionedParcel.m36975b(trackInfo.f1538d, 4);
    }
}
