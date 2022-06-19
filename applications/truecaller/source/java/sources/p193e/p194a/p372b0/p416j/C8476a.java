package p193e.p194a.p372b0.p416j;

import com.truecaller.common.network.country.CountryListDto;
import java.io.File;
import java.io.FileWriter;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19248n;
import p193e.p194a.p1129p5.C19250o;
import q3.a.i0;
import q3.a.t0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.b0.j.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/j/a.class */
public final class C8476a {

    /* renamed from: e */
    public static final String[] f26221e;

    /* renamed from: f */
    public static final String[] f26222f;

    /* renamed from: g */
    public static final Map<String, String[]> f26223g;

    /* renamed from: h */
    public static final C8477a f26224h = new C8477a(null);

    /* renamed from: a */
    public Map<String, ? extends CountryListDto.C3679a> f26225a;

    /* renamed from: b */
    public Map<String, ? extends CountryListDto.C3679a> f26226b;

    /* renamed from: c */
    public Map<String, ? extends CountryListDto.C3679a> f26227c;

    /* renamed from: d */
    public CountryListDto f26228d;

    /* renamed from: e.a.b0.j.a$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/j/a$a.class */
    public static final class C8477a {
        public C8477a(f fVar) {
        }
    }

    @e(c = "com.truecaller.common.country.CountryDataStore", f = "CountryDataStore.kt", l = {53}, m = "reload$common_release")
    /* renamed from: e.a.b0.j.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/j/a$b.class */
    public static final class C8478b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f26229d;

        /* renamed from: e */
        public int f26230e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8478b(d dVar) {
            super(dVar);
            C8476a.this = r4;
        }

        /* renamed from: s */
        public final Object m28488s(Object obj) {
            this.f26229d = obj;
            this.f26230e |= Integer.MIN_VALUE;
            return C8476a.this.m28490d(null, null, null, this);
        }
    }

    @e(c = "com.truecaller.common.country.CountryDataStore$saveToDisk$2", f = "CountryDataStore.kt", l = {65}, m = "invokeSuspend")
    /* renamed from: e.a.b0.j.a$c */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/j/a$c.class */
    public static final class C8479c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f26232e;

        /* renamed from: g */
        public final /* synthetic */ File f26234g;

        /* renamed from: h */
        public final /* synthetic */ C19250o f26235h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8479c(File file, C19250o c19250o, d dVar) {
            super(2, dVar);
            C8476a.this = r5;
            this.f26234g = file;
            this.f26235h = c19250o;
        }

        /* renamed from: i */
        public final d<s> m28487i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8479c(this.f26234g, this.f26235h, dVar);
        }

        /* renamed from: k */
        public final Object m28486k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8479c(this.f26234g, this.f26235h, dVar).m28485s(s.a);
        }

        /* renamed from: s */
        public final Object m28485s(Object obj) {
            Object obj2 = s.a;
            Object obj3 = a.a;
            int i = this.f26232e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                File file = new File(this.f26234g, "countries.json");
                C19250o c19250o = this.f26235h;
                FileWriter fileWriter = new FileWriter(file);
                CountryListDto countryListDto = C8476a.this.f26228d;
                this.f26232e = 1;
                Objects.requireNonNull(c19250o);
                Object a4 = s1.a.a.a.v0.f.d.a4(t0.d, new C19248n(fileWriter, countryListDto, null), this);
                if (a4 != obj3) {
                    a4 = obj2;
                }
                if (a4 == obj3) {
                    return obj3;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj2;
        }
    }

    static {
        String[] strArr = {"1403", "1587", "1780", "1825", "1236", "1250", "1604", "1672", "1778", "1204", "1431", "1506", "1709", "1902", "1226", "1249", "1289", "1343", "1365", "1416", "1437", "1519", "1613", "1647", "1705", "1807", "1905", "1418", "1438", "1450", "1514", "1579", "1581", "1819", "1873", "1306", "1639", "1867"};
        f26221e = strArr;
        String[] strArr2 = {"733622", "76", "77"};
        f26222f = strArr2;
        f26223g = s1.u.i.W(new k[]{new k("ca", strArr), new k("kz", strArr2)});
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x018c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8476a(com.truecaller.common.network.country.CountryListDto r5, s1.z.c.f r6) {
        /*
            Method dump skipped, instructions count: 451
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p416j.C8476a.<init>(com.truecaller.common.network.country.CountryListDto, s1.z.c.f):void");
    }

    /* renamed from: a */
    public final CountryListDto.C3679a m28493a(String str) {
        l.e(str, "iso");
        Map<String, ? extends CountryListDto.C3679a> map = this.f26225a;
        Locale locale = Locale.ENGLISH;
        l.d(locale, "Locale.ENGLISH");
        String lowerCase = str.toLowerCase(locale);
        l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
        return map.get(lowerCase);
    }

    /* renamed from: b */
    public final String m28492b() {
        CountryListDto countryListDto = this.f26228d;
        return countryListDto != null ? countryListDto.countryListChecksum : null;
    }

    /* renamed from: c */
    public final CountryListDto.C3679a m28491c() {
        CountryListDto.C3680b c3680b;
        CountryListDto countryListDto = this.f26228d;
        return (countryListDto == null || (c3680b = countryListDto.countryList) == null) ? null : c3680b.f10914a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d0, code lost:
        if (r10 != null) goto L34;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m28490d(p193e.p194a.p1129p5.C19250o r6, p193e.p194a.p372b0.p416j.C8476a r7, java.io.File r8, s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p416j.C8476a.m28490d(e.a.p5.o, e.a.b0.j.a, java.io.File, s1.w.d):java.lang.Object");
    }

    /* renamed from: e */
    public final Object m28489e(C19250o c19250o, File file, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(t0.d, new C8479c(file, c19250o, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(C8476a.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.truecaller.common.country.CountryDataStore");
        C8476a c8476a = (C8476a) obj;
        return !(l.a(this.f26228d, c8476a.f26228d) ^ true) && !(l.a(this.f26225a, c8476a.f26225a) ^ true) && !(l.a(this.f26226b, c8476a.f26226b) ^ true) && !(l.a(this.f26227c, c8476a.f26227c) ^ true);
    }

    public int hashCode() {
        CountryListDto countryListDto = this.f26228d;
        int hashCode = countryListDto != null ? countryListDto.hashCode() : 0;
        return this.f26227c.hashCode() + ((this.f26226b.hashCode() + ((this.f26225a.hashCode() + (hashCode * 31)) * 31)) * 31);
    }
}
