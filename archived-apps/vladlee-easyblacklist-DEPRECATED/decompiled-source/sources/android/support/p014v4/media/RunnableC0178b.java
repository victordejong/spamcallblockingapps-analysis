package android.support.p014v4.media;

import android.os.RemoteException;
import android.support.p014v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.b */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/b.class */
final class RunnableC0178b implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserCompat.C0168h f425a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0178b(MediaBrowserCompat.C0168h hVar) {
        this.f425a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f425a.f383i != null) {
            try {
                this.f425a.f382h.m10095a(this.f425a.f383i);
            } catch (RemoteException e) {
                Log.w("MediaBrowserCompat", "RemoteException during connect for " + this.f425a.f376b);
            }
        }
        int i = this.f425a.f380f;
        this.f425a.m10109a();
        if (i != 0) {
            this.f425a.f380f = i;
        }
        if (MediaBrowserCompat.f354a) {
            Log.d("MediaBrowserCompat", "disconnect...");
            this.f425a.m10106b();
        }
    }
}
