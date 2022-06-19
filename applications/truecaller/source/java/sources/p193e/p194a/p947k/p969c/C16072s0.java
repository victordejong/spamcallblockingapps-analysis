package p193e.p194a.p947k.p969c;

import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p678d4.AbstractC12597c;
import p193e.p194a.p678d4.AbstractC12603e;
import p193e.p194a.p947k.p971l.C16126d;
import p193e.p194a.p947k.p973n.p974d.AbstractC16162d;
import p193e.p194a.p947k.p973n.p974d.C16163e;
import p193e.p194a.p947k.p973n.p974d.C16165g;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.c.s0 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/s0.class */
public final class C16072s0 implements AbstractC16067r0 {

    /* renamed from: a */
    public final g f45296a = C25225a.m3978P1(new C16075c());

    /* renamed from: b */
    public final a<C20592g> f45297b;

    /* renamed from: c */
    public final Provider<Boolean> f45298c;

    /* renamed from: d */
    public final Provider<Boolean> f45299d;

    /* renamed from: e */
    public final Provider<Boolean> f45300e;

    /* renamed from: f */
    public final AbstractC16015i1 f45301f;

    /* renamed from: g */
    public final a<AbstractC8432l> f45302g;

    /* renamed from: h */
    public final AbstractC16162d f45303h;

    /* renamed from: i */
    public final a<AbstractC19230g> f45304i;

    /* renamed from: j */
    public final AbstractC12597c f45305j;

    @e(c = "com.truecaller.videocallerid.utils.VideoCallerIdAvailabilityImpl", f = "VideoCallerIdAvailability.kt", l = {141}, m = "getAvailabilityForNumber")
    /* renamed from: e.a.k.c.s0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/s0$a.class */
    public static final class C16073a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45306d;

        /* renamed from: e */
        public int f45307e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16073a(d dVar) {
            super(dVar);
            C16072s0.this = r4;
        }

        /* renamed from: s */
        public final Object m17916s(Object obj) {
            this.f45306d = obj;
            this.f45307e |= Integer.MIN_VALUE;
            return C16072s0.this.mo17922d(null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.VideoCallerIdAvailabilityImpl", f = "VideoCallerIdAvailability.kt", l = {145}, m = "getAvailabilityVersionForNumber")
    /* renamed from: e.a.k.c.s0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/s0$b.class */
    public static final class C16074b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45309d;

        /* renamed from: e */
        public int f45310e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16074b(d dVar) {
            super(dVar);
            C16072s0.this = r4;
        }

        /* renamed from: s */
        public final Object m17915s(Object obj) {
            this.f45309d = obj;
            this.f45310e |= Integer.MIN_VALUE;
            return C16072s0.this.mo17919g(null, this);
        }
    }

    /* renamed from: e.a.k.c.s0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/c/s0$c.class */
    public static final class C16075c extends m implements s1.z.b.a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16075c() {
            super(0);
            C16072s0.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(C16072s0.this.f45305j.mo22840d(AbstractC12603e.C12604a.f36737c));
        }
    }

