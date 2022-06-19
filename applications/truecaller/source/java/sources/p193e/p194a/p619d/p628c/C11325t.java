package p193e.p194a.p619d.p628c;

import com.truecaller.voip.VoipUserBadge;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p628c.p629a.AbstractC11194n;
import p193e.p194a.p619d.p628c.p629a.C11181d;
import p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11202d;
import p193e.p194a.p619d.p637c0.AbstractC11409g1;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12092a;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import q3.a.j0;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.c.t */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/t.class */
public final class C11325t extends AbstractC20574a<AbstractC11302l> implements AbstractC11301k, AbstractC11202d {

    /* renamed from: d */
    public boolean f33318d;

    /* renamed from: e */
    public p1 f33319e;

    /* renamed from: f */
    public p1 f33320f;

    /* renamed from: g */
    public p1 f33321g;

    /* renamed from: h */
    public p1 f33322h;

    /* renamed from: i */
    public boolean f33323i = true;

    /* renamed from: j */
    public p1 f33324j;

    /* renamed from: k */
    public final f f33325k;

    /* renamed from: l */
    public final AbstractC8426f f33326l;

    /* renamed from: m */
    public final AbstractC11824d f33327m;

    /* renamed from: n */
    public final AbstractC12095d f33328n;

    /* renamed from: o */
    public final AbstractC11409g1 f33329o;

    /* renamed from: e.a.d.c.t$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/t$a.class */
    public static final class C11326a implements AbstractC11296f {
        public C11326a() {
            C11325t.this = r4;
        }

        @Override // p193e.p194a.p619d.p628c.AbstractC11296f
        /* renamed from: a */
        public void mo24821a() {
            C11325t.this.m24824Lj();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11325t(@Named("UI") f fVar, AbstractC8426f abstractC8426f, AbstractC11824d abstractC11824d, AbstractC12095d abstractC12095d, AbstractC11409g1 abstractC11409g1) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC12095d, "invitationManager");
        l.e(abstractC11409g1, "voipSettings");
        this.f33325k = fVar;
        this.f33326l = abstractC8426f;
        this.f33327m = abstractC11824d;
        this.f33328n = abstractC12095d;
        this.f33329o = abstractC11409g1;
    }

    /* renamed from: Ij */
    public static final void m24827Ij(C11325t c11325t) {
        AbstractC11302l abstractC11302l;
        if ((((c11325t.m24825Kj() instanceof AbstractC12092a) || !c11325t.f33328n.mo23622b()) && !c11325t.f33327m.mo23956g()) || (abstractC11302l = (AbstractC11302l) c11325t.f57683a) == null) {
            return;
        }
        abstractC11302l.mo24882Y2();
    }

