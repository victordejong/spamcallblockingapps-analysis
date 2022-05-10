package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.o */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/o.class */
public final class C5363o extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d {

    /* renamed from: a */
    public final String f18251a;

    /* renamed from: b */
    public final String f18252b;

    /* renamed from: c */
    public final long f18253c;

    /* renamed from: c.d.e.l.d.j.o$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/o$b.class */
    public static final class C5365b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a {

        /* renamed from: a */
        public String f18254a;

        /* renamed from: b */
        public String f18255b;

        /* renamed from: c */
        public Long f18256c;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a mo7474a(long j) {
            this.f18256c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a mo7473a(String str) {
            if (str != null) {
                this.f18255b = str;
                return this;
            }
            throw new NullPointerException("Null code");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d mo7475a() {
            String str = "";
            if (this.f18254a == null) {
                str = " name";
            }
            String str2 = str;
            if (this.f18255b == null) {
                str2 = str + " code";
            }
            String str3 = str2;
            if (this.f18256c == null) {
                str3 = str2 + " address";
            }
            if (str3.isEmpty()) {
                return new C5363o(this.f18254a, this.f18255b, this.f18256c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d.AbstractC7802a mo7472b(String str) {
            if (str != null) {
                this.f18254a = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }
    }

    public C5363o(String str, String str2, long j) {
        this.f18251a = str;
        this.f18252b = str2;
        this.f18253c = j;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d
    /* renamed from: a */
    public long mo7479a() {
        return this.f18253c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d
    /* renamed from: b */
    public String mo7478b() {
        return this.f18252b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d
    /* renamed from: c */
    public String mo7477c() {
        return this.f18251a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d dVar = (CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7801d) obj;
        if (!this.f18251a.equals(dVar.mo7477c()) || !this.f18252b.equals(dVar.mo7478b()) || this.f18253c != dVar.mo7479a()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f18251a.hashCode();
        int hashCode2 = this.f18252b.hashCode();
        long j = this.f18253c;
        return ((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "Signal{name=" + this.f18251a + ", code=" + this.f18252b + ", address=" + this.f18253c + "}";
    }
}
