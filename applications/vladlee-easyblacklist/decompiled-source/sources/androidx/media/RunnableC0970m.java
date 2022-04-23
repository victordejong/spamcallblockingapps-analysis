package androidx.media;

import android.os.IBinder;
import android.util.Log;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.m */
/* loaded from: classes-dex2jar.jar:androidx/media/m.class */
final class RunnableC0970m implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.AbstractC0955e f3984a;

    /* renamed from: b */
    final /* synthetic */ String f3985b;

    /* renamed from: c */
    final /* synthetic */ IBinder f3986c;

    /* renamed from: d */
    final /* synthetic */ MediaBrowserServiceCompat.C0954d f3987d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0970m(MediaBrowserServiceCompat.C0954d dVar, MediaBrowserServiceCompat.AbstractC0955e eVar, String str, IBinder iBinder) {
        this.f3987d = dVar;
        this.f3984a = eVar;
        this.f3985b = str;
        this.f3986c = iBinder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCompat.C0952b bVar = MediaBrowserServiceCompat.this.f3929b.get(this.f3984a.mo7533a());
        if (bVar == null) {
            Log.w("MBServiceCompat", "removeSubscription for callback that isn't registered id=" + this.f3985b);
        } else if (!MediaBrowserServiceCompat.this.m7543a(this.f3985b, bVar, this.f3986c)) {
            Log.w("MBServiceCompat", "removeSubscription called for " + this.f3985b + " which is not subscribed");
        }
    }
}
