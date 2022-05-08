package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.AbstractC1276b;
/* loaded from: classes-dex2jar.jar:androidx/core/app/RemoteActionCompatParcelizer.class */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(AbstractC1276b bVar) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        remoteActionCompat.f2773a = (IconCompat) bVar.m6458c((AbstractC1276b) remoteActionCompat.f2773a);
        remoteActionCompat.f2774b = bVar.m6463b(remoteActionCompat.f2774b, 2);
        remoteActionCompat.f2775c = bVar.m6463b(remoteActionCompat.f2775c, 3);
        remoteActionCompat.f2776d = (PendingIntent) bVar.m6465b((AbstractC1276b) remoteActionCompat.f2776d, 4);
        remoteActionCompat.f2777e = bVar.m6460b(remoteActionCompat.f2777e, 5);
        remoteActionCompat.f2778f = bVar.m6460b(remoteActionCompat.f2778f, 6);
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, AbstractC1276b bVar) {
        bVar.m6472a(remoteActionCompat.f2773a);
        bVar.m6470a(remoteActionCompat.f2774b, 2);
        bVar.m6470a(remoteActionCompat.f2775c, 3);
        bVar.m6473a(remoteActionCompat.f2776d, 4);
        bVar.m6467a(remoteActionCompat.f2777e, 5);
        bVar.m6467a(remoteActionCompat.f2778f, 6);
    }
}
