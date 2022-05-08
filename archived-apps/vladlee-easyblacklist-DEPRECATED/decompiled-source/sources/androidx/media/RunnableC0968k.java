package androidx.media;

import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.k */
/* loaded from: classes-dex2jar.jar:androidx/media/k.class */
final class RunnableC0968k implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.AbstractC0955e f3977a;

    /* renamed from: b */
    final /* synthetic */ MediaBrowserServiceCompat.C0954d f3978b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0968k(MediaBrowserServiceCompat.C0954d dVar, MediaBrowserServiceCompat.AbstractC0955e eVar) {
        this.f3978b = dVar;
        this.f3977a = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCompat.C0952b remove = MediaBrowserServiceCompat.this.f3929b.remove(this.f3977a.mo7533a());
        if (remove != null) {
            remove.f3940f.mo7533a().unlinkToDeath(remove, 0);
        }
    }
}
