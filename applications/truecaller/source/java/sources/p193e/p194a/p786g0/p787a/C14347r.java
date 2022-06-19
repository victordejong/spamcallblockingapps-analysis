package p193e.p194a.p786g0.p787a;

import com.truecaller.suspension.UnsuspensionMethod;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p786g0.AbstractC14353c;
import p193e.p194a.p786g0.AbstractC14356d;
import p193e.p194a.p786g0.p788j.AbstractC14377j;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
/* renamed from: e.a.g0.a.r */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/r.class */
public final class C14347r extends AbstractC20574a<AbstractC14339n> implements AbstractC14338m {

    /* renamed from: d */
    public final f f41450d;

    /* renamed from: e */
    public final f f41451e;

    /* renamed from: f */
    public final AbstractC14356d f41452f;

    /* renamed from: g */
    public final AbstractC19321u f41453g;

    /* renamed from: h */
    public final AbstractC14377j f41454h;

    @e(c = "com.truecaller.suspension.ui.SuspensionPresenter$sendFeedbackReport$1", f = "SuspensionPresenter.kt", l = {126}, m = "invokeSuspend")
    /* renamed from: e.a.g0.a.r$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g0/a/r$a.class */
    public static final class C14348a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f41455e;

        @e(c = "com.truecaller.suspension.ui.SuspensionPresenter$sendFeedbackReport$1$1", f = "SuspensionPresenter.kt", l = {232}, m = "invokeSuspend")
        /* renamed from: e.a.g0.a.r$a$a */
        /* loaded from: classes14-dex2jar.jar:e/a/g0/a/r$a$a.class */
        public static final class C14349a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f41457e;

            /* renamed from: e.a.g0.a.r$a$a$a */
            /* loaded from: classes14-dex2jar.jar:e/a/g0/a/r$a$a$a.class */
            public static final class C14350a implements g<AbstractC14353c> {

                /* renamed from: e.a.g0.a.r$a$a$a$a */
                /* loaded from: classes14-dex2jar.jar:e/a/g0/a/r$a$a$a$a.class */
                public static final class C14351a extends m implements l<Boolean, s> {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C14351a() {
                        super(1);
                        C14350a.this = r4;
                    }

                    /* renamed from: d */
                    public Object m20203d(Object obj) {
                        ((Boolean) obj).booleanValue();
                        C14347r.this.m20211Lj();
                        return s.a;
                    }
                }

                public C14350a() {
                    C14349a.this = r4;
                }

                /* renamed from: a */
                public Object m20204a(Object obj, d dVar) {
                    C14347r c14347r = C14347r.this;
                    Object a4 = s1.a.a.a.v0.f.d.a4(c14347r.f41450d, new C14346q(c14347r, (AbstractC14353c) obj, new C14351a(), null), dVar);
                    return a4 == a.a ? a4 : s.a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C14349a(d dVar) {
                super(2, dVar);
                C14348a.this = r5;
            }

            /* renamed from: i */
            public final d<s> m20207i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                return new C14349a(dVar);
            }

            /* renamed from: k */
            public final Object m20206k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                return new C14349a(dVar).m20205s(s.a);
            }

