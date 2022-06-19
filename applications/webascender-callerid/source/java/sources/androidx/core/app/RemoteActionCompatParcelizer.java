package androidx.core.app;

import android.app.PendingIntent;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.a = versionedParcel.m4651v(remoteActionCompat.a, 1);
        remoteActionCompat.b = versionedParcel.m4661l(remoteActionCompat.b, 2);
        remoteActionCompat.c = versionedParcel.m4661l(remoteActionCompat.c, 3);
        remoteActionCompat.d = (PendingIntent) versionedParcel.m4655r(remoteActionCompat.d, 4);
        remoteActionCompat.e = versionedParcel.m4665h(remoteActionCompat.e, 5);
        remoteActionCompat.f = versionedParcel.m4665h(remoteActionCompat.f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.m4649x(false, false);
        versionedParcel.m4674M(remoteActionCompat.a, 1);
        versionedParcel.m4683D(remoteActionCompat.b, 2);
        versionedParcel.m4683D(remoteActionCompat.c, 3);
        versionedParcel.m4679H(remoteActionCompat.d, 4);
        versionedParcel.m4647z(remoteActionCompat.e, 5);
        versionedParcel.m4647z(remoteActionCompat.f, 6);
    }
}
