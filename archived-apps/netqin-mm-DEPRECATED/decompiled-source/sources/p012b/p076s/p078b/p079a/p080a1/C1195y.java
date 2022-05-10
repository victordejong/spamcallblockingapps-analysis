package p012b.p076s.p078b.p079a.p080a1;

import java.util.Arrays;
/* renamed from: b.s.b.a.a1.y */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/y.class */
public final class C1195y<V> {

    /* renamed from: a */
    public long[] f4765a;

    /* renamed from: b */
    public V[] f4766b;

    /* renamed from: c */
    public int f4767c;

    /* renamed from: d */
    public int f4768d;

    public C1195y() {
        this(10);
    }

    public C1195y(int i) {
        this.f4765a = new long[i];
        this.f4766b = (V[]) m34302a(i);
    }

    /* renamed from: a */
    public static <V> V[] m34302a(int i) {
        return (V[]) new Object[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final V m34299a(long r6, boolean r8) {
        /*
            r5 = this;
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
            r0 = 0
            r11 = r0
        L_0x0008:
            r0 = r5
            int r0 = r0.f4768d
            if (r0 <= 0) goto L_0x0069
            r0 = r6
            r1 = r5
            long[] r1 = r1.f4765a
            r2 = r5
            int r2 = r2.f4767c
            r1 = r1[r2]
            long r0 = r0 - r1
            r12 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0033
            r0 = r8
            if (r0 != 0) goto L_0x0069
            r0 = r12
            long r0 = -r0
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0033
            goto L_0x0069
        L_0x0033:
            r0 = r5
            V[] r0 = r0.f4766b
            r14 = r0
            r0 = r5
            int r0 = r0.f4767c
            r15 = r0
            r0 = r14
            r1 = r15
            r0 = r0[r1]
            r11 = r0
            r0 = r14
            r1 = r15
            r2 = 0
            r0[r1] = r2
            r0 = r5
            r1 = r15
            r2 = 1
            int r1 = r1 + r2
            r2 = r14
            int r2 = r2.length
            int r1 = r1 % r2
            r0.f4767c = r1
            r0 = r5
            r1 = r5
            int r1 = r1.f4768d
            r2 = 1
            int r1 = r1 - r2
            r0.f4768d = r1
            r0 = r12
            r9 = r0
            goto L_0x0008
        L_0x0069:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p080a1.C1195y.m34299a(long, boolean):java.lang.Object");
    }

    /* renamed from: a */
    public void m34303a() {
        synchronized (this) {
            this.f4767c = 0;
            this.f4768d = 0;
            Arrays.fill(this.f4766b, (Object) null);
        }
    }

    /* renamed from: a */
    public final void m34301a(long j) {
        int i = this.f4768d;
        if (i > 0) {
            int i2 = this.f4767c;
            if (j <= this.f4765a[((i2 + i) - 1) % this.f4766b.length]) {
                m34303a();
            }
        }
    }

    /* renamed from: a */
    public void m34300a(long j, V v) {
        synchronized (this) {
            m34301a(j);
            m34298b();
            m34296b(j, v);
        }
    }

    /* renamed from: b */
    public V m34297b(long j) {
        V a;
        synchronized (this) {
            a = m34299a(j, true);
        }
        return a;
    }

    /* renamed from: b */
    public final void m34298b() {
        int length = this.f4766b.length;
        if (this.f4768d >= length) {
            int i = length * 2;
            long[] jArr = new long[i];
            V[] vArr = (V[]) m34302a(i);
            int i2 = this.f4767c;
            int i3 = length - i2;
            System.arraycopy(this.f4765a, i2, jArr, 0, i3);
            System.arraycopy(this.f4766b, this.f4767c, vArr, 0, i3);
            int i4 = this.f4767c;
            if (i4 > 0) {
                System.arraycopy(this.f4765a, 0, jArr, i3, i4);
                System.arraycopy(this.f4766b, 0, vArr, i3, this.f4767c);
            }
            this.f4765a = jArr;
            this.f4766b = vArr;
            this.f4767c = 0;
        }
    }

    /* renamed from: b */
    public final void m34296b(long j, V v) {
        int i = this.f4767c;
        int i2 = this.f4768d;
        V[] vArr = this.f4766b;
        int length = (i + i2) % vArr.length;
        this.f4765a[length] = j;
        vArr[length] = v;
        this.f4768d = i2 + 1;
    }
}
