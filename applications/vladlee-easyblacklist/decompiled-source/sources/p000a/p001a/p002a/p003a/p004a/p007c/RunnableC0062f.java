package p000a.p001a.p002a.p003a.p004a.p007c;

import p000a.p001a.p002a.p003a.p004a.p007c.AbstractC0047a;
/* renamed from: a.a.a.a.a.c.f */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/f.class */
final class RunnableC0062f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f137a;

    /* renamed from: b */
    final /* synthetic */ AbstractC0047a.ExecutorC0050c f138b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0062f(AbstractC0047a.ExecutorC0050c cVar, Runnable runnable) {
        this.f138b = cVar;
        this.f137a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f137a.run();
        } finally {
            this.f138b.m10274a();
        }
    }
}
