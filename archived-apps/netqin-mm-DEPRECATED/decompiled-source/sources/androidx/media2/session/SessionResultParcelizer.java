package androidx.media2.session;

import androidx.media2.common.MediaItem;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionResultParcelizer.class */
public final class SessionResultParcelizer {
    public static SessionResult read(VersionedParcel versionedParcel) {
        SessionResult sessionResult = new SessionResult();
        sessionResult.f2228a = versionedParcel.m37000a(sessionResult.f2228a, 1);
        sessionResult.f2229b = versionedParcel.m36999a(sessionResult.f2229b, 2);
        sessionResult.f2230c = versionedParcel.m36998a(sessionResult.f2230c, 3);
        sessionResult.f2231d = (MediaItem) versionedParcel.m36994a((VersionedParcel) sessionResult.f2231d, 4);
        return sessionResult;
    }

    public static void write(SessionResult sessionResult, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36977b(sessionResult.f2228a, 1);
        versionedParcel.m36976b(sessionResult.f2229b, 2);
        versionedParcel.m36975b(sessionResult.f2230c, 3);
        versionedParcel.m36971b(sessionResult.f2231d, 4);
    }
}
