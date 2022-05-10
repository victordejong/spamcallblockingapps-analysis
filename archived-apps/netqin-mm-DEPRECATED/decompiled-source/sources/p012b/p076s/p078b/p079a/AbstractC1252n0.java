package p012b.p076s.p078b.p079a;

import android.util.Pair;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p102w0.p103l0.C1582a;
/* renamed from: b.s.b.a.n0 */
/* loaded from: classes-dex2jar.jar:b/s/b/a/n0.class */
public abstract class AbstractC1252n0 {

    /* renamed from: a */
    public static final AbstractC1252n0 f5012a = new C1253a();

    /* renamed from: b.s.b.a.n0$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/n0$a.class */
    public class C1253a extends AbstractC1252n0 {
        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public int mo32719a() {
            return 0;
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public int mo32715a(Object obj) {
            return -1;
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public C1254b mo32738a(int i, C1254b bVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public C1255c mo32716a(int i, C1255c cVar, boolean z, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: a */
        public Object mo32718a(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // p012b.p076s.p078b.p079a.AbstractC1252n0
        /* renamed from: b */
        public int mo32713b() {
            return 0;
        }
    }

    /* renamed from: b.s.b.a.n0$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/n0$b.class */
    public static final class C1254b {

        /* renamed from: a */
        public Object f5013a;

        /* renamed from: b */
        public Object f5014b;

        /* renamed from: c */
        public int f5015c;

        /* renamed from: d */
        public long f5016d;

        /* renamed from: e */
        public long f5017e;

        /* renamed from: f */
        public C1582a f5018f = C1582a.f6466f;

        /* renamed from: a */
        public int m34039a() {
            return this.f5018f.f6467a;
        }

        /* renamed from: a */
        public int m34038a(int i) {
            return this.f5018f.f6469c[i].f6472a;
        }

        /* renamed from: a */
        public int m34036a(long j) {
            return this.f5018f.m32735a(j, this.f5016d);
        }

        /* renamed from: a */
        public long m34037a(int i, int i2) {
            C1582a.C1583a aVar = this.f5018f.f6469c[i];
            return aVar.f6472a != -1 ? aVar.f6475d[i2] : -9223372036854775807L;
        }

        /* renamed from: a */
        public C1254b m34035a(Object obj, Object obj2, int i, long j, long j2) {
            m34034a(obj, obj2, i, j, j2, C1582a.f6466f);
            return this;
        }

        /* renamed from: a */
        public C1254b m34034a(Object obj, Object obj2, int i, long j, long j2, C1582a aVar) {
            this.f5013a = obj;
            this.f5014b = obj2;
            this.f5015c = i;
            this.f5016d = j;
            this.f5017e = j2;
            this.f5018f = aVar;
            return this;
        }

        /* renamed from: b */
        public int m34031b(int i, int i2) {
            return this.f5018f.f6469c[i].m32733a(i2);
        }

        /* renamed from: b */
        public int m34030b(long j) {
            return this.f5018f.m32737a(j);
        }

        /* renamed from: b */
        public long m34033b() {
            return this.f5018f.f6470d;
        }

        /* renamed from: b */
        public long m34032b(int i) {
            return this.f5018f.f6468b[i];
        }

        /* renamed from: c */
        public int m34028c(int i) {
            return this.f5018f.f6469c[i].m32734a();
        }

        /* renamed from: c */
        public long m34029c() {
            return this.f5016d;
        }

        /* renamed from: c */
        public boolean m34027c(int i, int i2) {
            C1582a.C1583a aVar = this.f5018f.f6469c[i];
            return (aVar.f6472a == -1 || aVar.f6474c[i2] == 0) ? false : true;
        }

        /* renamed from: d */
        public long m34026d() {
            return C1220c.m34195b(this.f5017e);
        }

        /* renamed from: e */
        public long m34025e() {
            return this.f5017e;
        }
    }

    /* renamed from: b.s.b.a.n0$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/n0$c.class */
    public static final class C1255c {

        /* renamed from: a */
        public Object f5019a;

        /* renamed from: b */
        public long f5020b;

        /* renamed from: c */
        public long f5021c;

        /* renamed from: d */
        public boolean f5022d;

        /* renamed from: e */
        public boolean f5023e;

        /* renamed from: f */
        public int f5024f;

        /* renamed from: g */
        public int f5025g;

        /* renamed from: h */
        public long f5026h;

        /* renamed from: i */
        public long f5027i;

        /* renamed from: j */
        public long f5028j;

        /* renamed from: a */
        public long m34024a() {
            return C1220c.m34195b(this.f5026h);
        }

        /* renamed from: a */
        public C1255c m34023a(Object obj, long j, long j2, boolean z, boolean z2, long j3, long j4, int i, int i2, long j5) {
            this.f5019a = obj;
            this.f5020b = j;
            this.f5021c = j2;
            this.f5022d = z;
            this.f5023e = z2;
            this.f5026h = j3;
            this.f5027i = j4;
            this.f5024f = i;
            this.f5025g = i2;
            this.f5028j = j5;
            return this;
        }

        /* renamed from: b */
        public long m34022b() {
            return this.f5026h;
        }

        /* renamed from: c */
        public long m34021c() {
            return C1220c.m34195b(this.f5027i);
        }

        /* renamed from: d */
        public long m34020d() {
            return this.f5028j;
        }
    }

    /* renamed from: a */
    public abstract int mo32719a();

    /* renamed from: a */
    public int mo32717a(int i, int i2, boolean z) {
        if (i2 == 0) {
            return i == mo32712b(z) ? -1 : i + 1;
        } else if (i2 == 1) {
            return i;
        } else {
            if (i2 == 2) {
                return i == mo32712b(z) ? mo32714a(z) : i + 1;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public final int m34046a(int i, C1254b bVar, C1255c cVar, int i2, boolean z) {
        int i3 = m34047a(i, bVar).f5015c;
        if (m34045a(i3, cVar).f5025g != i) {
            return i + 1;
        }
        int a = mo32717a(i3, i2, z);
        if (a == -1) {
            return -1;
        }
        return m34045a(a, cVar).f5024f;
    }

    /* renamed from: a */
    public abstract int mo32715a(Object obj);

    /* renamed from: a */
    public int mo32714a(boolean z) {
        return m34040c() ? -1 : 0;
    }

    /* renamed from: a */
    public final Pair<Object, Long> m34043a(C1255c cVar, C1254b bVar, int i, long j) {
        Pair<Object, Long> a = m34042a(cVar, bVar, i, j, 0L);
        C1160a.m34522a(a);
        return a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.util.Pair<java.lang.Object, java.lang.Long> m34042a(p012b.p076s.p078b.p079a.AbstractC1252n0.C1255c r8, p012b.p076s.p078b.p079a.AbstractC1252n0.C1254b r9, int r10, long r11, long r13) {
        /*
            r7 = this;
            r0 = r10
            r1 = 0
            r2 = r7
            int r2 = r2.mo32713b()
            int r0 = p012b.p076s.p078b.p079a.p080a1.C1160a.m34523a(r0, r1, r2)
            r0 = r7
            r1 = r10
            r2 = r8
            r3 = 0
            r4 = r13
            b.s.b.a.n0$c r0 = r0.mo32716a(r1, r2, r3, r4)
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0036
            r0 = r8
            long r0 = r0.m34022b()
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0036
            r0 = 0
            return r0
        L_0x0036:
            r0 = r8
            int r0 = r0.f5024f
            r10 = r0
            r0 = r8
            long r0 = r0.m34020d()
            r1 = r13
            long r0 = r0 + r1
            r13 = r0
            r0 = r7
            r1 = r10
            r2 = r9
            r3 = 1
            b.s.b.a.n0$b r0 = r0.mo32738a(r1, r2, r3)
            long r0 = r0.m34029c()
            r11 = r0
        L_0x0050:
            r0 = r11
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0082
            r0 = r13
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0082
            r0 = r10
            r1 = r8
            int r1 = r1.f5025g
            if (r0 >= r1) goto L_0x0082
            r0 = r13
            r1 = r11
            long r0 = r0 - r1
            r13 = r0
            int r10 = r10 + 1
            r0 = r7
            r1 = r10
            r2 = r9
            r3 = 1
            b.s.b.a.n0$b r0 = r0.mo32738a(r1, r2, r3)
            long r0 = r0.m34029c()
            r11 = r0
            goto L_0x0050
        L_0x0082:
            r0 = r9
            java.lang.Object r0 = r0.f5014b
            r8 = r0
            r0 = r8
            java.lang.Object r0 = p012b.p076s.p078b.p079a.p080a1.C1160a.m34522a(r0)
            r0 = r8
            r1 = r13
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.AbstractC1252n0.m34042a(b.s.b.a.n0$c, b.s.b.a.n0$b, int, long, long):android.util.Pair");
    }

    /* renamed from: a */
    public final C1254b m34047a(int i, C1254b bVar) {
        return mo32738a(i, bVar, false);
    }

    /* renamed from: a */
    public abstract C1254b mo32738a(int i, C1254b bVar, boolean z);

    /* renamed from: a */
    public C1254b mo32960a(Object obj, C1254b bVar) {
        return mo32738a(mo32715a(obj), bVar, true);
    }

    /* renamed from: a */
    public final C1255c m34045a(int i, C1255c cVar) {
        return m34044a(i, cVar, false);
    }

    /* renamed from: a */
    public final C1255c m34044a(int i, C1255c cVar, boolean z) {
        return mo32716a(i, cVar, z, 0L);
    }

    /* renamed from: a */
    public abstract C1255c mo32716a(int i, C1255c cVar, boolean z, long j);

    /* renamed from: a */
    public abstract Object mo32718a(int i);

    /* renamed from: b */
    public abstract int mo32713b();

    /* renamed from: b */
    public int mo32712b(boolean z) {
        return m34040c() ? -1 : mo32713b() - 1;
    }

    /* renamed from: b */
    public final boolean m34041b(int i, C1254b bVar, C1255c cVar, int i2, boolean z) {
        return m34046a(i, bVar, cVar, i2, z) == -1;
    }

    /* renamed from: c */
    public final boolean m34040c() {
        return mo32713b() == 0;
    }
}
