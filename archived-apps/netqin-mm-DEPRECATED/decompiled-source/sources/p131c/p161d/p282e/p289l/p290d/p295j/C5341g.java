package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.g */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/g.class */
public final class C5341g extends CrashlyticsReport.AbstractC7785d.AbstractC7786a {

    /* renamed from: a */
    public final String f18174a;

    /* renamed from: b */
    public final String f18175b;

    /* renamed from: c */
    public final String f18176c;

    /* renamed from: d */
    public final CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b f18177d;

    /* renamed from: e */
    public final String f18178e;

    /* renamed from: f */
    public final String f18179f;

    /* renamed from: g */
    public final String f18180g;

    /* renamed from: c.d.e.l.d.j.g$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/g$b.class */
    public static final class C5343b extends CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a {

        /* renamed from: a */
        public String f18181a;

        /* renamed from: b */
        public String f18182b;

        /* renamed from: c */
        public String f18183c;

        /* renamed from: d */
        public CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b f18184d;

        /* renamed from: e */
        public String f18185e;

        /* renamed from: f */
        public String f18186f;

        /* renamed from: g */
        public String f18187g;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a mo7571a(String str) {
            this.f18186f = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7786a mo7572a() {
            String str = "";
            if (this.f18181a == null) {
                str = " identifier";
            }
            String str2 = str;
            if (this.f18182b == null) {
                str2 = str + " version";
            }
            if (str2.isEmpty()) {
                return new C5341g(this.f18181a, this.f18182b, this.f18183c, this.f18184d, this.f18185e, this.f18186f, this.f18187g);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a mo7570b(String str) {
            this.f18187g = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a
        /* renamed from: c */
        public CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a mo7569c(String str) {
            this.f18183c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a
        /* renamed from: d */
        public CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a mo7568d(String str) {
            if (str != null) {
                this.f18181a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a
        /* renamed from: e */
        public CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a mo7567e(String str) {
            this.f18185e = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a
        /* renamed from: f */
        public CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7787a mo7566f(String str) {
            if (str != null) {
                this.f18182b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    public C5341g(String str, String str2, String str3, CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b bVar, String str4, String str5, String str6) {
        this.f18174a = str;
        this.f18175b = str2;
        this.f18176c = str3;
        this.f18177d = bVar;
        this.f18178e = str4;
        this.f18179f = str5;
        this.f18180g = str6;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a
    /* renamed from: a */
    public String mo7580a() {
        return this.f18179f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a
    /* renamed from: b */
    public String mo7579b() {
        return this.f18180g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a
    /* renamed from: c */
    public String mo7578c() {
        return this.f18176c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a
    /* renamed from: d */
    public String mo7577d() {
        return this.f18174a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a
    /* renamed from: e */
    public String mo7576e() {
        return this.f18178e;
    }

    public boolean equals(Object obj) {
        String str;
        CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b bVar;
        String str2;
        String str3;
        String str4;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7786a)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7786a aVar = (CrashlyticsReport.AbstractC7785d.AbstractC7786a) obj;
        if (!this.f18174a.equals(aVar.mo7577d()) || !this.f18175b.equals(aVar.mo7574g()) || ((str = this.f18176c) != null ? !str.equals(aVar.mo7578c()) : aVar.mo7578c() != null) || ((bVar = this.f18177d) != null ? !bVar.equals(aVar.mo7575f()) : aVar.mo7575f() != null) || ((str2 = this.f18178e) != null ? !str2.equals(aVar.mo7576e()) : aVar.mo7576e() != null) || ((str3 = this.f18179f) != null ? !str3.equals(aVar.mo7580a()) : aVar.mo7580a() != null) || ((str4 = this.f18180g) != null ? !str4.equals(aVar.mo7579b()) : aVar.mo7579b() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a
    /* renamed from: f */
    public CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b mo7575f() {
        return this.f18177d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7786a
    /* renamed from: g */
    public String mo7574g() {
        return this.f18175b;
    }

    public int hashCode() {
        int hashCode = this.f18174a.hashCode();
        int hashCode2 = this.f18175b.hashCode();
        String str = this.f18176c;
        int i = 0;
        int hashCode3 = str == null ? 0 : str.hashCode();
        CrashlyticsReport.AbstractC7785d.AbstractC7786a.AbstractC7788b bVar = this.f18177d;
        int hashCode4 = bVar == null ? 0 : bVar.hashCode();
        String str2 = this.f18178e;
        int hashCode5 = str2 == null ? 0 : str2.hashCode();
        String str3 = this.f18179f;
        int hashCode6 = str3 == null ? 0 : str3.hashCode();
        String str4 = this.f18180g;
        if (str4 != null) {
            i = str4.hashCode();
        }
        return ((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i;
    }

    public String toString() {
        return "Application{identifier=" + this.f18174a + ", version=" + this.f18175b + ", displayVersion=" + this.f18176c + ", organization=" + this.f18177d + ", installationUuid=" + this.f18178e + ", developmentPlatform=" + this.f18179f + ", developmentPlatformVersion=" + this.f18180g + "}";
    }
}
