package androidx.work.impl.p015n;

import androidx.work.AbstractC0541m;
import androidx.work.C0470c;
import androidx.work.C0474e;
import androidx.work.EnumC0466a;
import androidx.work.EnumC0550v;
/* renamed from: androidx.work.impl.n.p */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/n/p.class */
public final class C0513p {

    /* renamed from: r */
    private static final String f2593r = AbstractC0541m.m4305f("WorkSpec");

    /* renamed from: a */
    public String f2594a;

    /* renamed from: b */
    public EnumC0550v f2595b;

    /* renamed from: c */
    public String f2596c;

    /* renamed from: d */
    public String f2597d;

    /* renamed from: e */
    public C0474e f2598e;

    /* renamed from: f */
    public C0474e f2599f;

    /* renamed from: g */
    public long f2600g;

    /* renamed from: h */
    public long f2601h;

    /* renamed from: i */
    public long f2602i;

    /* renamed from: j */
    public C0470c f2603j;

    /* renamed from: k */
    public int f2604k;

    /* renamed from: l */
    public EnumC0466a f2605l;

    /* renamed from: m */
    public long f2606m;

    /* renamed from: n */
    public long f2607n;

    /* renamed from: o */
    public long f2608o;

    /* renamed from: p */
    public long f2609p;

    /* renamed from: q */
    public boolean f2610q;

    /* renamed from: androidx.work.impl.n.p$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/n/p$a.class */
    public static class C0514a {

        /* renamed from: a */
        public String f2611a;

