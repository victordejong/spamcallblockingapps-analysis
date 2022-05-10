package p131c.p161d.p282e.p315q.p328q0;

import p131c.p161d.p282e.p315q.p328q0.C5636a3;
import p131c.p161d.p282e.p315q.p328q0.C5835y2;
import p131c.p161d.p282e.p315q.p328q0.p332t3.AbstractC5814a;
import p131c.p161d.p282e.p315q.p333r0.AbstractC5872m;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9833i;
import p530d.p541c.AbstractC9850t;
/* renamed from: c.d.e.q.q0.l3 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/l3.class */
public class C5695l3 {

    /* renamed from: d */
    public static final C5636a3 f18835d = C5636a3.m23355z();

    /* renamed from: a */
    public final C5819u2 f18836a;

    /* renamed from: b */
    public final AbstractC5814a f18837b;

    /* renamed from: c */
    public AbstractC9833i<C5636a3> f18838c = AbstractC9833i.m1880f();

    public C5695l3(C5819u2 u2Var, AbstractC5814a aVar) {
        this.f18836a = u2Var;
        this.f18837b = aVar;
    }

    /* renamed from: a */
    public static /* synthetic */ C5636a3 m23210a(C5636a3 a3Var, AbstractC5872m mVar, C5835y2 y2Var) throws Exception {
        C5835y2 a = m23205a(y2Var);
        C5636a3.C5637a b = C5636a3.m23360b(a3Var);
        b.m23354a(mVar.mo22837b(), a);
        return b.mo6937a();
    }

    /* renamed from: a */
    public static C5835y2 m23205a(C5835y2 y2Var) {
        C5835y2.C5836a b = C5835y2.m22934b(y2Var);
        b.m22925w();
        b.m22926b(y2Var.m22930x() + 1);
        return b.mo6937a();
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m23207a(C5695l3 l3Var, AbstractC5872m mVar, C5835y2 y2Var) throws Exception {
        return !l3Var.m23204a(y2Var, mVar);
    }

    /* renamed from: b */
    public static /* synthetic */ boolean m23199b(C5695l3 l3Var, AbstractC5872m mVar, C5835y2 y2Var) throws Exception {
        return l3Var.m23204a(y2Var, mVar) || y2Var.m22930x() < mVar.mo22838a();
    }

    /* renamed from: a */
    public AbstractC9637a m23203a(AbstractC5872m mVar) {
        return m23202b().m1894a((AbstractC9833i<C5636a3>) f18835d).m1890b(C5649c3.m23340a(this, mVar));
    }

    /* renamed from: a */
    public final void m23212a() {
        this.f18838c = AbstractC9833i.m1880f();
    }

    /* renamed from: a */
    public final void m23211a(C5636a3 a3Var) {
        this.f18838c = AbstractC9833i.m1887b(a3Var);
    }

    /* renamed from: a */
    public final boolean m23204a(C5835y2 y2Var, AbstractC5872m mVar) {
        return this.f18837b.mo22976a() - y2Var.m22931w() > mVar.mo22836c();
    }

    /* renamed from: b */
    public final AbstractC9833i<C5636a3> m23202b() {
        return this.f18838c.m1889b(this.f18836a.m22968a(C5636a3.m23363A()).m1891b(C5664f3.m23322a(this))).m1903a(C5669g3.m23317a(this));
    }

    /* renamed from: b */
    public AbstractC9850t<Boolean> m23198b(AbstractC5872m mVar) {
        return m23202b().m1889b(AbstractC9833i.m1887b(C5636a3.m23355z())).m1883d(C5654d3.m23331a(this, mVar)).m1899a(C5659e3.m23327a(this, mVar)).m1904a();
    }

    /* renamed from: c */
    public final C5835y2 m23197c() {
        C5835y2.C5836a A = C5835y2.m22939A();
        A.m22926b(0L);
        A.m22927a(this.f18837b.mo22976a());
        return A.mo6937a();
    }
}
