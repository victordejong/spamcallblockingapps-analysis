package androidx.media;

import android.support.p014v4.p015os.ResultReceiver;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.n */
/* loaded from: classes-dex2jar.jar:androidx/media/n.class */
final class RunnableC0971n implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.AbstractC0955e f3988a;

    /* renamed from: b */
    final /* synthetic */ String f3989b;

    /* renamed from: c */
    final /* synthetic */ ResultReceiver f3990c;

    /* renamed from: d */
    final /* synthetic */ MediaBrowserServiceCompat.C0954d f3991d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0971n(MediaBrowserServiceCompat.C0954d dVar, MediaBrowserServiceCompat.AbstractC0955e eVar, String str, ResultReceiver resultReceiver) {
        this.f3991d = dVar;
        this.f3988a = eVar;
        this.f3989b = str;
        this.f3990c = resultReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCompat.C0952b bVar = MediaBrowserServiceCompat.this.f3929b.get(this.f3988a.mo7533a());
        if (bVar == null) {
            Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + this.f3989b);
            return;
        }
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        String str = this.f3989b;
        C0963f fVar = new C0963f(mediaBrowserServiceCompat, str, this.f3990c);
        mediaBrowserServiceCompat.f3930c = bVar;
        fVar.m7538a(2);
        fVar.m7537c();
        mediaBrowserServiceCompat.f3930c = null;
        if (!fVar.m7535e()) {
            throw new IllegalStateException("onLoadItem must call detach() or sendResult() before returning for id=".concat(String.valueOf(str)));
        }
    }
}