        /* renamed from: b */
        public EnumC0550v f2612b;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0514a)) {
                return false;
            }
            C0514a c0514a = (C0514a) obj;
            if (this.f2612b == c0514a.f2612b) {
                return this.f2611a.equals(c0514a.f2611a);
            }
            return false;
        }

        public int hashCode() {
            return (this.f2611a.hashCode() * 31) + this.f2612b.hashCode();
        }
    }

    public C0513p(C0513p c0513p) {
        this.f2595b = EnumC0550v.ENQUEUED;
        C0474e c0474e = C0474e.f2472c;
        this.f2598e = c0474e;
        this.f2599f = c0474e;
        this.f2603j = C0470c.f2451i;
        this.f2605l = EnumC0466a.EXPONENTIAL;
        this.f2606m = 30000L;
        this.f2609p = -1L;
        this.f2594a = c0513p.f2594a;
        this.f2596c = c0513p.f2596c;
        this.f2595b = c0513p.f2595b;
        this.f2597d = c0513p.f2597d;
        this.f2598e = new C0474e(c0513p.f2598e);
        this.f2599f = new C0474e(c0513p.f2599f);
        this.f2600g = c0513p.f2600g;
        this.f2601h = c0513p.f2601h;
        this.f2602i = c0513p.f2602i;
        this.f2603j = new C0470c(c0513p.f2603j);
        this.f2604k = c0513p.f2604k;
        this.f2605l = c0513p.f2605l;
        this.f2606m = c0513p.f2606m;
        this.f2607n = c0513p.f2607n;
        this.f2608o = c0513p.f2608o;
        this.f2609p = c0513p.f2609p;
        this.f2610q = c0513p.f2610q;
    }

    public C0513p(String str, String str2) {
        this.f2595b = EnumC0550v.ENQUEUED;
        C0474e c0474e = C0474e.f2472c;
        this.f2598e = c0474e;
        this.f2599f = c0474e;
        this.f2603j = C0470c.f2451i;
        this.f2605l = EnumC0466a.EXPONENTIAL;
        this.f2606m = 30000L;
        this.f2609p = -1L;
        this.f2594a = str;
        this.f2596c = str2;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v45, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* renamed from: a */
    public long m4407a() {
        boolean z = false;
        if (m4405c()) {
            if (this.f2605l == EnumC0466a.LINEAR) {
                z = true;
            }
            return this.f2607n + Math.min(18000000L, (long) (z ? this.f2606m * this.f2604k : Math.scalb((float) this.f2606m, this.f2604k - 1)));
        }
        char c = 0;
        if (!m4404d()) {
            ?? r0 = this.f2607n;
            char c2 = r0;
            if (r0 == 0) {
                c2 = System.currentTimeMillis();
            }
            return c2 + this.f2600g;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ?? r02 = this.f2607n;
        char c3 = r02 == 0 ? currentTimeMillis + this.f2600g : r02;
        long j = this.f2602i;
        ?? r03 = this.f2601h;
        boolean z2 = false;
        if (j != r03) {
            z2 = true;
        }
        if (z2) {
            if (r02 == 0) {
                c = j * (-1);
            }
            return c3 + r03 + c;
        }
        if (r02 != 0) {
            c = r03;
        }
        return c3 + c;
    }

    /* renamed from: b */
    public boolean m4406b() {
        return !C0470c.f2451i.equals(this.f2603j);
    }

    /* renamed from: c */
    public boolean m4405c() {
        return this.f2595b == EnumC0550v.ENQUEUED && this.f2604k > 0;
    }

    /* renamed from: d */
    public boolean m4404d() {
        return this.f2601h != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public void m4403e(long j) {
        char c = j;
        if (j < 900000) {
            AbstractC0541m.m4308c().m4303h(f2593r, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L), new Throwable[0]);
            c = 48032;
        }
        m4402f(c, c);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0513p)) {
            return false;
        }
        C0513p c0513p = (C0513p) obj;
        if (this.f2600g != c0513p.f2600g || this.f2601h != c0513p.f2601h || this.f2602i != c0513p.f2602i || this.f2604k != c0513p.f2604k || this.f2606m != c0513p.f2606m || this.f2607n != c0513p.f2607n || this.f2608o != c0513p.f2608o || this.f2609p != c0513p.f2609p || this.f2610q != c0513p.f2610q || !this.f2594a.equals(c0513p.f2594a) || this.f2595b != c0513p.f2595b || !this.f2596c.equals(c0513p.f2596c)) {
            return false;
        }
        String str = this.f2597d;
        if (str != null) {
            if (!str.equals(c0513p.f2597d)) {
                return false;
            }
        } else if (c0513p.f2597d != null) {
            return false;
        }
        if (!this.f2598e.equals(c0513p.f2598e) || !this.f2599f.equals(c0513p.f2599f) || !this.f2603j.equals(c0513p.f2603j)) {
            return false;
        }
        if (this.f2605l != c0513p.f2605l) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public void m4402f(long j, long j2) {
        char c = j;
        if (j < 900000) {
            AbstractC0541m.m4308c().m4303h(f2593r, String.format("Interval duration lesser than minimum allowed value; Changed to %s", 900000L), new Throwable[0]);
            c = 48032;
        }
        char c2 = j2;
        if (j2 < 300000) {
            AbstractC0541m.m4308c().m4303h(f2593r, String.format("Flex duration lesser than minimum allowed value; Changed to %s", 300000L), new Throwable[0]);
            c2 = 37856;
        }
        char c3 = c2;
        if (c2 > c) {
            AbstractC0541m.m4308c().m4303h(f2593r, String.format("Flex duration greater than interval duration; Changed to %s", Long.valueOf(c)), new Throwable[0]);
            c3 = c;
        }
        this.f2601h = c;
        this.f2602i = c3;
    }

    public int hashCode() {
        int hashCode = this.f2594a.hashCode();
        int hashCode2 = this.f2595b.hashCode();
        int hashCode3 = this.f2596c.hashCode();
        String str = this.f2597d;
        int hashCode4 = str != null ? str.hashCode() : 0;
        int hashCode5 = this.f2598e.hashCode();
        int hashCode6 = this.f2599f.hashCode();
        long j = this.f2600g;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f2601h;
        int i2 = (int) (j2 ^ (j2 >>> 32));
        long j3 = this.f2602i;
        int i3 = (int) (j3 ^ (j3 >>> 32));
        int hashCode7 = this.f2603j.hashCode();
        int i4 = this.f2604k;
        int hashCode8 = this.f2605l.hashCode();
        long j4 = this.f2606m;
        int i5 = (int) (j4 ^ (j4 >>> 32));
        long j5 = this.f2607n;
        int i6 = (int) (j5 ^ (j5 >>> 32));
        long j6 = this.f2608o;
        int i7 = (int) (j6 ^ (j6 >>> 32));
        long j7 = this.f2609p;
        return (((((((((((((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + i) * 31) + i2) * 31) + i3) * 31) + hashCode7) * 31) + i4) * 31) + hashCode8) * 31) + i5) * 31) + i6) * 31) + i7) * 31) + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.f2610q ? 1 : 0);
    }

    public String toString() {
        return "{WorkSpec: " + this.f2594a + "}";
    }
}
