package p131c.p161d.p282e.p315q.p328q0;

import p131c.p161d.p282e.p315q.p328q0.C5730s;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5863i;
import p131c.p161d.p282e.p315q.p333r0.C5842a;
/* renamed from: c.d.e.q.q0.q */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/q.class */
public final /* synthetic */ class RunnableC5716q implements Runnable {

    /* renamed from: a */
    public final C5730s.C5731a f18875a;

    /* renamed from: b */
    public final AbstractC5863i f18876b;

    /* renamed from: c */
    public final C5842a f18877c;

    public RunnableC5716q(C5730s.C5731a aVar, AbstractC5863i iVar, C5842a aVar2) {
        this.f18875a = aVar;
        this.f18876b = iVar;
        this.f18877c = aVar2;
    }

    /* renamed from: a */
    public static Runnable m23162a(C5730s.C5731a aVar, AbstractC5863i iVar, C5842a aVar2) {
        return new RunnableC5716q(aVar, iVar, aVar2);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f18875a.m23113a().m22822a(this.f18876b, this.f18877c);
    }
}
