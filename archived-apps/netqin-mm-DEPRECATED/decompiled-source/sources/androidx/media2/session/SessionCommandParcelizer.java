package androidx.media2.session;

import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommandParcelizer.class */
public final class SessionCommandParcelizer {
    public static SessionCommand read(VersionedParcel versionedParcel) {
        SessionCommand sessionCommand = new SessionCommand();
        sessionCommand.f2221a = versionedParcel.m37000a(sessionCommand.f2221a, 1);
        sessionCommand.f2222b = versionedParcel.m36987a(sessionCommand.f2222b, 2);
        sessionCommand.f2223c = versionedParcel.m36998a(sessionCommand.f2223c, 3);
        return sessionCommand;
    }

    public static void write(SessionCommand sessionCommand, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36977b(sessionCommand.f2221a, 1);
        versionedParcel.m36968b(sessionCommand.f2222b, 2);
        versionedParcel.m36975b(sessionCommand.f2223c, 3);
    }
}
