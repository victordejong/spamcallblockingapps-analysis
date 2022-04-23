package androidx.appcompat.p022b.p023a;
/* renamed from: androidx.appcompat.b.a.c */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/b/a/c.class */
final class RunnableC0333c implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0330b f1409a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC0333c(C0330b bVar) {
        this.f1409a = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1409a.m9734a(true);
        this.f1409a.invalidateSelf();
    }
}
