package androidx.media;

import android.os.Bundle;
import android.support.p014v4.p015os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.r */
/* loaded from: classes-dex2jar.jar:androidx/media/r.class */
final class RunnableC0975r implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.AbstractC0955e f4005a;

    /* renamed from: b */
    final /* synthetic */ String f4006b;

    /* renamed from: c */
    final /* synthetic */ Bundle f4007c;

    /* renamed from: d */
    final /* synthetic */ ResultReceiver f4008d;

    /* renamed from: e */
    final /* synthetic */ MediaBrowserServiceCompat.C0954d f4009e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0975r(MediaBrowserServiceCompat.C0954d dVar, MediaBrowserServiceCompat.AbstractC0955e eVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.f4009e = dVar;
        this.f4005a = eVar;
        this.f4006b = str;
        this.f4007c = bundle;
        this.f4008d = resultReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCompat.C0952b bVar = MediaBrowserServiceCompat.this.f3929b.get(this.f4005a.mo7533a());
        if (bVar == null) {
            Log.w("MBServiceCompat", "sendCustomAction for callback that isn't registered action=" + this.f4006b + ", extras=" + this.f4007c);
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.f4006b;
        Bundle bundle = this.f4007c;
        C0965h hVar = new C0965h(mediaBrowserServiceCompat, str, this.f4008d);
        mediaBrowserServiceCompat.f3930c = bVar;
        hVar.m7536d();
        mediaBrowserServiceCompat.f3930c = null;
        if (!hVar.m7535e()) {
            throw new IllegalStateException("onCustomAction must call detach() or sendResult() or sendError() before returning for action=" + str + " extras=" + bundle);
        }
    }
}
