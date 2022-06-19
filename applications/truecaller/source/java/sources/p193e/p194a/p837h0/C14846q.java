package p193e.p194a.p837h0;

import com.truecaller.blocking.FiltersContract;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.data.entity.messaging.Participant;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
import p193e.p194a.p837h0.p844w.AbstractC14875b;
import p193e.p194a.p837h0.p844w.C14872a;
/* renamed from: e.a.h0.q */
/* loaded from: classes9-dex2jar.jar:e/a/h0/q.class */
public final class C14846q implements AbstractC14854r {

    /* renamed from: a */
    public final AbstractC19890w f42438a;

    /* renamed from: e.a.h0.q$b */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/q$b.class */
    public static class C14848b extends AbstractC19889v<AbstractC14854r, Boolean> {

        /* renamed from: b */
        public final String f42439b;

        /* renamed from: c */
        public final String f42440c;

        /* renamed from: d */
        public final String f42441d;

        /* renamed from: e */
        public final String f42442e;

        /* renamed from: f */
        public final boolean f42443f;

        /* renamed from: g */
        public final FiltersContract.Filters.EntityType f42444g;

        /* renamed from: h */
        public final Long f42445h;

        /* renamed from: i */
        public final Integer f42446i;

        public C14848b(C19852e c19852e, String str, String str2, String str3, String str4, boolean z, FiltersContract.Filters.EntityType entityType, Long l, Integer num, C14847a c14847a) {
            super(c19852e);
            this.f42439b = str;
            this.f42440c = str2;
            this.f42441d = str3;
            this.f42442e = str4;
            this.f42443f = z;
            this.f42444g = entityType;
            this.f42445h = l;
            this.f42446i = num;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo19527f = ((AbstractC14854r) obj).mo19527f(this.f42439b, this.f42440c, this.f42441d, this.f42442e, this.f42443f, this.f42444g, this.f42445h, this.f42446i);
            m11836c(mo19527f);
            return mo19527f;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".blacklistAddress(");
            C22128a.m8719E0(this.f42439b, 1, m8728C, ",");
            C22128a.m8719E0(this.f42440c, 2, m8728C, ",");
            C22128a.m8719E0(this.f42441d, 1, m8728C, ",");
            C22128a.m8719E0(this.f42442e, 2, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(Boolean.valueOf(this.f42443f), 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f42444g, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f42445h, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f42446i, 2));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.h0.q$c */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/q$c.class */
    public static class C14849c extends AbstractC19889v<AbstractC14854r, Boolean> {

        /* renamed from: b */
        public final CountryListDto.C3679a f42447b;

        /* renamed from: c */
        public final String f42448c;

        public C14849c(C19852e c19852e, CountryListDto.C3679a c3679a, String str, C14847a c14847a) {
            super(c19852e);
            this.f42447b = c3679a;
            this.f42448c = str;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo19528e = ((AbstractC14854r) obj).mo19528e(this.f42447b, this.f42448c);
            m11836c(mo19528e);
            return mo19528e;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".blacklistCountry(");
            m8728C.append(AbstractC19889v.m11837b(this.f42447b, 1));
            m8728C.append(",");
            return C22128a.m8587o2(this.f42448c, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.h0.q$d */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/q$d.class */
    public static class C14850d extends AbstractC19889v<AbstractC14854r, Boolean> {

        /* renamed from: b */
        public final String f42449b;

        /* renamed from: c */
        public final String f42450c;

        /* renamed from: d */
        public final FiltersContract.Filters.WildCardType f42451d;

        /* renamed from: e */
        public final String f42452e;

        public C14850d(C19852e c19852e, String str, String str2, FiltersContract.Filters.WildCardType wildCardType, String str3, C14847a c14847a) {
            super(c19852e);
            this.f42449b = str;
            this.f42450c = str2;
            this.f42451d = wildCardType;
            this.f42452e = str3;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo19529d = ((AbstractC14854r) obj).mo19529d(this.f42449b, this.f42450c, this.f42451d, this.f42452e);
            m11836c(mo19529d);
            return mo19529d;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".blacklistWildcard(");
            C22128a.m8719E0(this.f42449b, 1, m8728C, ",");
            C22128a.m8719E0(this.f42450c, 1, m8728C, ",");
            m8728C.append(AbstractC19889v.m11837b(this.f42451d, 2));
            m8728C.append(",");
            return C22128a.m8587o2(this.f42452e, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.h0.q$e */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/q$e.class */
    public static class C14851e extends AbstractC19889v<AbstractC14854r, AbstractC14875b> {
        public C14851e(C19852e c19852e, C14847a c14847a) {
            super(c19852e);
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<AbstractC14875b> mo19531b = ((AbstractC14854r) obj).mo19531b();
            m11836c(mo19531b);
            return mo19531b;
        }

        public String toString() {
            return ".getFilters()";
        }
    }

    /* renamed from: e.a.h0.q$f */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/q$f.class */
    public static class C14852f extends AbstractC19889v<AbstractC14854r, Boolean> {

        /* renamed from: b */
        public final List<Participant> f42453b;

        /* renamed from: c */
        public final List<String> f42454c;

        /* renamed from: d */
        public final List<String> f42455d;

        /* renamed from: e */
        public final String f42456e;

        /* renamed from: f */
        public final String f42457f;

        /* renamed from: g */
        public final boolean f42458g;

        public C14852f(C19852e c19852e, List list, List list2, List list3, String str, String str2, boolean z, C14847a c14847a) {
            super(c19852e);
            this.f42453b = list;
            this.f42454c = list2;
            this.f42455d = list3;
            this.f42456e = str;
            this.f42457f = str2;
            this.f42458g = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo19532a = ((AbstractC14854r) obj).mo19532a(this.f42453b, this.f42454c, this.f42455d, this.f42456e, this.f42457f, this.f42458g);
            m11836c(mo19532a);
            return mo19532a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".whitelistAddresses(");
            m8728C.append(AbstractC19889v.m11837b(this.f42453b, 1));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f42454c, 2));
            m8728C.append(",");
            m8728C.append(AbstractC19889v.m11837b(this.f42455d, 1));
            m8728C.append(",");
            C22128a.m8719E0(this.f42456e, 2, m8728C, ",");
            C22128a.m8719E0(this.f42457f, 2, m8728C, ",");
            return C22128a.m8566u(this.f42458g, 2, m8728C, ")");
        }
    }