    @Inject
    public C16072s0(a<C20592g> aVar, @Named("videoCallerIdFeatureFlagStatus") Provider<Boolean> provider, @Named("videoCallerIdBusinessFeatureFlagStatus") Provider<Boolean> provider2, @Named("videoCallerIdShowHideOptionsFlag") Provider<Boolean> provider3, AbstractC16015i1 abstractC16015i1, a<AbstractC8432l> aVar2, AbstractC16162d abstractC16162d, a<AbstractC19230g> aVar3, AbstractC12597c abstractC12597c) {
        l.e(aVar, "featuresRegistry");
        l.e(provider, "featureFlagEnabled");
        l.e(provider2, "businessFeatureFlagEnabled");
        l.e(provider3, "showHideOptionsFeatureFlag");
        l.e(abstractC16015i1, "videoCallerIdSettings");
        l.e(aVar2, "accountManager");
        l.e(abstractC16162d, "availabilityRepository");
        l.e(aVar3, "deviceInfoUtil");
        l.e(abstractC12597c, "mobileServicesAvailabilityProvider");
        this.f45297b = aVar;
        this.f45298c = provider;
        this.f45299d = provider2;
        this.f45300e = provider3;
        this.f45301f = abstractC16015i1;
        this.f45302g = aVar2;
        this.f45303h = abstractC16162d;
        this.f45304i = aVar3;
        this.f45305j = abstractC12597c;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /* renamed from: a */
    public void mo17925a() {
        if (C19291g.m13615K(this.f45301f, "videoCallerIdEnableSettingRequested", false, 2, null)) {
            setEnabled(true);
            mo17921e(false);
        }
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /* renamed from: b */
    public boolean mo17924b() {
        Object obj = this.f45300e.get();
        l.d(obj, "showHideOptionsFeatureFlag.get()");
        return ((Boolean) obj).booleanValue();
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /* renamed from: c */
    public boolean mo17923c() {
        return C19291g.m13615K(this.f45301f, "videoCallerIdEnableSettingRequested", false, 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo17922d(java.lang.String r8, s1.w.d<? super java.lang.Boolean> r9) {
        /*
            r7 = this;
            r0 = r9
            boolean r0 = r0 instanceof p193e.p194a.p947k.p969c.C16072s0.C16073a
            if (r0 == 0) goto L28
            r0 = r9
            e.a.k.c.s0$a r0 = (p193e.p194a.p947k.p969c.C16072s0.C16073a) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f45307e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45307e = r1
            r0 = r10
            r9 = r0
            goto L32
        L28:
            e.a.k.c.s0$a r0 = new e.a.k.c.s0$a
            r1 = r0
            r2 = r7
            r3 = r9
            r1.<init>(r3)
            r9 = r0
        L32:
            r0 = r9
            java.lang.Object r0 = r0.f45306d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r9
            int r0 = r0.f45307e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L60
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r10
            r8 = r0
            goto L91
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            e.a.k.n.d.d r0 = r0.f45303h
            r10 = r0
            r0 = r9
            r1 = 1
            r0.f45307e = r1
            r0 = r10
            e.a.k.n.d.g r0 = (p193e.p194a.p947k.p973n.p974d.C16165g) r0
            r10 = r0
            r0 = r10
            s1.w.f r0 = r0.f45615a
            e.a.k.n.d.f r1 = new e.a.k.n.d.f
            r2 = r1
            r3 = r10
            r4 = r8
            r5 = 0
            r2.<init>(r3, r4, r5)
            r2 = r9
            java.lang.Object r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13546h1(r0, r1, r2)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r12
            if (r0 != r1) goto L91
            r0 = r12
            return r0
        L91:
            r0 = r8
            e.a.k.l.d r0 = (p193e.p194a.p947k.p971l.C16126d) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Laf
            r0 = r8
            boolean r0 = r0.f45439b
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Laf
            r0 = r8
            boolean r0 = r0.booleanValue()
            r13 = r0
            goto Lb2
        Laf:
            r0 = 0
            r13 = r0
        Lb2:
            r0 = r13
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16072s0.mo17922d(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /* renamed from: e */
    public void mo17921e(boolean z) {
        this.f45301f.putBoolean("videoCallerIdEnableSettingRequested", z);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /* renamed from: f */
    public Object mo17920f(List<C16126d> list, d<? super s> dVar) {
        Object obj = s.a;
        C16165g c16165g = (C16165g) this.f45303h;
        Object m13546h1 = C19291g.m13546h1(c16165g.f45615a, new C16163e(c16165g, list, null), dVar);
        Object obj2 = s1.w.j.a.a;
        if (m13546h1 != obj2) {
            m13546h1 = obj;
        }
        return m13546h1 == obj2 ? m13546h1 : obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ad  */
    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo17919g(java.lang.String r8, s1.w.d<? super java.lang.Integer> r9) {
        /*
            r7 = this;
            r0 = r9
            boolean r0 = r0 instanceof p193e.p194a.p947k.p969c.C16072s0.C16074b
            if (r0 == 0) goto L28
            r0 = r9
            e.a.k.c.s0$b r0 = (p193e.p194a.p947k.p969c.C16072s0.C16074b) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f45310e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f45310e = r1
            r0 = r10
            r9 = r0
            goto L32
        L28:
            e.a.k.c.s0$b r0 = new e.a.k.c.s0$b
            r1 = r0
            r2 = r7
            r3 = r9
            r1.<init>(r3)
            r9 = r0
        L32:
            r0 = r9
            java.lang.Object r0 = r0.f45309d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r9
            int r0 = r0.f45310e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L60
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r10
            r8 = r0
            goto L91
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            e.a.k.n.d.d r0 = r0.f45303h
            r10 = r0
            r0 = r9
            r1 = 1
            r0.f45310e = r1
            r0 = r10
            e.a.k.n.d.g r0 = (p193e.p194a.p947k.p973n.p974d.C16165g) r0
            r10 = r0
            r0 = r10
            s1.w.f r0 = r0.f45615a
            e.a.k.n.d.f r1 = new e.a.k.n.d.f
            r2 = r1
            r3 = r10
            r4 = r8
            r5 = 0
            r2.<init>(r3, r4, r5)
            r2 = r9
            java.lang.Object r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13546h1(r0, r1, r2)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r12
            if (r0 != r1) goto L91
            r0 = r12
            return r0
        L91:
            r0 = r8
            e.a.k.l.d r0 = (p193e.p194a.p947k.p971l.C16126d) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Lad
            java.lang.Integer r0 = new java.lang.Integer
            r1 = r0
            r2 = r8
            int r2 = r2.f45440c
            r1.<init>(r2)
            int r0 = r0.intValue()
            r11 = r0
            goto Lb0
        Lad:
            r0 = 0
            r11 = r0
        Lb0:
            java.lang.Integer r0 = new java.lang.Integer
            r1 = r0
            r2 = r11
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16072s0.mo17919g(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f8, code lost:
        if (r13 == false) goto L29;
     */
    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isAvailable() {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p969c.C16072s0.isAvailable():boolean");
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    public boolean isEnabled() {
        return C19291g.m13615K(this.f45301f, "videoCallerIdSetting", false, 2, null);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /* renamed from: k */
    public boolean mo17918k() {
        Object obj = this.f45299d.get();
        l.d(obj, "businessFeatureFlagEnabled.get()");
        return ((Boolean) obj).booleanValue();
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    /* renamed from: m */
    public C15987g0 mo17917m() {
        boolean z = false;
        if (isAvailable()) {
            z = false;
            if (!C19291g.m13615K(this.f45301f, "hiddenForAllContacts", false, 2, null)) {
                z = true;
            }
        }
        return new C15987g0(z, 1);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC16067r0
    public void setEnabled(boolean z) {
        this.f45301f.putBoolean("videoCallerIdSetting", z);
    }
}