    /* renamed from: Jj */
    public static final void m24826Jj(C11325t c11325t, AbstractC11822b abstractC11822b) {
        p1 p1Var = c11325t.f33320f;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        c11325t.f33320f = d.w2(c11325t, (f) null, (j0) null, new C11329w(c11325t, abstractC11822b, null), 3, (Object) null);
        p1 p1Var2 = c11325t.f33324j;
        if (p1Var2 != null) {
            d.T(p1Var2, (CancellationException) null, 1, (Object) null);
        }
        c11325t.f33324j = d.w2(c11325t, (f) null, (j0) null, new C11331x(c11325t, abstractC11822b, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11202d
    /* renamed from: Cc */
    public void mo24828Cc(C11161a c11161a) {
        String mo23628h;
        AbstractC11302l abstractC11302l;
        l.e(c11161a, "user");
        AbstractC11302l abstractC11302l2 = (AbstractC11302l) this.f57683a;
        if (abstractC11302l2 != null) {
            abstractC11302l2.mo24891D(C19291g.m13623H0(c11161a));
        }
        VoipUserBadge voipUserBadge = c11161a.f32998f;
        if (!(!voipUserBadge.f16298f && !voipUserBadge.f16296d) || c11161a.f33001i) {
            return;
        }
        AbstractC11302l abstractC11302l3 = (AbstractC11302l) this.f57683a;
        if (abstractC11302l3 != null) {
            abstractC11302l3.mo24886V2(c11161a.f32996d);
        }
        AbstractC12093b m24825Kj = m24825Kj();
        AbstractC12093b abstractC12093b = m24825Kj;
        if (!(m24825Kj instanceof AbstractC12092a)) {
            abstractC12093b = null;
        }
        AbstractC12092a abstractC12092a = (AbstractC12092a) abstractC12093b;
        if (abstractC12092a == null || (mo23628h = abstractC12092a.mo23628h()) == null || (abstractC11302l = (AbstractC11302l) this.f57683a) == null) {
            return;
        }
        abstractC11302l.mo24884W2(mo23628h);
    }

    /* renamed from: Kj */
    public final AbstractC12093b m24825Kj() {
        return this.f33328n.mo23619e();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0016, code lost:
        if (r6 != null) goto L7;
     */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m24824Lj() {
        /*
            r5 = this;
            r0 = r5
            e.a.d.v.d r0 = r0.f33327m
            e.a.d.c0.z1.d r0 = r0.mo23962a()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L1c
            r0 = r6
            java.util.Set r0 = r0.mo24402d()
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L1c
            goto L20
        L1c:
            s1.u.u r0 = s1.u.u.a
            r6 = r0
        L20:
            r0 = r6
            int r0 = r0.size()
            r1 = 7
            if (r0 != r1) goto L41
            r0 = r5
            PV r0 = r0.f57683a
            e.a.d.c.l r0 = (p193e.p194a.p619d.p628c.AbstractC11302l) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L40
            r0 = r6
            int r1 = com.truecaller.voip.C4781R.string.voip_group_launcher_picker_limit_reached
            r0.mo24877d(r1)
        L40:
            return
        L41:
            r0 = r5
            PV r0 = r0.f57683a
            e.a.d.c.l r0 = (p193e.p194a.p619d.p628c.AbstractC11302l) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L72
            r0 = r7
            boolean r0 = r0.mo24887R0()
            r1 = 1
            if (r0 != r1) goto L72
            r0 = r5
            PV r0 = r0.f57683a
            e.a.d.c.l r0 = (p193e.p194a.p619d.p628c.AbstractC11302l) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L71
            r0 = r6
            e.a.d.c.t$a r1 = new e.a.d.c.t$a
            r2 = r1
            r3 = r5
            r2.<init>()
            r0.mo24876d3(r1)
        L71:
            return
        L72:
            r0 = r5
            PV r0 = r0.f57683a
            e.a.d.c.l r0 = (p193e.p194a.p619d.p628c.AbstractC11302l) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L84
            r0 = r7
            r0.mo24889G8()
        L84:
            r0 = r5
            PV r0 = r0.f57683a
            e.a.d.c.l r0 = (p193e.p194a.p619d.p628c.AbstractC11302l) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L97
            r0 = r7
            r1 = r6
            r0.mo24890G3(r1)
        L97:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.C11325t.m24824Lj():void");
    }

    /* renamed from: Mj */
    public final void m24823Mj(boolean z) {
        p1 p1Var;
        if (z && (p1Var = this.f33319e) != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        p1 p1Var2 = this.f33320f;
        if (p1Var2 != null) {
            d.T(p1Var2, (CancellationException) null, 1, (Object) null);
        }
        p1 p1Var3 = this.f33321g;
        if (p1Var3 != null) {
            d.T(p1Var3, (CancellationException) null, 1, (Object) null);
        }
        p1 p1Var4 = this.f33322h;
        if (p1Var4 != null) {
            d.T(p1Var4, (CancellationException) null, 1, (Object) null);
        }
    }

    @Override // p193e.p194a.p619d.p628c.p629a.p631p.p632a.AbstractC11202d
    /* renamed from: Ui */
    public void mo24822Ui() {
        AbstractC11302l abstractC11302l = (AbstractC11302l) this.f57683a;
        if (abstractC11302l != null) {
            abstractC11302l.mo24891D(C11181d.f33060a);
        }
        AbstractC11302l abstractC11302l2 = (AbstractC11302l) this.f57683a;
        if (abstractC11302l2 != null) {
            abstractC11302l2.mo24886V2("");
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.d.c.l, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC11302l abstractC11302l) {
        AbstractC11194n.C11197c c11197c;
        AbstractC11302l abstractC11302l2 = abstractC11302l;
        l.e(abstractC11302l2, "presenterView");
        this.f57683a = abstractC11302l2;
        if (this.f33326l.mo28596b()) {
            c11197c = AbstractC11194n.C11197c.f33085a;
        } else if (m24825Kj() instanceof AbstractC12092a) {
            AbstractC12093b m24825Kj = m24825Kj();
            AbstractC12093b abstractC12093b = m24825Kj;
            if (!(m24825Kj instanceof AbstractC12092a)) {
                abstractC12093b = null;
            }
            AbstractC12092a abstractC12092a = (AbstractC12092a) abstractC12093b;
            c11197c = new AbstractC11194n.C11195a(abstractC12092a != null ? abstractC12092a.mo23627i() : null);
        } else {
            c11197c = AbstractC11194n.C11196b.f33084a;
        }
        abstractC11302l2.mo24875f1(c11197c);
        abstractC11302l2.mo24891D(C11181d.f33060a);
        abstractC11302l2.mo24873l3(this);
        abstractC11302l2.mo24893A8(false);
        d.w2(this, (f) null, (j0) null, new C11305n(this, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC11302l abstractC11302l = (AbstractC11302l) this.f57683a;
        if (abstractC11302l != null) {
            abstractC11302l.mo24885V7();
        }
        super.mo9806c();
    }
}
