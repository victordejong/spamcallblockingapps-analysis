package p131c.p161d.p282e.p289l.p290d.p295j;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
/* renamed from: c.d.e.l.d.j.r */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/r.class */
public final class C5372r extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c {

    /* renamed from: a */
    public final Double f18273a;

    /* renamed from: b */
    public final int f18274b;

    /* renamed from: c */
    public final boolean f18275c;

    /* renamed from: d */
    public final int f18276d;

    /* renamed from: e */
    public final long f18277e;

    /* renamed from: f */
    public final long f18278f;

    /* renamed from: c.d.e.l.d.j.r$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/j/r$b.class */
    public static final class C5374b extends CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a {

        /* renamed from: a */
        public Double f18279a;

        /* renamed from: b */
        public Integer f18280b;

        /* renamed from: c */
        public Boolean f18281c;

        /* renamed from: d */
        public Integer f18282d;

        /* renamed from: e */
        public Long f18283e;

        /* renamed from: f */
        public Long f18284f;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a mo7437a(int i) {
            this.f18280b = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a mo7436a(long j) {
            this.f18284f = Long.valueOf(j);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a mo7435a(Double d) {
            this.f18279a = d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a mo7434a(boolean z) {
            this.f18281c = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a
        /* renamed from: a */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c mo7438a() {
            String str = "";
            if (this.f18280b == null) {
                str = " batteryVelocity";
            }
            String str2 = str;
            if (this.f18281c == null) {
                str2 = str + " proximityOn";
            }
            String str3 = str2;
            if (this.f18282d == null) {
                str3 = str2 + " orientation";
            }
            String str4 = str3;
            if (this.f18283e == null) {
                str4 = str3 + " ramUsed";
            }
            String str5 = str4;
            if (this.f18284f == null) {
                str5 = str4 + " diskUsed";
            }
            if (str5.isEmpty()) {
                return new C5372r(this.f18279a, this.f18280b.intValue(), this.f18281c.booleanValue(), this.f18282d.intValue(), this.f18283e.longValue(), this.f18284f.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a mo7433b(int i) {
            this.f18282d = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a
        /* renamed from: b */
        public CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c.AbstractC7809a mo7432b(long j) {
            this.f18283e = Long.valueOf(j);
            return this;
        }
    }

    public C5372r(Double d, int i, boolean z, int i2, long j, long j2) {
        this.f18273a = d;
        this.f18274b = i;
        this.f18275c = z;
        this.f18276d = i2;
        this.f18277e = j;
        this.f18278f = j2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c
    /* renamed from: a */
    public Double mo7445a() {
        return this.f18273a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c
    /* renamed from: b */
    public int mo7444b() {
        return this.f18274b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c
    /* renamed from: c */
    public long mo7443c() {
        return this.f18278f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c
    /* renamed from: d */
    public int mo7442d() {
        return this.f18276d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c
    /* renamed from: e */
    public long mo7441e() {
        return this.f18277e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
        if (r5.f18278f == r0.mo7443c()) goto L_0x0071;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = r5
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r6
            boolean r0 = r0 instanceof com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c
            if (r0 == 0) goto L_0x0073
            r0 = r6
            com.google.firebase.crashlytics.internal.model.CrashlyticsReport$d$d$c r0 = (com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c) r0
            r8 = r0
            r0 = r5
            java.lang.Double r0 = r0.f18273a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0028
            r0 = r8
            java.lang.Double r0 = r0.mo7445a()
            if (r0 != 0) goto L_0x006f
            goto L_0x0033
        L_0x0028:
            r0 = r6
            r1 = r8
            java.lang.Double r1 = r1.mo7445a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x006f
        L_0x0033:
            r0 = r5
            int r0 = r0.f18274b
            r1 = r8
            int r1 = r1.mo7444b()
            if (r0 != r1) goto L_0x006f
            r0 = r5
            boolean r0 = r0.f18275c
            r1 = r8
            boolean r1 = r1.mo7440f()
            if (r0 != r1) goto L_0x006f
            r0 = r5
            int r0 = r0.f18276d
            r1 = r8
            int r1 = r1.mo7442d()
            if (r0 != r1) goto L_0x006f
            r0 = r5
            long r0 = r0.f18277e
            r1 = r8
            long r1 = r1.mo7441e()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006f
            r0 = r5
            long r0 = r0.f18278f
            r1 = r8
            long r1 = r1.mo7443c()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006f
            goto L_0x0071
        L_0x006f:
            r0 = 0
            r7 = r0
        L_0x0071:
            r0 = r7
            return r0
        L_0x0073:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p282e.p289l.p290d.p295j.C5372r.equals(java.lang.Object):boolean");
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.AbstractC7785d.AbstractC7792d.AbstractC7808c
    /* renamed from: f */
    public boolean mo7440f() {
        return this.f18275c;
    }

    public int hashCode() {
        Double d = this.f18273a;
        int hashCode = d == null ? 0 : d.hashCode();
        int i = this.f18274b;
        int i2 = this.f18275c ? 1231 : 1237;
        int i3 = this.f18276d;
        long j = this.f18277e;
        int i4 = (int) (j ^ (j >>> 32));
        long j2 = this.f18278f;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f18273a + ", batteryVelocity=" + this.f18274b + ", proximityOn=" + this.f18275c + ", orientation=" + this.f18276d + ", ramUsed=" + this.f18277e + ", diskUsed=" + this.f18278f + "}";
    }
}
