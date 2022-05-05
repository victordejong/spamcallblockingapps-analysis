package androidx.media;

import android.os.Bundle;
import android.support.p014v4.p015os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.q */
/* loaded from: classes-dex2jar.jar:androidx/media/q.class */
final class RunnableC0974q implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.AbstractC0955e f4000a;

    /* renamed from: b */
    final /* synthetic */ String f4001b;

    /* renamed from: c */
    final /* synthetic */ Bundle f4002c;

    /* renamed from: d */
    final /* synthetic */ ResultReceiver f4003d;

    /* renamed from: e */
    final /* synthetic */ MediaBrowserServiceCompat.C0954d f4004e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0974q(MediaBrowserServiceCompat.C0954d dVar, MediaBrowserServiceCompat.AbstractC0955e eVar, String str, Bundle bundle, ResultReceiver resultReceiver) {
        this.f4004e = dVar;
        this.f4000a = eVar;
        this.f4001b = str;
        this.f4002c = bundle;
        this.f4003d = resultReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCompat.C0952b bVar = MediaBrowserServiceCompat.this.f3929b.get(this.f4000a.mo7533a());
        if (bVar == null) {
            Log.w("MBServiceCompat", "search for callback that isn't registered query=" + this.f4001b);
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.f4001b;
        C0964g gVar = new C0964g(mediaBrowserServiceCompat, str, this.f4003d);
        mediaBrowserServiceCompat.f3930c = bVar;
        gVar.m7538a(4);
        gVar.m7537c();
        mediaBrowserServiceCompat.f3930c = null;
        if (!gVar.m7535e()) {
            throw new IllegalStateException("onSearch must call detach() or sendResult() before returning for query=".concat(String.valueOf(str)));
        }
    }
}
