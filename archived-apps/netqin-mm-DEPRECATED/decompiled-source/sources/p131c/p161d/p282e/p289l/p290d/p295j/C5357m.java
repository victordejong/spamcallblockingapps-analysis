package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.m */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/m.class */
public final class C5357m extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a {

    /* renamed from: a */
    public final long f18233a;

    /* renamed from: b */
    public final long f18234b;

    /* renamed from: c */
    public final String f18235c;

    /* renamed from: d */
    public final String f18236d;

    /* renamed from: c.d.e.l.d.j.m$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/m$b.class */
    public static final class C5359b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a {

        /* renamed from: a */
        public Long f18237a;

        /* renamed from: b */
        public Long f18238b;

        /* renamed from: c */
        public String f18239c;

        /* renamed from: d */
        public String f18240d;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a mo7501a(long j) {
            this.f18237a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a mo7500a(String str) {
            if (str != null) {
                this.f18239c = str;
                return this;
            }
            throw new NullPointerException("Null name");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a mo7502a() {
            String str = "";
            if (this.f18237a == null) {
                str = " baseAddress";
            }
            String str2 = str;
            if (this.f18238b == null) {
                str2 = str + " size";
            }
            String str3 = str2;
            if (this.f18239c == null) {
                str3 = str2 + " name";
            }
            if (str3.isEmpty()) {
                return new C5357m(this.f18237a.longValue(), this.f18238b.longValue(), this.f18239c, this.f18240d);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a mo7498b(long j) {
            this.f18238b = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a.AbstractC7797a mo7497b(String str) {
            this.f18240d = str;
            return this;
        }
    }

    public C5357m(long j, long j2, String str, String str2) {
        this.f18233a = j;
        this.f18234b = j2;
        this.f18235c = str;
        this.f18236d = str2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a
    /* renamed from: a */
    public long mo7508a() {
        return this.f18233a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a
    /* renamed from: b */
    public String mo7507b() {
        return this.f18235c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a
    /* renamed from: c */
    public long mo7506c() {
        return this.f18234b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a
    /* renamed from: d */
    public String mo7505d() {
        return this.f18236d;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a aVar = (CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7793a.AbstractC7795b.AbstractC7796a) obj;
        if (this.f18233a != aVar.mo7508a() || this.f18234b != aVar.mo7506c() || !this.f18235c.equals(aVar.mo7507b()) || ((str = this.f18236d) != null ? !str.equals(aVar.mo7505d()) : aVar.mo7505d() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f18233a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f18234b;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        int hashCode = this.f18235c.hashCode();
        String str = this.f18236d;
        return (str == null ? 0 : str.hashCode()) ^ ((((((i ^ 1000003) * 1000003) ^ i2) * 1000003) ^ hashCode) * 1000003);
    }

    public String toString() {
        return "BinaryImage{baseAddress=" + this.f18233a + ", size=" + this.f18234b + ", name=" + this.f18235c + ", uuid=" + this.f18236d + "}";
    }
}
