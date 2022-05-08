package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.o */
/* loaded from: classes-dex2jar.jar:androidx/media/o.class */
final class RunnableC0972o implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.AbstractC0955e f3992a;

    /* renamed from: b */
    final /* synthetic */ String f3993b;

    /* renamed from: c */
    final /* synthetic */ int f3994c;

    /* renamed from: d */
    final /* synthetic */ int f3995d;

    /* renamed from: e */
    final /* synthetic */ Bundle f3996e;

    /* renamed from: f */
    final /* synthetic */ MediaBrowserServiceCompat.C0954d f3997f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0972o(MediaBrowserServiceCompat.C0954d dVar, MediaBrowserServiceCompat.AbstractC0955e eVar, String str, int i, int i2, Bundle bundle) {
        this.f3997f = dVar;
        this.f3992a = eVar;
        this.f3993b = str;
        this.f3994c = i;
        this.f3995d = i2;
        this.f3996e = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder a = this.f3992a.mo7533a();
        MediaBrowserServiceCompat.this.f3929b.remove(a);
        MediaBrowserServiceCompat.C0952b bVar = new MediaBrowserServiceCompat.C0952b(this.f3993b, this.f3994c, this.f3995d, this.f3996e, this.f3992a);
        MediaBrowserServiceCompat.this.f3929b.put(a, bVar);
        try {
            a.linkToDeath(bVar, 0);
        } catch (RemoteException e) {
            Log.w("MBServiceCompat", "IBinder is already dead.");
        }
    }
}