            /* renamed from: s */
            public final Object m20205s(Object obj) {
                a aVar = a.a;
                int i = this.f41457e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    q3.a.x2.f<AbstractC14353c> mo20195d = C14347r.this.f41452f.mo20195d();
                    C14350a c14350a = new C14350a();
                    this.f41457e = 1;
                    if (mo20195d.c(c14350a, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14348a(d dVar) {
            super(2, dVar);
            C14347r.this = r5;
        }

        /* renamed from: i */
        public final d<s> m20210i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C14348a(dVar);
        }

        /* renamed from: k */
        public final Object m20209k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C14348a(dVar).m20208s(s.a);
        }

        /* renamed from: s */
        public final Object m20208s(Object obj) {
            a aVar = a.a;
            int i = this.f41455e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = C14347r.this.f41451e;
                C14349a c14349a = new C14349a(null);
                this.f41455e = 1;
                if (s1.a.a.a.v0.f.d.a4(fVar, c14349a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C14347r(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC14356d abstractC14356d, AbstractC19321u abstractC19321u, AbstractC14377j abstractC14377j) {
        super(fVar);
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(fVar2, "ioContext");
        s1.z.c.l.e(abstractC14356d, "suspensionManager");
        s1.z.c.l.e(abstractC19321u, "networkUtil");
        s1.z.c.l.e(abstractC14377j, "analyticsManager");
        this.f41450d = fVar;
        this.f41451e = fVar2;
        this.f41452f = abstractC14356d;
        this.f41453g = abstractC19321u;
        this.f41454h = abstractC14377j;
    }

    /* renamed from: Ij */
    public final AbstractC14339n m20214Ij() {
        AbstractC14339n abstractC14339n = (AbstractC14339n) this.f57683a;
        if (abstractC14339n != null) {
            abstractC14339n.mo20251Ol();
            abstractC14339n.mo20241ij();
        } else {
            abstractC14339n = null;
        }
        return abstractC14339n;
    }

    /* renamed from: Jj */
    public final void m20213Jj() {
        AbstractC14339n abstractC14339n = (AbstractC14339n) this.f57683a;
        if (abstractC14339n != null) {
            abstractC14339n.mo20255Fs();
        }
        AbstractC14339n abstractC14339n2 = (AbstractC14339n) this.f57683a;
        if (abstractC14339n2 != null) {
            abstractC14339n2.mo20235t();
        }
    }

    /* renamed from: Kj */
    public final void m20212Kj() {
        if (this.f41453g.mo13429d()) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C14348a(null), 3, (Object) null);
            return;
        }
        AbstractC14339n abstractC14339n = (AbstractC14339n) this.f57683a;
        if (abstractC14339n == null) {
            return;
        }
        abstractC14339n.mo20242i0();
    }

    /* renamed from: Lj */
    public final void m20211Lj() {
        AbstractC14339n abstractC14339n;
        UnsuspensionMethod mo20188k = this.f41452f.mo20188k();
        if (mo20188k instanceof UnsuspensionMethod.C4587b) {
            UnsuspensionMethod.C4587b c4587b = (UnsuspensionMethod.C4587b) mo20188k;
            boolean z = c4587b.f15169b;
            if (z) {
                AbstractC14339n abstractC14339n2 = (AbstractC14339n) this.f57683a;
                if (abstractC14339n2 != null) {
                    abstractC14339n2.mo20248Ty();
                    abstractC14339n2.mo20253Jn();
                    abstractC14339n2.mo20237on();
                }
                m20214Ij();
                return;
            }
            long j = c4587b.f15168a;
            if (j > 0) {
                int ceil = (int) Math.ceil(j / TimeUnit.HOURS.toMillis(1L));
                AbstractC14339n abstractC14339n3 = (AbstractC14339n) this.f57683a;
                if (abstractC14339n3 != null) {
                    abstractC14339n3.mo20233xn();
                    abstractC14339n3.mo20250Oq();
                    abstractC14339n3.mo20236qt(ceil);
                }
                m20214Ij();
            } else if (z) {
            } else {
                AbstractC14339n abstractC14339n4 = (AbstractC14339n) this.f57683a;
                if (abstractC14339n4 != null) {
                    abstractC14339n4.mo20240je();
                    abstractC14339n4.mo20250Oq();
                    abstractC14339n4.mo20254JA();
                }
                m20214Ij();
            }
        } else if (!(mo20188k instanceof UnsuspensionMethod.Support)) {
            if (!s1.z.c.l.a(mo20188k, UnsuspensionMethod.C4586a.f15167a)) {
                return;
            }
            AbstractC14339n abstractC14339n5 = (AbstractC14339n) this.f57683a;
            if (abstractC14339n5 != null) {
                abstractC14339n5.mo20233xn();
                abstractC14339n5.mo20247W6();
                abstractC14339n5.mo20243cz();
            }
            m20214Ij();
        } else {
            UnsuspensionMethod.Support.Error error = ((UnsuspensionMethod.Support) mo20188k).f15166b;
            if (error == null) {
                AbstractC14339n abstractC14339n6 = (AbstractC14339n) this.f57683a;
                if (abstractC14339n6 == null) {
                    return;
                }
                abstractC14339n6.mo20232yp();
                abstractC14339n6.mo20253Jn();
                abstractC14339n6.mo20239kw();
                abstractC14339n6.mo20257Do();
                abstractC14339n6.mo20241ij();
            } else if (error == UnsuspensionMethod.Support.Error.Recaptcha) {
                AbstractC14339n abstractC14339n7 = (AbstractC14339n) this.f57683a;
                if (abstractC14339n7 == null) {
                    return;
                }
                abstractC14339n7.mo20232yp();
                abstractC14339n7.mo20250Oq();
                abstractC14339n7.mo20252Jq();
                abstractC14339n7.mo20257Do();
                abstractC14339n7.mo20241ij();
            } else if (error != UnsuspensionMethod.Support.Error.Feedback || (abstractC14339n = (AbstractC14339n) this.f57683a) == null) {
            } else {
                abstractC14339n.mo20258B6();
                abstractC14339n.mo20256Fb();
                abstractC14339n.mo20234ur();
                abstractC14339n.mo20238o6();
                abstractC14339n.mo20251Ol();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.g0.a.n, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC14339n abstractC14339n) {
        AbstractC14339n abstractC14339n2 = abstractC14339n;
        s1.z.c.l.e(abstractC14339n2, "presenterView");
        this.f57683a = abstractC14339n2;
        this.f41452f.mo20196c();
        if (!this.f41452f.mo20197b()) {
            m20213Jj();
        } else {
            m20211Lj();
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f41452f.mo20198a();
    }
}
