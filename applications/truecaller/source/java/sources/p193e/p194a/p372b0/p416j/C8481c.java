package p193e.p194a.p372b0.p416j;

import com.truecaller.common.network.country.CountryListDto;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.b0.j.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/j/c.class */
public final class C8481c implements AbstractC8480b {

    /* renamed from: a */
    public final C8487d f26236a;

    @e(c = "com.truecaller.common.country.CountryRepositoryImpl$getAllCountries$2", f = "CountryRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b0.j.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/j/c$a.class */
    public static final class C8482a extends i implements p<i0, d<? super List<? extends CountryListDto.C3679a>>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8482a(d dVar) {
            super(2, dVar);
            C8481c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m28478i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8482a(dVar);
        }

        /* renamed from: k */
        public final Object m28477k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8481c c8481c = C8481c.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c8481c.f26236a.m28463a();
        }

        /* renamed from: s */
        public final Object m28476s(Object obj) {
            C25225a.m3932a3(obj);
            return C8481c.this.f26236a.m28463a();
        }
    }

    @e(c = "com.truecaller.common.country.CountryRepositoryImpl$getByIso$2", f = "CountryRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b0.j.c$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/j/c$b.class */
    public static final class C8483b extends i implements p<i0, d<? super CountryListDto.C3679a>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f26239f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8483b(String str, d dVar) {
            super(2, dVar);
            C8481c.this = r5;
            this.f26239f = str;
        }

        /* renamed from: i */
        public final d<s> m28475i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8483b(this.f26239f, dVar);
        }

        /* renamed from: k */
        public final Object m28474k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8481c c8481c = C8481c.this;
            String str = this.f26239f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            C8487d c8487d = c8481c.f26236a;
            Objects.requireNonNull(c8487d);
            return str != null ? c8487d.m28460d().m28493a(str) : null;
        }

        /* renamed from: s */
        public final Object m28473s(Object obj) {
            C25225a.m3932a3(obj);
            C8487d c8487d = C8481c.this.f26236a;
            String str = this.f26239f;
            Objects.requireNonNull(c8487d);
            return str != null ? c8487d.m28460d().m28493a(str) : null;
        }
    }

    @e(c = "com.truecaller.common.country.CountryRepositoryImpl$getByName$2", f = "CountryRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b0.j.c$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/j/c$c.class */
    public static final class C8484c extends i implements p<i0, d<? super CountryListDto.C3679a>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f26241f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8484c(String str, d dVar) {
            super(2, dVar);
            C8481c.this = r5;
            this.f26241f = str;
        }

        /* renamed from: i */
        public final d<s> m28472i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8484c(this.f26241f, dVar);
        }

        /* renamed from: k */
        public final Object m28471k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8481c c8481c = C8481c.this;
            String str = this.f26241f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c8481c.f26236a.m28462b(str);
        }

        /* renamed from: s */
        public final Object m28470s(Object obj) {
            C25225a.m3932a3(obj);
            return C8481c.this.f26236a.m28462b(this.f26241f);
        }
    }

    @e(c = "com.truecaller.common.country.CountryRepositoryImpl$getByNumber$2", f = "CountryRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b0.j.c$d */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/j/c$d.class */
    public static final class C8485d extends i implements p<i0, d<? super CountryListDto.C3679a>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f26243f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8485d(String str, d dVar) {
            super(2, dVar);
            C8481c.this = r5;
            this.f26243f = str;
        }

        /* renamed from: i */
        public final d<s> m28469i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8485d(this.f26243f, dVar);
        }

        /* renamed from: k */
        public final Object m28468k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8481c c8481c = C8481c.this;
            String str = this.f26243f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c8481c.f26236a.m28461c(str);
        }

        /* renamed from: s */
        public final Object m28467s(Object obj) {
            C25225a.m3932a3(obj);
            return C8481c.this.f26236a.m28461c(this.f26243f);
        }
    }

    @e(c = "com.truecaller.common.country.CountryRepositoryImpl$getSuggestedCountry$2", f = "CountryRepository.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b0.j.c$e */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/j/c$e.class */
    public static final class C8486e extends i implements p<i0, d<? super CountryListDto.C3679a>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8486e(d dVar) {
            super(2, dVar);
            C8481c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m28466i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8486e(dVar);
        }

        /* renamed from: k */
        public final Object m28465k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8481c c8481c = C8481c.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c8481c.f26236a.m28459e();
        }

        /* renamed from: s */
        public final Object m28464s(Object obj) {
            C25225a.m3932a3(obj);
            return C8481c.this.f26236a.m28459e();
        }
    }

    @Inject
    public C8481c(C8487d c8487d) {
        l.e(c8487d, "countryRepositoryDelegate");
        this.f26236a = c8487d;
    }

    @Override // p193e.p194a.p372b0.p416j.AbstractC8480b
    /* renamed from: b */
    public Object mo28484b(d<? super CountryListDto.C3679a> dVar) {
        return s1.a.a.a.v0.f.d.a4(t0.d, new C8486e(null), dVar);
    }

    @Override // p193e.p194a.p372b0.p416j.AbstractC8480b
    /* renamed from: c */
    public Object mo28483c(String str, d<? super CountryListDto.C3679a> dVar) {
        return s1.a.a.a.v0.f.d.a4(t0.d, new C8485d(str, null), dVar);
    }

    @Override // p193e.p194a.p372b0.p416j.AbstractC8480b
    /* renamed from: d */
    public Object mo28482d(d<? super List<? extends CountryListDto.C3679a>> dVar) {
        return s1.a.a.a.v0.f.d.a4(t0.d, new C8482a(null), dVar);
    }

    @Override // p193e.p194a.p372b0.p416j.AbstractC8480b
    /* renamed from: e */
    public Object mo28481e(d<? super s> dVar) {
        Object obj = s.a;
        C8487d c8487d = this.f26236a;
        Object a4 = s1.a.a.a.v0.f.d.a4(c8487d.f26246b, new C8490f(c8487d, null), dVar);
        Object obj2 = a.a;
        if (a4 != obj2) {
            a4 = obj;
        }
        return a4 == obj2 ? a4 : obj;
    }

    @Override // p193e.p194a.p372b0.p416j.AbstractC8480b
    /* renamed from: f */
    public Object mo28480f(String str, d<? super CountryListDto.C3679a> dVar) {
        return s1.a.a.a.v0.f.d.a4(t0.d, new C8483b(str, null), dVar);
    }

    @Override // p193e.p194a.p372b0.p416j.AbstractC8480b
    /* renamed from: g */
    public Object mo28479g(String str, d<? super CountryListDto.C3679a> dVar) {
        return s1.a.a.a.v0.f.d.a4(t0.d, new C8484c(str, null), dVar);
    }
}