    /* renamed from: e.a.h0.q$g */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/q$g.class */
    public static class C14853g extends AbstractC19889v<AbstractC14854r, Boolean> {

        /* renamed from: b */
        public final C14872a f42459b;

        /* renamed from: c */
        public final String f42460c;

        /* renamed from: d */
        public final boolean f42461d;

        public C14853g(C19852e c19852e, C14872a c14872a, String str, boolean z, C14847a c14847a) {
            super(c19852e);
            this.f42459b = c14872a;
            this.f42460c = str;
            this.f42461d = z;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<Boolean> mo19530c = ((AbstractC14854r) obj).mo19530c(this.f42459b, this.f42460c, this.f42461d);
            m11836c(mo19530c);
            return mo19530c;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".whitelistFilter(");
            m8728C.append(AbstractC19889v.m11837b(this.f42459b, 1));
            m8728C.append(",");
            C22128a.m8719E0(this.f42460c, 2, m8728C, ",");
            return C22128a.m8566u(this.f42461d, 2, m8728C, ")");
        }
    }

    public C14846q(AbstractC19890w abstractC19890w) {
        this.f42438a = abstractC19890w;
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: a */
    public AbstractC19891x<Boolean> mo19532a(List<Participant> list, List<String> list2, List<String> list3, String str, String str2, boolean z) {
        return new C19895z(this.f42438a, new C14852f(new C19852e(), list, list2, list3, str, str2, z, null));
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: b */
    public AbstractC19891x<AbstractC14875b> mo19531b() {
        return new C19895z(this.f42438a, new C14851e(new C19852e(), null));
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: c */
    public AbstractC19891x<Boolean> mo19530c(C14872a c14872a, String str, boolean z) {
        return new C19895z(this.f42438a, new C14853g(new C19852e(), c14872a, str, z, null));
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: d */
    public AbstractC19891x<Boolean> mo19529d(String str, String str2, FiltersContract.Filters.WildCardType wildCardType, String str3) {
        return new C19895z(this.f42438a, new C14850d(new C19852e(), str, str2, wildCardType, str3, null));
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: e */
    public AbstractC19891x<Boolean> mo19528e(CountryListDto.C3679a c3679a, String str) {
        return new C19895z(this.f42438a, new C14849c(new C19852e(), c3679a, str, null));
    }

    @Override // p193e.p194a.p837h0.AbstractC14854r
    /* renamed from: f */
    public AbstractC19891x<Boolean> mo19527f(String str, String str2, String str3, String str4, boolean z, FiltersContract.Filters.EntityType entityType, Long l, Integer num) {
        return new C19895z(this.f42438a, new C14848b(new C19852e(), str, str2, str3, str4, z, entityType, l, num, null));
    }
}
