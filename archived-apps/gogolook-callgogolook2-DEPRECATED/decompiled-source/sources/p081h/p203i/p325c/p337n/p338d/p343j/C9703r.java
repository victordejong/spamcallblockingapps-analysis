package p081h.p203i.p325c.p337n.p338d.p343j;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.j.r */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/r.class */
public final class C9703r extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c {

    /* renamed from: a */
    public final Double f22124a;

    /* renamed from: b */
    public final int f22125b;

    /* renamed from: c */
    public final boolean f22126c;

    /* renamed from: d */
    public final int f22127d;

    /* renamed from: e */
    public final long f22128e;

    /* renamed from: f */
    public final long f22129f;

    /* renamed from: h.i.c.n.d.j.r$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/j/r$b.class */
    public static final class C9705b extends AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a {

        /* renamed from: a */
        public Double f22130a;

        /* renamed from: b */
        public Integer f22131b;

        /* renamed from: c */
        public Boolean f22132c;

        /* renamed from: d */
        public Integer f22133d;

        /* renamed from: e */
        public Long f22134e;

        /* renamed from: f */
        public Long f22135f;

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a mo14415a(int i) {
            this.f22131b = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a mo14414a(long j) {
            this.f22135f = Long.valueOf(j);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a mo14413a(Double d) {
            this.f22130a = d;
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a mo14412a(boolean z) {
            this.f22132c = Boolean.valueOf(z);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a
        /* renamed from: a */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c mo14416a() {
            String str = "";
            if (this.f22131b == null) {
                str = " batteryVelocity";
            }
            String str2 = str;
            if (this.f22132c == null) {
                str2 = str + " proximityOn";
            }
            String str3 = str2;
            if (this.f22133d == null) {
                str3 = str2 + " orientation";
            }
            String str4 = str3;
            if (this.f22134e == null) {
                str4 = str3 + " ramUsed";
            }
            String str5 = str4;
            if (this.f22135f == null) {
                str5 = str4 + " diskUsed";
            }
            if (str5.isEmpty()) {
                return new C9703r(this.f22130a, this.f22131b.intValue(), this.f22132c.booleanValue(), this.f22133d.intValue(), this.f22134e.longValue(), this.f22135f.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a mo14411b(int i) {
            this.f22133d = Integer.valueOf(i);
            return this;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a
        /* renamed from: b */
        public AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c.AbstractC9747a mo14410b(long j) {
            this.f22134e = Long.valueOf(j);
            return this;
        }
    }

    public C9703r(@Nullable Double d, int i, boolean z, int i2, long j, long j2) {
        this.f22124a = d;
        this.f22125b = i;
        this.f22126c = z;
        this.f22127d = i2;
        this.f22128e = j;
        this.f22129f = j2;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c
    @Nullable
    /* renamed from: a */
    public Double mo14423a() {
        return this.f22124a;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c
    /* renamed from: b */
    public int mo14422b() {
        return this.f22125b;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c
    /* renamed from: c */
    public long mo14421c() {
        return this.f22129f;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c
    /* renamed from: d */
    public int mo14420d() {
        return this.f22127d;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c
    /* renamed from: e */
    public long mo14419e() {
        return this.f22128e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
        if (r5.f22129f == r0.mo14421c()) goto L_0x0071;
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
            boolean r0 = r0 instanceof p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c
            if (r0 == 0) goto L_0x0073
            r0 = r6
            h.i.c.n.d.j.v$d$d$c r0 = (p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c) r0
            r6 = r0
            r0 = r5
            java.lang.Double r0 = r0.f22124a
            r8 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0028
            r0 = r6
            java.lang.Double r0 = r0.mo14423a()
            if (r0 != 0) goto L_0x006f
            goto L_0x0033
        L_0x0028:
            r0 = r8
            r1 = r6
            java.lang.Double r1 = r1.mo14423a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x006f
        L_0x0033:
            r0 = r5
            int r0 = r0.f22125b
            r1 = r6
            int r1 = r1.mo14422b()
            if (r0 != r1) goto L_0x006f
            r0 = r5
            boolean r0 = r0.f22126c
            r1 = r6
            boolean r1 = r1.mo14418f()
            if (r0 != r1) goto L_0x006f
            r0 = r5
            int r0 = r0.f22127d
            r1 = r6
            int r1 = r1.mo14420d()
            if (r0 != r1) goto L_0x006f
            r0 = r5
            long r0 = r0.f22128e
            r1 = r6
            long r1 = r1.mo14419e()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x006f
            r0 = r5
            long r0 = r0.f22129f
            r1 = r6
            long r1 = r1.mo14421c()
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p337n.p338d.p343j.C9703r.equals(java.lang.Object):boolean");
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v.AbstractC9723d.AbstractC9730d.AbstractC9746c
    /* renamed from: f */
    public boolean mo14418f() {
        return this.f22126c;
    }

    public int hashCode() {
        Double d = this.f22124a;
        int hashCode = d == null ? 0 : d.hashCode();
        int i = this.f22125b;
        int i2 = this.f22126c ? 1231 : 1237;
        int i3 = this.f22127d;
        long j = this.f22128e;
        int i4 = (int) (j ^ (j >>> 32));
        long j2 = this.f22129f;
        return ((((((((((hashCode ^ 1000003) * 1000003) ^ i) * 1000003) ^ i2) * 1000003) ^ i3) * 1000003) ^ i4) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f22124a + ", batteryVelocity=" + this.f22125b + ", proximityOn=" + this.f22126c + ", orientation=" + this.f22127d + ", ramUsed=" + this.f22128e + ", diskUsed=" + this.f22129f + CssParser.BLOCK_END;
    }
}
