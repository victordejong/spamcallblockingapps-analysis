package android.support.p014v4.media;

import android.content.Intent;
import android.support.p014v4.media.MediaBrowserCompat;
import android.util.Log;
/* renamed from: android.support.v4.media.a */
/* loaded from: classes-dex2jar.jar:android/support/v4/media/a.class */
final class RunnableC0177a implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserCompat.C0168h f424a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0177a(MediaBrowserCompat.C0168h hVar) {
        this.f424a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f424a.f380f != 0) {
            this.f424a.f380f = 2;
            if (MediaBrowserCompat.f354a && this.f424a.f381g != null) {
                throw new RuntimeException("mServiceConnection should be null. Instead it is " + this.f424a.f381g);
            } else if (this.f424a.f382h != null) {
                throw new RuntimeException("mServiceBinderWrapper should be null. Instead it is " + this.f424a.f382h);
            } else if (this.f424a.f383i == null) {
                Intent intent = new Intent("android.media.browse.MediaBrowserService");
                intent.setComponent(this.f424a.f376b);
                MediaBrowserCompat.C0168h hVar = this.f424a;
                hVar.f381g = new MediaBrowserCompat.C0168h.ServiceConnectionC0169a();
                boolean z = false;
                try {
                    z = this.f424a.f375a.bindService(intent, this.f424a.f381g, 1);
                } catch (Exception e) {
                    Log.e("MediaBrowserCompat", "Failed binding to service " + this.f424a.f376b);
                }
                if (!z) {
                    this.f424a.m10109a();
                    this.f424a.f377c.mo7520c();
                }
                if (MediaBrowserCompat.f354a) {
                    Log.d("MediaBrowserCompat", "connect...");
                    this.f424a.m10106b();
                }
            } else {
                throw new RuntimeException("mCallbacksMessenger should be null. Instead it is " + this.f424a.f383i);
            }
        }
    }
}
