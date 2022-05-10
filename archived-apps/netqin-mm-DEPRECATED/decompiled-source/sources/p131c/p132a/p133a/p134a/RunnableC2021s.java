package p131c.p132a.p133a.p134a;
/* renamed from: c.a.a.a.s */
/* loaded from: classes-dex2jar.jar:c/a/a/a/s.class */
public final class RunnableC2021s implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C1994g f7887a;

    /* renamed from: b */
    public final /* synthetic */ ServiceConnectionC2026v f7888b;

    public RunnableC2021s(ServiceConnectionC2026v vVar, C1994g gVar) {
        this.f7888b = vVar;
        this.f7887a = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AbstractC1989e eVar;
        AbstractC1989e eVar2;
        obj = this.f7888b.f7899a;
        synchronized (obj) {
            eVar = this.f7888b.f7901c;
            if (eVar != null) {
                eVar2 = this.f7888b.f7901c;
                eVar2.mo19794a(this.f7887a);
            }
        }
    }
}
