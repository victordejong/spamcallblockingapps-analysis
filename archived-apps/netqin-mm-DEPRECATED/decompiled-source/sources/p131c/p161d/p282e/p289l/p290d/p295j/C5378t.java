package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.t */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/t.class */
public final class C5378t extends CrashlyticsReport.AbstractC7785d.AbstractC7812e {

    /* renamed from: a */
    public final int f18287a;

    /* renamed from: b */
    public final String f18288b;

    /* renamed from: c */
    public final String f18289c;

    /* renamed from: d */
    public final boolean f18290d;

    /* renamed from: c.d.e.l.d.j.t$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/t$b.class */
    public static final class C5380b extends CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a {

        /* renamed from: a */
        public Integer f18291a;

        /* renamed from: b */
        public String f18292b;

        /* renamed from: c */
        public String f18293c;

        /* renamed from: d */
        public Boolean f18294d;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a mo7421a(int i) {
            this.f18291a = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a mo7420a(String str) {
            if (str != null) {
                this.f18293c = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a mo7419a(boolean z) {
            this.f18294d = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7812e mo7422a() {
            String str = "";
            if (this.f18291a == null) {
                str = " platform";
            }
            String str2 = str;
            if (this.f18292b == null) {
                str2 = str + " version";
            }
            String str3 = str2;
            if (this.f18293c == null) {
                str3 = str2 + " buildVersion";
            }
            String str4 = str3;
            if (this.f18294d == null) {
                str4 = str3 + " jailbroken";
            }
            if (str4.isEmpty()) {
                return new C5378t(this.f18291a.intValue(), this.f18292b, this.f18293c, this.f18294d.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7812e.AbstractC7813a mo7418b(String str) {
            if (str != null) {
                this.f18292b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    public C5378t(int i, String str, String str2, boolean z) {
        this.f18287a = i;
        this.f18288b = str;
        this.f18289c = str2;
        this.f18290d = z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7812e
    /* renamed from: a */
    public String mo7427a() {
        return this.f18289c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7812e
    /* renamed from: b */
    public int mo7426b() {
        return this.f18287a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7812e
    /* renamed from: c */
    public String mo7425c() {
        return this.f18288b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7812e
    /* renamed from: d */
    public boolean mo7424d() {
        return this.f18290d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7812e)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7812e eVar = (CrashlyticsReport.AbstractC7785d.AbstractC7812e) obj;
        if (this.f18287a != eVar.mo7426b() || !this.f18288b.equals(eVar.mo7425c()) || !this.f18289c.equals(eVar.mo7427a()) || this.f18290d != eVar.mo7424d()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f18287a;
        int hashCode = this.f18288b.hashCode();
        return ((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ this.f18289c.hashCode()) * 1000003) ^ (this.f18290d ? 1231 : 1237);
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f18287a + ", version=" + this.f18288b + ", buildVersion=" + this.f18289c + ", jailbroken=" + this.f18290d + "}";
    }
}
