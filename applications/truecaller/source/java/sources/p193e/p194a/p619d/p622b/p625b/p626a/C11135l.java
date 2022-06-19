package p193e.p194a.p619d.p622b.p625b.p626a;

import com.truecaller.voip.legacy.incoming.LegacyIncomingVoipService;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p430q.C8615v;
import p193e.p194a.p619d.p622b.p625b.AbstractC11147f;
import p193e.p194a.p619d.p622b.p625b.AbstractC11148g;
import p193e.p194a.p619d.p628c.p629a.AbstractC11194n;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.b.b.a.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/a/l.class */
public final class C11135l extends AbstractC20574a<AbstractC11134k> implements AbstractC11133j, AbstractC11148g {

    /* renamed from: d */
    public AbstractC11147f f32921d;

    /* renamed from: e */
    public boolean f32922e;

    /* renamed from: f */
    public boolean f32923f;

    /* renamed from: g */
    public final C8615v f32924g = new C8615v(null, 1);

    /* renamed from: h */
    public final AbstractC11421j1 f32925h;

    /* renamed from: i */
    public final AbstractC8426f f32926i;

    /* renamed from: j */
    public final AbstractC11405f0 f32927j;

    @e(c = "com.truecaller.voip.legacy.incoming.ui.LegacyIncomingVoipPresenter$acceptCall$1", f = "LegacyIncomingVoipPresenter.kt", l = {190, 197}, m = "invokeSuspend")
    /* renamed from: e.a.d.b.b.a.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/b/a/l$a.class */
    public static final class C11136a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f32928e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11136a(d dVar) {
            super(2, dVar);
            C11135l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m25147i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11136a(dVar);
        }

        /* renamed from: k */
        public final Object m25146k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11136a(dVar).m25145s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00b5  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m25145s(java.lang.Object r5) {
            /*
                r4 = this;
                s1.w.j.a r0 = s1.w.j.a.a
                r6 = r0
                r0 = r4
                int r0 = r0.f32928e
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L2f
                r0 = r7
                r1 = 1
                if (r0 == r1) goto L28
                r0 = r7
                r1 = 2
                if (r0 != r1) goto L1e
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto La9
            L1e:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L28:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L78
            L2f:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r4
                e.a.d.b.b.a.l r0 = p193e.p194a.p619d.p622b.p625b.p626a.C11135l.this
                PV r0 = r0.f57683a
                e.a.d.b.b.a.k r0 = (p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k) r0
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L48
                r0 = r5
                r0.mo25163M0()
            L48:
                r0 = r4
                e.a.d.b.b.a.l r0 = p193e.p194a.p619d.p622b.p625b.p626a.C11135l.this
                r5 = r0
                r0 = r5
                boolean r0 = r0.f32923f
                if (r0 != 0) goto L78
                r0 = r5
                PV r0 = r0.f57683a
                e.a.d.b.b.a.k r0 = (p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k) r0
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L66
                r0 = r5
                r0.mo25165L()
            L66:
                r0 = r4
                r1 = 1
                r0.f32928e = r1
                r0 = 300(0x12c, double:1.48E-321)
                r1 = r4
                java.lang.Object r0 = s1.a.a.a.v0.f.d.D0(r0, r1)
                r1 = r6
                if (r0 != r1) goto L78
                r0 = r6
                return r0
            L78:
                r0 = r4
                e.a.d.b.b.a.l r0 = p193e.p194a.p619d.p622b.p625b.p626a.C11135l.this
                PV r0 = r0.f57683a
                e.a.d.b.b.a.k r0 = (p193e.p194a.p619d.p622b.p625b.p626a.AbstractC11134k) r0
                r5 = r0
                r0 = r5
                if (r0 == 0) goto L8d
                r0 = r5
                r0.mo25155mn()
            L8d:
                r0 = r4
                e.a.d.b.b.a.l r0 = p193e.p194a.p619d.p622b.p625b.p626a.C11135l.this
                boolean r0 = r0.f32923f
                if (r0 == 0) goto La9
                r0 = r4
                r1 = 2
                r0.f32928e = r1
                r0 = 500(0x1f4, double:2.47E-321)
                r1 = r4
                java.lang.Object r0 = s1.a.a.a.v0.f.d.D0(r0, r1)
                r1 = r6
                if (r0 != r1) goto La9
                r0 = r6
                return r0
            La9:
                r0 = r4
                e.a.d.b.b.a.l r0 = p193e.p194a.p619d.p622b.p625b.p626a.C11135l.this
                e.a.d.b.b.f r0 = r0.f32921d
                r5 = r0
                r0 = r5
                if (r0 == 0) goto Lbb
                r0 = r5
                r0.mo25123ke()
            Lbb:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p625b.p626a.C11135l.C11136a.m25145s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11135l(@Named("UI") f fVar, AbstractC11421j1 abstractC11421j1, AbstractC8426f abstractC8426f, AbstractC11405f0 abstractC11405f0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC11421j1, "support");
        l.e(abstractC8426f, "regionUtils");
        l.e(abstractC11405f0, "voipAnalyticsUtil");
        this.f32925h = abstractC11421j1;
        this.f32926i = abstractC8426f;
        this.f32927j = abstractC11405f0;
    }

    /* renamed from: Ij */
    public final p1 m25149Ij() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11136a(null), 3, (Object) null);
    }

    /* renamed from: Jj */
    public final void m25148Jj() {
        AbstractC11134k abstractC11134k = (AbstractC11134k) this.f57683a;
        boolean z = true;
        if (abstractC11134k != null && abstractC11134k.mo25160Z2()) {
            m25149Ij();
            return;
        }
        AbstractC11134k abstractC11134k2 = (AbstractC11134k) this.f57683a;
        if (abstractC11134k2 == null || abstractC11134k2.mo25154n2()) {
            z = false;
        }
        this.f32922e = z;
        AbstractC11134k abstractC11134k3 = (AbstractC11134k) this.f57683a;
        if (abstractC11134k3 == null) {
            return;
        }
        abstractC11134k3.mo25150y1();
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11148g
    /* renamed from: Ne */
    public void mo25121Ne(int i, int i2, boolean z) {
        AbstractC11134k abstractC11134k = (AbstractC11134k) this.f57683a;
        if (abstractC11134k != null) {
            abstractC11134k.mo25157jr(i, i2, z);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.d.b.b.a.k, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC11134k abstractC11134k) {
        AbstractC11134k abstractC11134k2 = abstractC11134k;
        l.e(abstractC11134k2, "presenterView");
        this.f57683a = abstractC11134k2;
        if (!LegacyIncomingVoipService.f16365l) {
            abstractC11134k2.mo25152t();
        } else {
            abstractC11134k2.mo25158f1(this.f32926i.mo28596b() ? AbstractC11194n.C11197c.f33085a : AbstractC11194n.C11196b.f33084a);
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC11134k abstractC11134k = (AbstractC11134k) this.f57683a;
        if (abstractC11134k != null) {
            abstractC11134k.mo25163M0();
        }
        super.mo9806c();
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11148g
    /* renamed from: nc */
    public void mo25120nc(String str) {
        l.e(str, "text");
        AbstractC11134k abstractC11134k = (AbstractC11134k) this.f57683a;
        if (abstractC11134k != null) {
            abstractC11134k.mo25159as(str);
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11148g
    /* renamed from: v */
    public void mo25119v() {
        AbstractC11134k abstractC11134k = (AbstractC11134k) this.f57683a;
        if (abstractC11134k != null) {
            abstractC11134k.mo25153q();
        }
    }
}
