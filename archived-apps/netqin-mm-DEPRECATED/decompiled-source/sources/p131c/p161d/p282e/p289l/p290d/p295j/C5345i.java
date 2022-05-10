package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/i.class */
public final class C5345i extends CrashlyticsReport.AbstractC7785d.AbstractC7790c {

    /* renamed from: a */
    public final int f18189a;

    /* renamed from: b */
    public final String f18190b;

    /* renamed from: c */
    public final int f18191c;

    /* renamed from: d */
    public final long f18192d;

    /* renamed from: e */
    public final long f18193e;

    /* renamed from: f */
    public final boolean f18194f;

    /* renamed from: g */
    public final int f18195g;

    /* renamed from: h */
    public final String f18196h;

    /* renamed from: i */
    public final String f18197i;

    /* renamed from: c.d.e.l.d.j.i$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/i$b.class */
    public static final class C5347b extends CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a {

        /* renamed from: a */
        public Integer f18198a;

        /* renamed from: b */
        public String f18199b;

        /* renamed from: c */
        public Integer f18200c;

        /* renamed from: d */
        public Long f18201d;

        /* renamed from: e */
        public Long f18202e;

        /* renamed from: f */
        public Boolean f18203f;

        /* renamed from: g */
        public Integer f18204g;

        /* renamed from: h */
        public String f18205h;

        /* renamed from: i */
        public String f18206i;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a mo7540a(int i) {
            this.f18198a = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a mo7539a(long j) {
            this.f18202e = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a mo7538a(String str) {
            if (str != null) {
                this.f18205h = str;
                return this;
            }
            throw new NullPointerException("Null manufacturer");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a mo7537a(boolean z) {
            this.f18203f = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c mo7541a() {
            String str = "";
            if (this.f18198a == null) {
                str = " arch";
            }
            String str2 = str;
            if (this.f18199b == null) {
                str2 = str + " model";
            }
            String str3 = str2;
            if (this.f18200c == null) {
                str3 = str2 + " cores";
            }
            String str4 = str3;
            if (this.f18201d == null) {
                str4 = str3 + " ram";
            }
            String str5 = str4;
            if (this.f18202e == null) {
                str5 = str4 + " diskSpace";
            }
            String str6 = str5;
            if (this.f18203f == null) {
                str6 = str5 + " simulator";
            }
            String str7 = str6;
            if (this.f18204g == null) {
                str7 = str6 + " state";
            }
            String str8 = str7;
            if (this.f18205h == null) {
                str8 = str7 + " manufacturer";
            }
            String str9 = str8;
            if (this.f18206i == null) {
                str9 = str8 + " modelClass";
            }
            if (str9.isEmpty()) {
                return new C5345i(this.f18198a.intValue(), this.f18199b, this.f18200c.intValue(), this.f18201d.longValue(), this.f18202e.longValue(), this.f18203f.booleanValue(), this.f18204g.intValue(), this.f18205h, this.f18206i);
            }
            throw new IllegalStateException("Missing required properties:" + str9);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a mo7536b(int i) {
            this.f18200c = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a mo7535b(long j) {
            this.f18201d = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a mo7534b(String str) {
            if (str != null) {
                this.f18199b = str;
                return this;
            }
            throw new NullPointerException("Null model");
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: c */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a mo7533c(int i) {
            this.f18204g = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a
        /* renamed from: c */
        public CrashlyticsReport.AbstractC7785d.AbstractC7790c.AbstractC7791a mo7532c(String str) {
            if (str != null) {
                this.f18206i = str;
                return this;
            }
            throw new NullPointerException("Null modelClass");
        }
    }

    public C5345i(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.f18189a = i;
        this.f18190b = str;
        this.f18191c = i2;
        this.f18192d = j;
        this.f18193e = j2;
        this.f18194f = z;
        this.f18195g = i3;
        this.f18196h = str2;
        this.f18197i = str3;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c
    /* renamed from: a */
    public int mo7551a() {
        return this.f18189a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c
    /* renamed from: b */
    public int mo7550b() {
        return this.f18191c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c
    /* renamed from: c */
    public long mo7549c() {
        return this.f18193e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c
    /* renamed from: d */
    public String mo7548d() {
        return this.f18196h;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c
    /* renamed from: e */
    public String mo7547e() {
        return this.f18190b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.AbstractC7785d.AbstractC7790c)) {
            return false;
        }
        CrashlyticsReport.AbstractC7785d.AbstractC7790c cVar = (CrashlyticsReport.AbstractC7785d.AbstractC7790c) obj;
        if (!(this.f18189a == cVar.mo7551a() && this.f18190b.equals(cVar.mo7547e()) && this.f18191c == cVar.mo7550b() && this.f18192d == cVar.mo7545g() && this.f18193e == cVar.mo7549c() && this.f18194f == cVar.mo7543i() && this.f18195g == cVar.mo7544h() && this.f18196h.equals(cVar.mo7548d()) && this.f18197i.equals(cVar.mo7546f()))) {
            z = false;
        }
        return z;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c
    /* renamed from: f */
    public String mo7546f() {
        return this.f18197i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c
    /* renamed from: g */
    public long mo7545g() {
        return this.f18192d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c
    /* renamed from: h */
    public int mo7544h() {
        return this.f18195g;
    }

    public int hashCode() {
        int i = this.f18189a;
        int hashCode = this.f18190b.hashCode();
        int i2 = this.f18191c;
        long j = this.f18192d;
        int i3 = (int) (j ^ (j >>> 32));
        long j2 = this.f18193e;
        return ((((((((((((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f18194f ? 1231 : 1237)) * 1000003) ^ this.f18195g) * 1000003) ^ this.f18196h.hashCode()) * 1000003) ^ this.f18197i.hashCode();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7790c
    /* renamed from: i */
    public boolean mo7543i() {
        return this.f18194f;
    }

    public String toString() {
        return "Device{arch=" + this.f18189a + ", model=" + this.f18190b + ", cores=" + this.f18191c + ", ram=" + this.f18192d + ", diskSpace=" + this.f18193e + ", simulator=" + this.f18194f + ", state=" + this.f18195g + ", manufacturer=" + this.f18196h + ", modelClass=" + this.f18197i + "}";
    }
}
