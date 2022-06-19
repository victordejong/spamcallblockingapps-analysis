package p193e.p194a.p982k0.p983a;

import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p982k0.AbstractC16313f;
import p193e.p194a.p982k0.p983a.AbstractC16296p;
import q3.a.x2.f;
import s1.f0.r;
import s1.f0.v;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k0.a.a */
/* loaded from: classes7-dex2jar.jar:e/a/k0/a/a.class */
public final class C16271a implements AbstractC16278e {

    /* renamed from: a */
    public final g f45836a = C25225a.m3978P1(new C16272a(0, this));

    /* renamed from: b */
    public final g f45837b = C25225a.m3978P1(new C16272a(4, this));

    /* renamed from: c */
    public final g f45838c = C25225a.m3978P1(new C16272a(2, this));

    /* renamed from: d */
    public final g f45839d = C25225a.m3978P1(new C16272a(3, this));

    /* renamed from: e */
    public final g f45840e = C25225a.m3978P1(new C16272a(1, this));

    /* renamed from: f */
    public final g f45841f = C25225a.m3978P1(new C16273b());

    /* renamed from: g */
    public final g f45842g = C25225a.m3978P1(new C16274c());

    /* renamed from: h */
    public final C20592g f45843h;

    /* renamed from: i */
    public final AbstractC16285j f45844i;

    /* renamed from: j */
    public final AbstractC19230g f45845j;

    /* renamed from: k */
    public final AbstractC16313f f45846k;

    /* renamed from: l */
    public final AbstractC19219a0 f45847l;

    /* renamed from: e.a.k0.a.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/k0/a/a$a.class */
    public static final class C16272a extends m implements a<Boolean> {

        /* renamed from: b */
        public final /* synthetic */ int f45848b;

        /* renamed from: c */
        public final /* synthetic */ Object f45849c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16272a(int i, Object obj) {
            super(0);
            this.f45848b = i;
            this.f45849c = obj;
        }

        public final Object invoke() {
            int i = this.f45848b;
            if (i == 0) {
                C16271a c16271a = (C16271a) this.f45849c;
                boolean m17650L = c16271a.m17650L(c16271a.f45843h.m10951q(), ((C16271a) this.f45849c).f45843h.m10950r());
                if (m17650L) {
                    ((C16271a) this.f45849c).f45844i.mo17626c(false);
                }
                boolean z = false;
                if (C16271a.m17648g((C16271a) this.f45849c)) {
                    z = false;
                    if (!m17650L) {
                        AbstractC19230g abstractC19230g = ((C16271a) this.f45849c).f45845j;
                        l.e(abstractC19230g, "$this$shouldRecordThroughAccessibility");
                        z = false;
                        if (abstractC19230g.mo13780q() >= 28) {
                            z = true;
                        }
                    }
                }
                return Boolean.valueOf(z);
            } else if (i == 1) {
                C20592g c20592g = ((C16271a) this.f45849c).f45843h;
                boolean z2 = false;
                if (c20592g.f57698A1.m10941a(c20592g, C20592g.f57695p6[130]).isEnabled()) {
                    z2 = false;
                    if (((C16271a) this.f45849c).mo17591f()) {
                        z2 = true;
                    }
                }
                return Boolean.valueOf(z2);
            } else if (i == 2) {
                boolean z3 = false;
                if (((C16271a) this.f45849c).mo17584n()) {
                    z3 = false;
                    if (C16271a.m17648g((C16271a) this.f45849c)) {
                        z3 = true;
                    }
                }
                if (z3) {
                    ((C16271a) this.f45849c).f45846k.mo17547f3();
                }
                return Boolean.valueOf(z3);
            } else if (i == 3) {
                C20592g c20592g2 = ((C16271a) this.f45849c).f45843h;
                return Boolean.valueOf(c20592g2.f58063y1.m10941a(c20592g2, C20592g.f57695p6[128]).isEnabled());
            } else if (i != 4) {
                throw null;
            } else {
                boolean z4 = false;
                if (C16271a.m17648g((C16271a) this.f45849c)) {
                    C16271a c16271a2 = (C16271a) this.f45849c;
                    z4 = false;
                    if (!c16271a2.m17650L(c16271a2.f45843h.m10948t(), ((C16271a) this.f45849c).f45843h.m10947u())) {
                        C16271a c16271a3 = (C16271a) this.f45849c;
                        z4 = false;
                        if (!c16271a3.m17647t(c16271a3.f45843h.m10949s())) {
                            z4 = false;
                            if (((C16271a) this.f45849c).f45845j.mo13780q() <= 27) {
                                z4 = true;
                            }
                        }
                    }
                }
                return Boolean.valueOf(z4);
            }
        }
    }

