package p131c.p161d.p282e.p315q.p328q0;

import p131c.p161d.p282e.p315q.p328q0.C5730s;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
/* renamed from: c.d.e.q.q0.r */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/r.class */
public final /* synthetic */ class RunnableC5724r implements Runnable {

    /* renamed from: a */
    public final C5730s.C5732b f18891a;

    /* renamed from: b */
    public final AbstractC5863i f18892b;

    public RunnableC5724r(C5730s.C5732b bVar, AbstractC5863i iVar) {
        this.f18891a = bVar;
        this.f18892b = iVar;
    }

    /* renamed from: a */
    public static Runnable m23134a(C5730s.C5732b bVar, AbstractC5863i iVar) {
        return new RunnableC5724r(bVar, iVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f18891a.m23112a().m22821a(this.f18892b);
    }
}
