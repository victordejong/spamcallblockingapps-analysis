package com.criteo.publisher.p027t;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.criteo.publisher.p027t.AbstractC2127m;
/* renamed from: com.criteo.publisher.t.a */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/a.class */
public abstract class AbstractC2099a extends AbstractC2127m {

    /* renamed from: a */
    public final Long f2346a;

    /* renamed from: b */
    public final Long f2347b;

    /* renamed from: c */
    public final boolean f2348c;

    /* renamed from: d */
    public final boolean f2349d;

    /* renamed from: e */
    public final Long f2350e;

    /* renamed from: f */
    public final String f2351f;

    /* renamed from: g */
    public final String f2352g;

    /* renamed from: h */
    public final boolean f2353h;

    /* renamed from: com.criteo.publisher.t.a$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/a$b.class */
    public static class C2101b extends AbstractC2127m.AbstractC2128a {

        /* renamed from: a */
        public Long f2354a;

        /* renamed from: b */
        public Long f2355b;

        /* renamed from: c */
        public Boolean f2356c;

        /* renamed from: d */
        public Boolean f2357d;

        /* renamed from: e */
        public Long f2358e;

        /* renamed from: f */
        public String f2359f;

        /* renamed from: g */
        public String f2360g;

        /* renamed from: h */
        public Boolean f2361h;

        public C2101b() {
        }

        public C2101b(AbstractC2127m mVar) {
            this.f2354a = mVar.mo35674b();
            this.f2355b = mVar.mo35677a();
            this.f2356c = Boolean.valueOf(mVar.mo35669g());
            this.f2357d = Boolean.valueOf(mVar.mo35670f());
            this.f2358e = mVar.mo35673c();
            this.f2359f = mVar.mo35672d();
            this.f2360g = mVar.mo35671e();
            this.f2361h = Boolean.valueOf(mVar.mo35668h());
        }

        @Override // com.criteo.publisher.p027t.AbstractC2127m.AbstractC2128a
        /* renamed from: a */
        public AbstractC2127m.AbstractC2128a mo35664a(Long l) {
            this.f2355b = l;
            return this;
        }

        @Override // com.criteo.publisher.p027t.AbstractC2127m.AbstractC2128a
        /* renamed from: a */
        public AbstractC2127m.AbstractC2128a mo35663a(String str) {
            if (str != null) {
                this.f2359f = str;
                return this;
            }
            throw new NullPointerException("Null impressionId");
        }

        @Override // com.criteo.publisher.p027t.AbstractC2127m.AbstractC2128a
        /* renamed from: a */
        public AbstractC2127m.AbstractC2128a mo35662a(boolean z) {
            this.f2357d = Boolean.valueOf(z);
            return this;
        }

