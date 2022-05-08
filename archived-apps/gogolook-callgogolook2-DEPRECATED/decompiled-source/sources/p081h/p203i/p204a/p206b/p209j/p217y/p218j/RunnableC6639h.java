package p081h.p203i.p204a.p206b.p209j.p217y.p218j;

import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
/* renamed from: h.i.a.b.j.y.j.h */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/j/h.class */
public final /* synthetic */ class RunnableC6639h implements Runnable {

    /* renamed from: a */
    public final C6644m f16475a;

    /* renamed from: b */
    public final AbstractC6580m f16476b;

    /* renamed from: c */
    public final int f16477c;

    /* renamed from: d */
    public final Runnable f16478d;

    public RunnableC6639h(C6644m mVar, AbstractC6580m mVar2, int i, Runnable runnable) {
        this.f16475a = mVar;
        this.f16476b = mVar2;
        this.f16477c = i;
        this.f16478d = runnable;
    }

    /* renamed from: a */
    public static Runnable m22190a(C6644m mVar, AbstractC6580m mVar2, int i, Runnable runnable) {
        return new RunnableC6639h(mVar, mVar2, i, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        C6644m.m22180a(this.f16475a, this.f16476b, this.f16477c, this.f16478d);
    }
}