    /* renamed from: e.a.k0.a.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/a/a$b.class */
    public static final class C16273b extends m implements a<f<? extends Boolean>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16273b() {
            super(0);
            C16271a.this = r4;
        }

        public Object invoke() {
            return C16271a.this.f45844i.mo17620j();
        }
    }

    /* renamed from: e.a.k0.a.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/a/a$c.class */
    public static final class C16274c extends m implements a<f<? extends AbstractC16296p>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16274c() {
            super(0);
            C16271a.this = r4;
        }

        public Object invoke() {
            return new C16279f(C16271a.this.f45844i.mo17620j(), this);
        }
    }

    @Inject
    public C16271a(C20592g c20592g, AbstractC16285j abstractC16285j, AbstractC19230g abstractC19230g, AbstractC16313f abstractC16313f, AbstractC19219a0 abstractC19219a0) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC16285j, "mainModuleFacade");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC16313f, "callRecordingSettings");
        l.e(abstractC19219a0, "permissionUtil");
        this.f45843h = c20592g;
        this.f45844i = abstractC16285j;
        this.f45845j = abstractC19230g;
        this.f45846k = abstractC16313f;
        this.f45847l = abstractC19219a0;
    }

    /* renamed from: g */
    public static final boolean m17648g(C16271a c16271a) {
        return ((Boolean) c16271a.f45839d.getValue()).booleanValue();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: B */
    public boolean mo17606B() {
        return this.f45844i.mo17627a() && mo17591f();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: H */
    public void mo17600H() {
        if (mo17587k()) {
            this.f45844i.mo17621i();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
        if (((r0 instanceof p193e.p194a.p982k0.p983a.AbstractC16296p.C16299c) || ((r0 instanceof p193e.p194a.p982k0.p983a.AbstractC16296p.C16300d) && r3.f45846k.mo17560G0() < 3)) != false) goto L15;
     */
    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo17599I() {
        /*
            r3 = this;
            r0 = r3
            e.a.k0.a.j r0 = r0.f45844i
            boolean r0 = r0.mo17624f()
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L48
            r0 = r3
            e.a.k0.a.p r0 = r0.m17646x()
            r6 = r0
            r0 = r3
            e.a.k0.f r0 = r0.f45846k
            int r0 = r0.mo17560G0()
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p982k0.p983a.AbstractC16296p.C16299c
            if (r0 != 0) goto L3d
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p982k0.p983a.AbstractC16296p.C16300d
            if (r0 == 0) goto L37
            r0 = r7
            r1 = 3
            if (r0 >= r1) goto L37
            goto L3d
        L37:
            r0 = 0
            r7 = r0
            goto L40
        L3d:
            r0 = 1
            r7 = r0
        L40:
            r0 = r7
            if (r0 == 0) goto L48
            goto L4a
        L48:
            r0 = 0
            r5 = r0
        L4a:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p982k0.p983a.C16271a.mo17599I():boolean");
    }

    /* renamed from: J */
    public final boolean m17652J(AbstractC20597i abstractC20597i, String str) {
        boolean z = true;
        List<String> T = v.T(abstractC20597i.mo10938g(), new char[]{','}, true, 0, 4);
        if (!T.isEmpty()) {
            for (String str2 : T) {
                if (r.n(str2, str, true)) {
                    break;
                }
            }
        }
        z = false;
        return z;
    }

    /* renamed from: K */
    public final boolean m17651K() {
        String str;
        String[] strArr = C16282g.f45864a;
        int length = strArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                str = null;
                break;
            }
            str = strArr[i];
            if (!this.f45847l.mo13825h(str)) {
                break;
            }
            i++;
        }
        if (str == null) {
            z = true;
        }
        return z;
    }

    /* renamed from: L */
    public final boolean m17650L(AbstractC20597i abstractC20597i, AbstractC20597i abstractC20597i2) {
        l.e(abstractC20597i, "deviceModelBlackList");
        l.e(abstractC20597i2, "manufacturerBlacklist");
        return m17652J(abstractC20597i, this.f45845j.mo13792e()) || m17652J(abstractC20597i2, this.f45845j.mo13787j());
    }

    /* renamed from: M */
    public final boolean m17649M() {
        return this.f45844i.mo17627a() && mo17574z();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: c */
    public void mo17594c(boolean z) {
        this.f45844i.mo17626c(z);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: d */
    public boolean mo17593d() {
        return this.f45844i.mo17625d();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: f */
    public boolean mo17591f() {
        return ((Boolean) this.f45836a.getValue()).booleanValue();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: i */
    public boolean mo17589i() {
        return this.f45846k.getBoolean("callRecordingEnabled", true);
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    public boolean isEnabled() {
        return ((Boolean) this.f45838c.getValue()).booleanValue();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: k */
    public boolean mo17587k() {
        return ((Boolean) this.f45840e.getValue()).booleanValue();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: n */
    public boolean mo17584n() {
        return mo17606B() || m17649M();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: o */
    public f<AbstractC16296p> mo17583o() {
        return (f) this.f45842g.getValue();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: s */
    public AbstractC16296p mo17579s() {
        return m17646x();
    }

    /* renamed from: t */
    public final boolean m17647t(AbstractC20597i abstractC20597i) {
        l.e(abstractC20597i, "blackListRegex");
        Pattern compile = Pattern.compile(abstractC20597i.mo10938g());
        return compile.matcher(this.f45845j.mo13780q() + ' ' + this.f45845j.mo13792e()).matches();
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallRecordingFeatureHelper: Feature enabled: ");
        C20592g c20592g = this.f45843h;
        m8728C.append(c20592g.f58063y1.m10941a(c20592g, C20592g.f57695p6[128]).isEnabled());
        m8728C.append("\n Legacy blacklist: ");
        m8728C.append(m17650L(this.f45843h.m10948t(), this.f45843h.m10947u()));
        m8728C.append(' ');
        m8728C.append("\n Legacy Does device match blacklist regex: ");
        m8728C.append(m17647t(this.f45843h.m10949s()));
        m8728C.append("\n Accessibility blacklist: ");
        m8728C.append(m17650L(this.f45843h.m10951q(), this.f45843h.m10950r()));
        m8728C.append(' ');
        return m8728C.toString();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: u */
    public boolean mo17578u() {
        return this.f45844i.mo17622h();
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: v */
    public boolean mo17577v() {
        boolean z = true;
        if (!(m17649M() && this.f45846k.mo17551U1() && m17651K())) {
            z = mo17606B() && this.f45846k.mo17551U1() && m17651K() && this.f45844i.mo17625d();
        }
        return z;
    }

    /* renamed from: x */
    public final AbstractC16296p m17646x() {
        return !mo17589i() ? AbstractC16296p.C16298b.f45897a : !this.f45846k.mo17546j0() ? AbstractC16296p.C16300d.f45899a : mo17577v() ? AbstractC16296p.C16299c.f45898a : AbstractC16296p.C16297a.f45896a;
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: y */
    public boolean mo17575y() {
        AbstractC19219a0 abstractC19219a0 = this.f45847l;
        String[] strArr = C16282g.f45864a;
        return abstractC19219a0.mo13825h((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    @Override // p193e.p194a.p982k0.p983a.AbstractC16278e
    /* renamed from: z */
    public boolean mo17574z() {
        return ((Boolean) this.f45837b.getValue()).booleanValue();
    }
}
