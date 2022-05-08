package android.support.p014v4.media;

import android.content.ComponentName;
import android.support.p014v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.d */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/d.class */
final class RunnableC0180d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ComponentName f429a;

    /* renamed from: b */
    final /* synthetic */ MediaBrowserCompat.C0168h.ServiceConnectionC0169a f430b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0180d(MediaBrowserCompat.C0168h.ServiceConnectionC0169a aVar, ComponentName componentName) {
        this.f430b = aVar;
        this.f429a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (MediaBrowserCompat.f354a) {
            Log.d("MediaBrowserCompat", "MediaServiceConnection.onServiceDisconnected name=" + this.f429a + " this=" + this + " mServiceConnection=" + MediaBrowserCompat.C0168h.this.f381g);
            MediaBrowserCompat.C0168h.this.m10106b();
        }
        if (this.f430b.m10101a("onServiceDisconnected")) {
            MediaBrowserCompat.C0168h.this.f382h = null;
            MediaBrowserCompat.C0168h.this.f383i = null;
            MediaBrowserCompat.C0168h.this.f379e.m10112a(null);
            MediaBrowserCompat.C0168h.this.f380f = 4;
            MediaBrowserCompat.C0168h.this.f377c.mo7521b();
        }
    }
}
