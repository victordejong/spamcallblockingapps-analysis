package p081h.p203i.p204a.p224e.p293r;
/* renamed from: h.i.a.e.r.s */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/s.class */
public final class RunnableC9159s implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h f20859a;

    /* renamed from: b */
    public final /* synthetic */ C9160t f20860b;

    public RunnableC9159s(C9160t tVar, AbstractC9143h hVar) {
        this.f20860b = tVar;
        this.f20859a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC9132c cVar;
        AbstractC9132c cVar2;
        obj = this.f20860b.f20862b;
        synchronized (obj) {
            cVar = this.f20860b.f20863c;
            if (cVar != null) {
                cVar2 = this.f20860b.f20863c;
                cVar2.mo3743a(this.f20859a);
            }
        }
    }
}
