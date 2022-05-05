package androidx.media;

import androidx.media.MediaBrowserServiceCompat;
/* renamed from: androidx.media.i */
/* loaded from: classes-dex2jar.jar:androidx/media/i.class */
final class RunnableC0966i implements Runnable {

    /* renamed from: a */
    final /* synthetic */ MediaBrowserServiceCompat.C0952b f3970a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0966i(MediaBrowserServiceCompat.C0952b bVar) {
        this.f3970a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MediaBrowserServiceCompat.this.f3929b.remove(this.f3970a.f3940f.mo7533a());
    }
}
