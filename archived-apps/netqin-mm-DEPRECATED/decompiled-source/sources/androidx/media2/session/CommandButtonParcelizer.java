package androidx.media2.session;

import androidx.media2.session.MediaSession;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/CommandButtonParcelizer.class */
public final class CommandButtonParcelizer {
    public static MediaSession.CommandButton read(VersionedParcel versionedParcel) {
        MediaSession.CommandButton commandButton = new MediaSession.CommandButton();
        commandButton.f2203a = (SessionCommand) versionedParcel.m36994a((VersionedParcel) commandButton.f2203a, 1);
        commandButton.f2204b = versionedParcel.m37000a(commandButton.f2204b, 2);
        commandButton.f2205c = versionedParcel.m36991a(commandButton.f2205c, 3);
        commandButton.f2206d = versionedParcel.m36998a(commandButton.f2206d, 4);
        commandButton.f2207e = versionedParcel.m36981a(commandButton.f2207e, 5);
        return commandButton;
    }

    public static void write(MediaSession.CommandButton commandButton, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36971b(commandButton.f2203a, 1);
        versionedParcel.m36977b(commandButton.f2204b, 2);
        versionedParcel.m36970b(commandButton.f2205c, 3);
        versionedParcel.m36975b(commandButton.f2206d, 4);
        versionedParcel.m36964b(commandButton.f2207e, 5);
    }
}
