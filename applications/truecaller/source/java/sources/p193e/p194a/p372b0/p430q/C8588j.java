package p193e.p194a.p372b0.p430q;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.country.CountryListDto;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.C8415b;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p416j.AbstractC8480b;
import p193e.p194a.p372b0.p416j.C8487d;
import q3.a.i0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b0.q.j */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/j.class */
public final class C8588j {

    /* renamed from: d */
    public static final C8588j f26412d = new C8588j();

    /* renamed from: a */
    public static final g f26409a = C25225a.m3978P1(C8590b.f26414b);

    /* renamed from: b */
    public static final g f26410b = C25225a.m3978P1(C8596h.f26423b);

    /* renamed from: c */
    public static final g f26411c = C25225a.m3978P1(C8589a.f26413b);

    /* renamed from: e.a.b0.q.j$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/j$a.class */
    public static final class C8589a extends m implements a<C8487d> {

        /* renamed from: b */
        public static final C8589a f26413b = new C8589a();

        public C8589a() {
            super(0);
        }

        public Object invoke() {
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            l.d(m28551L, "ApplicationBase.getAppBase()");
            return m28551L.m28549N().mo12654L5();
        }
    }

    /* renamed from: e.a.b0.q.j$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/j$b.class */
    public static final class C8590b extends m implements a<C20592g> {

        /* renamed from: b */
        public static final C8590b f26414b = new C8590b();

        public C8590b() {
            super(0);
        }

        public Object invoke() {
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            l.d(m28551L, "ApplicationBase.getAppBase()");
            return m28551L.m28549N().mo11648b();
        }
    }

    @e(c = "com.truecaller.common.util.CountryUtil$getAllCountries$1", f = "CountryUtil.kt", l = {82}, m = "invokeSuspend")
    /* renamed from: e.a.b0.q.j$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/j$c.class */
    public static final class C8591c extends i implements p<i0, d<? super List<? extends CountryListDto.C3679a>>, Object> {

        /* renamed from: e */
        public int f26415e;

        public C8591c(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m28280i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8591c(dVar);
        }

        /* renamed from: k */
        public final Object m28279k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8591c(dVar).m28278s(s.a);
        }

        /* renamed from: s */
        public final Object m28278s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f26415e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8588j c8588j = C8588j.f26412d;
                this.f26415e = 1;
                Object mo28482d = ((AbstractC8480b) C8588j.f26410b.getValue()).mo28482d(this);
                obj = mo28482d;
                if (mo28482d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.common.util.CountryUtil$getByCode$1", f = "CountryUtil.kt", l = {64}, m = "invokeSuspend")
    /* renamed from: e.a.b0.q.j$d */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/j$d.class */
    public static final class C8592d extends i implements p<i0, d<? super CountryListDto.C3679a>, Object> {

        /* renamed from: e */
        public int f26416e;

        /* renamed from: f */
        public final /* synthetic */ String f26417f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8592d(String str, d dVar) {
            super(2, dVar);
            this.f26417f = str;
        }

        /* renamed from: i */
        public final d<s> m28277i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8592d(this.f26417f, dVar);
        }

        /* renamed from: k */
        public final Object m28276k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8592d(this.f26417f, dVar).m28275s(s.a);
        }

        /* renamed from: s */
        public final Object m28275s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f26416e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8588j c8588j = C8588j.f26412d;
                AbstractC8480b abstractC8480b = (AbstractC8480b) C8588j.f26410b.getValue();
                String str = this.f26417f;
                this.f26416e = 1;
                Object mo28483c = abstractC8480b.mo28483c(str, this);
                obj = mo28483c;
                if (mo28483c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.common.util.CountryUtil$getByIso$1", f = "CountryUtil.kt", l = {46}, m = "invokeSuspend")
    /* renamed from: e.a.b0.q.j$e */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/j$e.class */
    public static final class C8593e extends i implements p<i0, d<? super CountryListDto.C3679a>, Object> {

        /* renamed from: e */
        public int f26418e;

        /* renamed from: f */
        public final /* synthetic */ String f26419f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8593e(String str, d dVar) {
            super(2, dVar);
            this.f26419f = str;
        }

        /* renamed from: i */
        public final d<s> m28274i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8593e(this.f26419f, dVar);
        }

        /* renamed from: k */
        public final Object m28273k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8593e(this.f26419f, dVar).m28272s(s.a);
        }

        /* renamed from: s */
        public final Object m28272s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f26418e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8588j c8588j = C8588j.f26412d;
                AbstractC8480b abstractC8480b = (AbstractC8480b) C8588j.f26410b.getValue();
                String str = this.f26419f;
                this.f26418e = 1;
                Object mo28480f = abstractC8480b.mo28480f(str, this);
                obj = mo28480f;
                if (mo28480f == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.common.util.CountryUtil$getByName$1", f = "CountryUtil.kt", l = {55}, m = "invokeSuspend")
    /* renamed from: e.a.b0.q.j$f */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/j$f.class */
    public static final class C8594f extends i implements p<i0, d<? super CountryListDto.C3679a>, Object> {

        /* renamed from: e */
        public int f26420e;

        /* renamed from: f */
        public final /* synthetic */ String f26421f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8594f(String str, d dVar) {
            super(2, dVar);
            this.f26421f = str;
        }

        /* renamed from: i */
        public final d<s> m28271i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8594f(this.f26421f, dVar);
        }

        /* renamed from: k */
        public final Object m28270k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8594f(this.f26421f, dVar).m28269s(s.a);
        }

