package androidx.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.j */
/* loaded from: classes-dex2jar.jar:androidx/media/j.class */
final class RunnableC0967j implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.AbstractC0955e f3971a;

    /* renamed from: b */
    final /* synthetic */ String f3972b;

    /* renamed from: c */
    final /* synthetic */ int f3973c;

    /* renamed from: d */
    final /* synthetic */ int f3974d;

    /* renamed from: e */
    final /* synthetic */ Bundle f3975e;

    /* renamed from: f */
    final /* synthetic */ MediaBrowserServiceCompat.C0954d f3976f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0967j(MediaBrowserServiceCompat.C0954d dVar, MediaBrowserServiceCompat.AbstractC0955e eVar, String str, int i, int i2, Bundle bundle) {
        this.f3976f = dVar;
        this.f3971a = eVar;
        this.f3972b = str;
        this.f3973c = i;
        this.f3974d = i2;
        this.f3975e = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder a = this.f3971a.mo7533a();
        MediaBrowserServiceCompat.this.f3929b.remove(a);
        MediaBrowserServiceCompat.C0952b bVar = new MediaBrowserServiceCompat.C0952b(this.f3972b, this.f3973c, this.f3974d, this.f3975e, this.f3971a);
        MediaBrowserServiceCompat.this.f3930c = bVar;
        bVar.f3942h = MediaBrowserServiceCompat.this.m7544a();
        MediaBrowserServiceCompat.this.f3930c = null;
        if (bVar.f3942h == null) {
            Log.i("MBServiceCompat", "No root for client " + this.f3972b + " from service " + getClass().getName());
            try {
                this.f3971a.mo7529b();
            } catch (RemoteException e) {
                Log.w("MBServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + this.f3972b);
            }
        } else {
            try {
                MediaBrowserServiceCompat.this.f3929b.put(a, bVar);
                a.linkToDeath(bVar, 0);
                if (MediaBrowserServiceCompat.this.f3932e != null) {
                    this.f3971a.mo7531a(bVar.f3942h.m7540a(), MediaBrowserServiceCompat.this.f3932e, bVar.f3942h.m7539b());
                }
            } catch (RemoteException e2) {
                Log.w("MBServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + this.f3972b);
                MediaBrowserServiceCompat.this.f3929b.remove(a);
            }
        }
    }
}
