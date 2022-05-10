package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/b.class */
public final class C5326b extends CrashlyticsReport {

    /* renamed from: b */
    public final String f18124b;

    /* renamed from: c */
    public final String f18125c;

    /* renamed from: d */
    public final int f18126d;

    /* renamed from: e */
    public final String f18127e;

    /* renamed from: f */
    public final String f18128f;

    /* renamed from: g */
    public final String f18129g;

    /* renamed from: h */
    public final CrashlyticsReport.AbstractC7785d f18130h;

    /* renamed from: i */
    public final CrashlyticsReport.AbstractC7781c f18131i;

    /* renamed from: c.d.e.l.d.j.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/b$b.class */
    public static final class C5328b extends CrashlyticsReport.AbstractC7778a {

        /* renamed from: a */
        public String f18132a;

        /* renamed from: b */
        public String f18133b;

        /* renamed from: c */
        public Integer f18134c;

        /* renamed from: d */
        public String f18135d;

        /* renamed from: e */
        public String f18136e;

        /* renamed from: f */
        public String f18137f;

        /* renamed from: g */
        public CrashlyticsReport.AbstractC7785d f18138g;

        /* renamed from: h */
        public CrashlyticsReport.AbstractC7781c f18139h;

        public C5328b() {
        }

        public C5328b(CrashlyticsReport crashlyticsReport) {
            this.f18132a = crashlyticsReport.mo7629g();
            this.f18133b = crashlyticsReport.mo7633c();
            this.f18134c = Integer.valueOf(crashlyticsReport.mo7630f());
            this.f18135d = crashlyticsReport.mo7632d();
            this.f18136e = crashlyticsReport.mo7638a();
            this.f18137f = crashlyticsReport.mo7634b();
            this.f18138g = crashlyticsReport.mo7628h();
            this.f18139h = crashlyticsReport.mo7631e();
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7778a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7778a mo7622a(int i) {
            this.f18134c = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7778a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7778a mo7621a(CrashlyticsReport.AbstractC7781c cVar) {
            this.f18139h = cVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7778a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7778a mo7620a(CrashlyticsReport.AbstractC7785d dVar) {
            this.f18138g = dVar;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7778a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7778a mo7619a(String str) {
            if (str != null) {
                this.f18136e = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7778a
        /* renamed from: a */
        public CrashlyticsReport mo7623a() {
            String str = "";
            if (this.f18132a == null) {
                str = " sdkVersion";
            }
            String str2 = str;
            if (this.f18133b == null) {
                str2 = str + " gmpAppId";
            }
            String str3 = str2;
            if (this.f18134c == null) {
                str3 = str2 + " platform";
            }
            String str4 = str3;
            if (this.f18135d == null) {
                str4 = str3 + " installationUuid";
            }
            String str5 = str4;
            if (this.f18136e == null) {
                str5 = str4 + " buildVersion";
            }
            String str6 = str5;
            if (this.f18137f == null) {
                str6 = str5 + " displayVersion";
            }
            if (str6.isEmpty()) {
                return new C5326b(this.f18132a, this.f18133b, this.f18134c.intValue(), this.f18135d, this.f18136e, this.f18137f, this.f18138g, this.f18139h);
            }
            throw new IllegalStateException("Missing required properties:" + str6);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7778a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7778a mo7618b(String str) {
            if (str != null) {
                this.f18137f = str;
                return this;
            }
            throw new NullPointerException("Null displayVersion");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7778a
        /* renamed from: c */
        public CrashlyticsReport.AbstractC7778a mo7617c(String str) {
            if (str != null) {
                this.f18133b = str;
                return this;
            }
            throw new NullPointerException("Null gmpAppId");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7778a
        /* renamed from: d */
        public CrashlyticsReport.AbstractC7778a mo7616d(String str) {
            if (str != null) {
                this.f18135d = str;
                return this;
            }
            throw new NullPointerException("Null installationUuid");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7778a
        /* renamed from: e */
        public CrashlyticsReport.AbstractC7778a mo7615e(String str) {
            if (str != null) {
                this.f18132a = str;
                return this;
            }
            throw new NullPointerException("Null sdkVersion");
        }
    }

    public C5326b(String str, String str2, int i, String str3, String str4, String str5, CrashlyticsReport.AbstractC7785d dVar, CrashlyticsReport.AbstractC7781c cVar) {
        this.f18124b = str;
        this.f18125c = str2;
        this.f18126d = i;
        this.f18127e = str3;
        this.f18128f = str4;
        this.f18129g = str5;
        this.f18130h = dVar;
        this.f18131i = cVar;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    /* renamed from: a */
    public String mo7638a() {
        return this.f18128f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    /* renamed from: b */
    public String mo7634b() {
        return this.f18129g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    /* renamed from: c */
    public String mo7633c() {
        return this.f18125c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    /* renamed from: d */
    public String mo7632d() {
        return this.f18127e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    /* renamed from: e */
    public CrashlyticsReport.AbstractC7781c mo7631e() {
        return this.f18131i;
    }

    public boolean equals(Object obj) {
        CrashlyticsReport.AbstractC7785d dVar;
        CrashlyticsReport.AbstractC7781c cVar;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport)) {
            return false;
        }
        CrashlyticsReport crashlyticsReport = (CrashlyticsReport) obj;
        if (!this.f18124b.equals(crashlyticsReport.mo7629g()) || !this.f18125c.equals(crashlyticsReport.mo7633c()) || this.f18126d != crashlyticsReport.mo7630f() || !this.f18127e.equals(crashlyticsReport.mo7632d()) || !this.f18128f.equals(crashlyticsReport.mo7638a()) || !this.f18129g.equals(crashlyticsReport.mo7634b()) || ((dVar = this.f18130h) != null ? !dVar.equals(crashlyticsReport.mo7628h()) : crashlyticsReport.mo7628h() != null) || ((cVar = this.f18131i) != null ? !cVar.equals(crashlyticsReport.mo7631e()) : crashlyticsReport.mo7631e() != null)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    /* renamed from: f */
    public int mo7630f() {
        return this.f18126d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    /* renamed from: g */
    public String mo7629g() {
        return this.f18124b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    /* renamed from: h */
    public CrashlyticsReport.AbstractC7785d mo7628h() {
        return this.f18130h;
    }

    public int hashCode() {
        int hashCode = this.f18124b.hashCode();
        int hashCode2 = this.f18125c.hashCode();
        int i = this.f18126d;
        int hashCode3 = this.f18127e.hashCode();
        int hashCode4 = this.f18128f.hashCode();
        int hashCode5 = this.f18129g.hashCode();
        CrashlyticsReport.AbstractC7785d dVar = this.f18130h;
        int i2 = 0;
        int hashCode6 = dVar == null ? 0 : dVar.hashCode();
        CrashlyticsReport.AbstractC7781c cVar = this.f18131i;
        if (cVar != null) {
            i2 = cVar.hashCode();
        }
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ hashCode5) * 1000003) ^ hashCode6) * 1000003) ^ i2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport
    /* renamed from: j */
    public CrashlyticsReport.AbstractC7778a mo7626j() {
        return new C5328b(this);
    }

    public String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f18124b + ", gmpAppId=" + this.f18125c + ", platform=" + this.f18126d + ", installationUuid=" + this.f18127e + ", buildVersion=" + this.f18128f + ", displayVersion=" + this.f18129g + ", session=" + this.f18130h + ", ndkPayload=" + this.f18131i + "}";
    }
}
