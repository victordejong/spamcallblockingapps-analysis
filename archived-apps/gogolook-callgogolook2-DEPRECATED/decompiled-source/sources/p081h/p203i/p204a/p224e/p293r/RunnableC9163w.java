package p081h.p203i.p204a.p224e.p293r;
/* renamed from: h.i.a.e.r.w */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/w.class */
public final class RunnableC9163w implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h f20869a;

    /* renamed from: b */
    public final /* synthetic */ C9164x f20870b;

    public RunnableC9163w(C9164x xVar, AbstractC9143h hVar) {
        this.f20870b = xVar;
        this.f20869a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC9137e eVar;
        AbstractC9137e eVar2;
        obj = this.f20870b.f20872b;
        synchronized (obj) {
            eVar = this.f20870b.f20873c;
            if (eVar != null) {
                eVar2 = this.f20870b.f20873c;
                eVar2.mo3758a(this.f20869a.mo16014b());
            }
        }
    }
}