        /* renamed from: s */
        public final Object m28269s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f26420e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8588j c8588j = C8588j.f26412d;
                AbstractC8480b abstractC8480b = (AbstractC8480b) C8588j.f26410b.getValue();
                String str = this.f26421f;
                this.f26420e = 1;
                Object mo28479g = abstractC8480b.mo28479g(str, this);
                obj = mo28479g;
                if (mo28479g == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.common.util.CountryUtil$getSuggestedCountry$1", f = "CountryUtil.kt", l = {73}, m = "invokeSuspend")
    /* renamed from: e.a.b0.q.j$g */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/j$g.class */
    public static final class C8595g extends i implements p<i0, d<? super CountryListDto.C3679a>, Object> {

        /* renamed from: e */
        public int f26422e;

        public C8595g(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m28268i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8595g(dVar);
        }

        /* renamed from: k */
        public final Object m28267k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8595g(dVar).m28266s(s.a);
        }

        /* renamed from: s */
        public final Object m28266s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f26422e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C8588j c8588j = C8588j.f26412d;
                this.f26422e = 1;
                Object mo28484b = ((AbstractC8480b) C8588j.f26410b.getValue()).mo28484b(this);
                obj = mo28484b;
                if (mo28484b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    /* renamed from: e.a.b0.q.j$h */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/j$h.class */
    public static final class C8596h extends m implements a<AbstractC8480b> {

        /* renamed from: b */
        public static final C8596h f26423b = new C8596h();

        public C8596h() {
            super(0);
        }

        public Object invoke() {
            AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
            l.d(m28551L, "ApplicationBase.getAppBase()");
            return m28551L.m28549N().mo12241q1();
        }
    }

    /* renamed from: a */
    public static final List<CountryListDto.C3679a> m28288a() {
        return ((C20592g) f26409a.getValue()).m10946v().isEnabled() ? ((C8487d) f26411c.getValue()).m28463a() : (List) s1.a.a.a.v0.f.d.c3((f) null, new C8591c(null), 1, (Object) null);
    }

    /* renamed from: b */
    public static final CountryListDto.C3679a m28287b(String str) {
        return ((C20592g) f26409a.getValue()).m10946v().isEnabled() ? ((C8487d) f26411c.getValue()).m28461c(str) : (CountryListDto.C3679a) s1.a.a.a.v0.f.d.c3((f) null, new C8592d(str, null), 1, (Object) null);
    }

    /* renamed from: c */
    public static final CountryListDto.C3679a m28286c(String str) {
        CountryListDto.C3679a c3679a = null;
        if (((C20592g) f26409a.getValue()).m10946v().isEnabled()) {
            C8487d c8487d = (C8487d) f26411c.getValue();
            Objects.requireNonNull(c8487d);
            if (str != null) {
                c3679a = c8487d.m28460d().m28493a(str);
            }
        } else {
            c3679a = (CountryListDto.C3679a) s1.a.a.a.v0.f.d.c3((f) null, new C8593e(str, null), 1, (Object) null);
        }
        return c3679a;
    }

    /* renamed from: d */
    public static final CountryListDto.C3679a m28285d(String str) {
        return ((C20592g) f26409a.getValue()).m10946v().isEnabled() ? ((C8487d) f26411c.getValue()).m28462b(str) : (CountryListDto.C3679a) s1.a.a.a.v0.f.d.c3((f) null, new C8594f(str, null), 1, (Object) null);
    }

    /* renamed from: g */
    public static final CountryListDto.C3679a m28282g() {
        return ((C20592g) f26409a.getValue()).m10946v().isEnabled() ? ((C8487d) f26411c.getValue()).m28459e() : (CountryListDto.C3679a) s1.a.a.a.v0.f.d.c3((f) null, new C8595g(null), 1, (Object) null);
    }

    /* renamed from: h */
    public static final CountryListDto.C3679a m28281h(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        AbstractApplicationC8442a m28551L = AbstractApplicationC8442a.m28551L();
        l.d(m28551L, "ApplicationBase.getAppBase()");
        C8415b mo28577g = m28551L.m28549N().mo11657L().mo28577g();
        return mo28577g != null ? m28286c(mo28577g.f26094a) : null;
    }

    /* renamed from: e */
    public final C8487d m28284e() {
        return (C8487d) f26411c.getValue();
    }

    /* renamed from: f */
    public final C20592g m28283f() {
        return (C20592g) f26409a.getValue();
    }
}
