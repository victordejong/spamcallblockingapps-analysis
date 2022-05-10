package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f1127a = (IconCompat) versionedParcel.m36994a((VersionedParcel) remoteActionCompat.f1127a, 1);
        remoteActionCompat.f1128b = versionedParcel.m36991a(remoteActionCompat.f1128b, 2);
        remoteActionCompat.f1129c = versionedParcel.m36991a(remoteActionCompat.f1129c, 3);
        remoteActionCompat.f1130d = (PendingIntent) versionedParcel.m36996a((VersionedParcel) remoteActionCompat.f1130d, 4);
        remoteActionCompat.f1131e = versionedParcel.m36981a(remoteActionCompat.f1131e, 5);
        remoteActionCompat.f1132f = versionedParcel.m36981a(remoteActionCompat.f1132f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(false, false);
        versionedParcel.m36971b(remoteActionCompat.f1127a, 1);
        versionedParcel.m36970b(remoteActionCompat.f1128b, 2);
        versionedParcel.m36970b(remoteActionCompat.f1129c, 3);
        versionedParcel.m36973b(remoteActionCompat.f1130d, 4);
        versionedParcel.m36964b(remoteActionCompat.f1131e, 5);
        versionedParcel.m36964b(remoteActionCompat.f1132f, 6);
    }
}
