package android.support.p014v4.media;

import android.content.ComponentName;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.p014v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.c */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/c.class */
final class RunnableC0179c implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ComponentName f426a;

    /* renamed from: b */
    final /* synthetic */ IBinder f427b;

    /* renamed from: c */
    final /* synthetic */ MediaBrowserCompat.C0168h.ServiceConnectionC0169a f428c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0179c(MediaBrowserCompat.C0168h.ServiceConnectionC0169a aVar, ComponentName componentName, IBinder iBinder) {
        this.f428c = aVar;
        this.f426a = componentName;
        this.f427b = iBinder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (MediaBrowserCompat.f354a) {
            Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceConnected name=" + this.f426a + " binder=" + this.f427b);
            MediaBrowserCompat.C0168h.this.m10106b();
        }
        if (this.f428c.m10101a("onServiceConnected")) {
            MediaBrowserCompat.C0168h.this.f382h = new MediaBrowserCompat.C0171j(this.f427b, MediaBrowserCompat.C0168h.this.f378d);
            MediaBrowserCompat.C0168h.this.f383i = new Messenger(MediaBrowserCompat.C0168h.this.f379e);
            MediaBrowserCompat.C0168h.this.f379e.m10112a(MediaBrowserCompat.C0168h.this.f383i);
            MediaBrowserCompat.C0168h.this.f380f = 2;
            try {
                if (MediaBrowserCompat.f354a) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    MediaBrowserCompat.C0168h.this.m10106b();
                }
                MediaBrowserCompat.C0168h.this.f382h.m10096a(MediaBrowserCompat.C0168h.this.f375a, MediaBrowserCompat.C0168h.this.f383i);
            } catch (RemoteException e) {
                Log.w("MediaBrowserCompat", "RemoteException during connect for " + MediaBrowserCompat.C0168h.this.f376b);
                if (MediaBrowserCompat.f354a) {
                    Log.d("MediaBrowserCompat", "ServiceCallbacks.onConnect...");
                    MediaBrowserCompat.C0168h.this.m10106b();
                }
            }
        }
    }
}