        @Override // com.criteo.publisher.p027t.AbstractC2127m.AbstractC2128a
        /* renamed from: a */
        public AbstractC2127m mo35665a() {
            String str = "";
            if (this.f2356c == null) {
                str = " cdbCallTimeout";
            }
            String str2 = str;
            if (this.f2357d == null) {
                str2 = str + " cachedBidUsed";
            }
            String str3 = str2;
            if (this.f2359f == null) {
                str3 = str2 + " impressionId";
            }
            String str4 = str3;
            if (this.f2361h == null) {
                str4 = str3 + " readyToSend";
            }
            if (str4.isEmpty()) {
                return new C2105e(this.f2354a, this.f2355b, this.f2356c.booleanValue(), this.f2357d.booleanValue(), this.f2358e, this.f2359f, this.f2360g, this.f2361h.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // com.criteo.publisher.p027t.AbstractC2127m.AbstractC2128a
        /* renamed from: b */
        public AbstractC2127m.AbstractC2128a mo35661b(Long l) {
            this.f2354a = l;
            return this;
        }

        @Override // com.criteo.publisher.p027t.AbstractC2127m.AbstractC2128a
        /* renamed from: b */
        public AbstractC2127m.AbstractC2128a mo35660b(String str) {
            this.f2360g = str;
            return this;
        }

        @Override // com.criteo.publisher.p027t.AbstractC2127m.AbstractC2128a
        /* renamed from: b */
        public AbstractC2127m.AbstractC2128a mo35659b(boolean z) {
            this.f2356c = Boolean.valueOf(z);
            return this;
        }

        @Override // com.criteo.publisher.p027t.AbstractC2127m.AbstractC2128a
        /* renamed from: c */
        public AbstractC2127m.AbstractC2128a mo35658c(Long l) {
            this.f2358e = l;
            return this;
        }

        @Override // com.criteo.publisher.p027t.AbstractC2127m.AbstractC2128a
        /* renamed from: c */
        public AbstractC2127m.AbstractC2128a mo35657c(boolean z) {
            this.f2361h = Boolean.valueOf(z);
            return this;
        }
    }

    public AbstractC2099a(@Nullable Long l, @Nullable Long l2, boolean z, boolean z2, @Nullable Long l3, String str, @Nullable String str2, boolean z3) {
        this.f2346a = l;
        this.f2347b = l2;
        this.f2348c = z;
        this.f2349d = z2;
        this.f2350e = l3;
        if (str != null) {
            this.f2351f = str;
            this.f2352g = str2;
            this.f2353h = z3;
            return;
        }
        throw new NullPointerException("Null impressionId");
    }

    @Override // com.criteo.publisher.p027t.AbstractC2127m
    @Nullable
    /* renamed from: a */
    public Long mo35677a() {
        return this.f2347b;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2127m
    @Nullable
    /* renamed from: b */
    public Long mo35674b() {
        return this.f2346a;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2127m
    @Nullable
    /* renamed from: c */
    public Long mo35673c() {
        return this.f2350e;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2127m
    @NonNull
    /* renamed from: d */
    public String mo35672d() {
        return this.f2351f;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2127m
    @Nullable
    /* renamed from: e */
    public String mo35671e() {
        return this.f2352g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0090, code lost:
        if (r3.f2351f.equals(r0.mo35672d()) == false) goto L_0x00bf;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0099, code lost:
        if ((r0 = r3.f2352g) != null) goto L_0x00a6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b9, code lost:
        if (r3.f2353h != r0.mo35668h()) goto L_0x00bf;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof com.criteo.publisher.p027t.AbstractC2127m
            if (r0 == 0) goto L_0x00c3
            r0 = r4
            com.criteo.publisher.t.m r0 = (com.criteo.publisher.p027t.AbstractC2127m) r0
            r4 = r0
            r0 = r3
            java.lang.Long r0 = r0.f2346a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0028
            r0 = r4
            java.lang.Long r0 = r0.mo35674b()
            if (r0 != 0) goto L_0x00bf
            goto L_0x0033
        L_0x0028:
            r0 = r6
            r1 = r4
            java.lang.Long r1 = r1.mo35674b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bf
        L_0x0033:
            r0 = r3
            java.lang.Long r0 = r0.f2347b
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0046
            r0 = r4
            java.lang.Long r0 = r0.mo35677a()
            if (r0 != 0) goto L_0x00bf
            goto L_0x0051
        L_0x0046:
            r0 = r6
            r1 = r4
            java.lang.Long r1 = r1.mo35677a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bf
        L_0x0051:
            r0 = r3
            boolean r0 = r0.f2348c
            r1 = r4
            boolean r1 = r1.mo35669g()
            if (r0 != r1) goto L_0x00bf
            r0 = r3
            boolean r0 = r0.f2349d
            r1 = r4
            boolean r1 = r1.mo35670f()
            if (r0 != r1) goto L_0x00bf
            r0 = r3
            java.lang.Long r0 = r0.f2350e
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x007a
            r0 = r4
            java.lang.Long r0 = r0.mo35673c()
            if (r0 != 0) goto L_0x00bf
            goto L_0x0085
        L_0x007a:
            r0 = r6
            r1 = r4
            java.lang.Long r1 = r1.mo35673c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bf
        L_0x0085:
            r0 = r3
            java.lang.String r0 = r0.f2351f
            r1 = r4
            java.lang.String r1 = r1.mo35672d()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bf
            r0 = r3
            java.lang.String r0 = r0.f2352g
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x00a6
            r0 = r4
            java.lang.String r0 = r0.mo35671e()
            if (r0 != 0) goto L_0x00bf
            goto L_0x00b1
        L_0x00a6:
            r0 = r6
            r1 = r4
            java.lang.String r1 = r1.mo35671e()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x00bf
        L_0x00b1:
            r0 = r3
            boolean r0 = r0.f2353h
            r1 = r4
            boolean r1 = r1.mo35668h()
            if (r0 != r1) goto L_0x00bf
            goto L_0x00c1
        L_0x00bf:
            r0 = 0
            r5 = r0
        L_0x00c1:
            r0 = r5
            return r0
        L_0x00c3:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.criteo.publisher.p027t.AbstractC2099a.equals(java.lang.Object):boolean");
    }

    @Override // com.criteo.publisher.p027t.AbstractC2127m
    /* renamed from: f */
    public boolean mo35670f() {
        return this.f2349d;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2127m
    /* renamed from: g */
    public boolean mo35669g() {
        return this.f2348c;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2127m
    /* renamed from: h */
    public boolean mo35668h() {
        return this.f2353h;
    }

    public int hashCode() {
        Long l = this.f2346a;
        int i = 0;
        int hashCode = l == null ? 0 : l.hashCode();
        Long l2 = this.f2347b;
        int hashCode2 = l2 == null ? 0 : l2.hashCode();
        int i2 = 1231;
        int i3 = this.f2348c ? 1231 : 1237;
        int i4 = this.f2349d ? 1231 : 1237;
        Long l3 = this.f2350e;
        int hashCode3 = l3 == null ? 0 : l3.hashCode();
        int hashCode4 = this.f2351f.hashCode();
        String str = this.f2352g;
        if (str != null) {
            i = str.hashCode();
        }
        if (!this.f2353h) {
            i2 = 1237;
        }
        return ((((((((((((((hashCode ^ 1000003) * 1000003) ^ hashCode2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ hashCode3) * 1000003) ^ hashCode4) * 1000003) ^ i) * 1000003) ^ i2;
    }

    @Override // com.criteo.publisher.p027t.AbstractC2127m
    /* renamed from: i */
    public AbstractC2127m.AbstractC2128a mo35667i() {
        return new C2101b(this);
    }

    public String toString() {
        return "Metric{cdbCallStartTimestamp=" + this.f2346a + ", cdbCallEndTimestamp=" + this.f2347b + ", cdbCallTimeout=" + this.f2348c + ", cachedBidUsed=" + this.f2349d + ", elapsedTimestamp=" + this.f2350e + ", impressionId=" + this.f2351f + ", requestGroupId=" + this.f2352g + ", readyToSend=" + this.f2353h + CssParser.BLOCK_END;
    }
}
