package p000a.p001a.p002a.p003a.p004a.p006b;
/* renamed from: a.a.a.a.a.b.s */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/s.class */
final class C0038s extends AbstractRunnableC0025i {

    /* renamed from: a */
    final /* synthetic */ Runnable f70a;

    /* renamed from: b */
    final /* synthetic */ ThreadFactoryC0037r f71b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0038s(ThreadFactoryC0037r rVar, Runnable runnable) {
        this.f71b = rVar;
        this.f70a = runnable;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p006b.AbstractRunnableC0025i
    public final void onRun() {
        this.f70a.run();
    }
}
