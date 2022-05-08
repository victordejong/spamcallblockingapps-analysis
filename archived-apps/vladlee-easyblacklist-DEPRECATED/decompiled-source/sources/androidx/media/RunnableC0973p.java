package androidx.media;

import android.os.IBinder;
import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.p */
/* loaded from: classes-dex2jar.jar:androidx/media/p.class */
final class RunnableC0973p implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.AbstractC0955e f3998a;

    /* renamed from: b */
    final /* synthetic */ MediaBrowserServiceCompat.C0954d f3999b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0973p(MediaBrowserServiceCompat.C0954d dVar, MediaBrowserServiceCompat.AbstractC0955e eVar) {
        this.f3999b = dVar;
        this.f3998a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        IBinder a = this.f3998a.mo7533a();
        MediaBrowserServiceCompat.C0952b remove = MediaBrowserServiceCompat.this.f3929b.remove(a);
        if (remove != null) {
            a.unlinkToDeath(remove, 0);
        }
    }
}
