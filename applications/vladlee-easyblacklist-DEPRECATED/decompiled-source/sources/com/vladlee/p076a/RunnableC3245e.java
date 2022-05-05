package com.vladlee.p076a;
/* renamed from: com.vladlee.a.e */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/e.class */
final class RunnableC3245e implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C3246f f19196a;

    /* renamed from: b */
    final /* synthetic */ C3247g f19197b;

    /* renamed from: c */
    final /* synthetic */ RunnableC3244d f19198c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3245e(RunnableC3244d dVar, C3246f fVar, C3247g gVar) {
        this.f19198c = dVar;
        this.f19196a = fVar;
        this.f19197b = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19198c.f19193d.mo57a(this.f19196a, this.f19197b);
    }
}
