package p193e.p194a.p619d.p643d.p644a;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p372b0.p373a.p386s.AbstractC8332d;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11567d;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.d.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/b.class */
public final class C11664b extends AbstractC11567d {

    /* renamed from: b */
    public AbstractC19233h0 f34230b;

    /* renamed from: c */
    public final g f34231c = C25225a.m3978P1(new C11665a());

    /* renamed from: d */
    public final AbstractC17405c f34232d;

    /* renamed from: e */
    public final AbstractC19222c f34233e;

    /* renamed from: e.a.d.d.a.b$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/b$a.class */
    public static final class C11665a extends m implements a<C17408d> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11665a() {
            super(0);
            C11664b.this = r4;
        }

        public Object invoke() {
            C11664b c11664b = C11664b.this;
            AbstractC17405c abstractC17405c = c11664b.f34232d;
            AbstractC19233h0 abstractC19233h0 = c11664b.f34230b;
            if (abstractC19233h0 != null) {
                return new C17408d(abstractC19233h0, abstractC17405c, c11664b.f34233e);
            }
            l.l("themedResourceProvider");
            throw null;
        }
    }

    public C11664b(AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c) {
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC19222c, "clock");
        this.f34232d = abstractC17405c;
        this.f34233e = abstractC19222c;
    }

    @Override // p193e.p194a.p372b0.p373a.p386s.AbstractC8331c
    /* renamed from: Hj */
    public void mo24304Hj(boolean z) {
        C17408d m24301Kj = m24301Kj();
        m24301Kj.f25639c = z;
        m24301Kj.m28667Ij(m24301Kj.f25638b);
    }

    @Override // p193e.p194a.p619d.p637c0.p641y1.AbstractC11567d
    /* renamed from: Ij */
    public void mo24303Ij(String str) {
        m24301Kj().m16140Kj(str);
    }

    @Override // p193e.p194a.p619d.p637c0.p641y1.AbstractC11567d
    /* renamed from: Jj */
    public void mo24302Jj(AbstractC19233h0 abstractC19233h0) {
        l.e(abstractC19233h0, "<set-?>");
        this.f34230b = abstractC19233h0;
    }

    /* renamed from: Kj */
    public final C17408d m24301Kj() {
        return (C17408d) this.f34231c.getValue();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.b0.a.s.d, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC8332d) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        m24301Kj().mo9029Y0(r0);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        m24301Kj().mo9806c();
    }
}
