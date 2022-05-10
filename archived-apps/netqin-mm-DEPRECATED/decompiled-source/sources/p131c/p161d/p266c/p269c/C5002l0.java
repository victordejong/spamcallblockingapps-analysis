package p131c.p161d.p266c.p269c;

import com.google.common.collect.Multisets;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.Arrays;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p269c.AbstractC4997j0;
/* renamed from: c.d.c.c.l0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/l0.class */
public class C5002l0<K> {

    /* renamed from: a */
    public transient Object[] f17616a;

    /* renamed from: b */
    public transient int[] f17617b;

    /* renamed from: c */
    public transient int f17618c;

    /* renamed from: d */
    public transient int f17619d;

    /* renamed from: e */
    public transient int[] f17620e;

    /* renamed from: f */
    public transient long[] f17621f;

    /* renamed from: g */
    public transient float f17622g;

    /* renamed from: h */
    public transient int f17623h;

    /* renamed from: c.d.c.c.l0$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/c/l0$a.class */
    public class C5003a extends Multisets.AbstractC7596b<K> {

        /* renamed from: a */
        public final K f17624a;

        /* renamed from: b */
        public int f17625b;

        public C5003a(int i) {
            this.f17624a = (K) C5002l0.this.f17616a[i];
            this.f17625b = i;
        }

        /* renamed from: a */
        public void m24677a() {
            int i = this.f17625b;
            if (i == -1 || i >= C5002l0.this.m24686d() || !C4928k.m24808a(this.f17624a, C5002l0.this.f17616a[this.f17625b])) {
                this.f17625b = C5002l0.this.m24691b(this.f17624a);
            }
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
        public int getCount() {
            m24677a();
            int i = this.f17625b;
            return i == -1 ? 0 : C5002l0.this.f17617b[i];
        }

        @Override // p131c.p161d.p266c.p269c.AbstractC4997j0.AbstractC4998a
        public K getElement() {
            return this.f17624a;
        }
    }

    public C5002l0() {
        mo24675a(3, 1.0f);
    }

    public C5002l0(int i) {
        this(i, 1.0f);
    }

    public C5002l0(int i, float f) {
        mo24675a(i, f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C5002l0(C5002l0<? extends K> l0Var) {
        mo24675a(l0Var.m24686d(), 1.0f);
        int b = l0Var.mo24672b();
        while (b != -1) {
            m24695a((C5002l0<K>) l0Var.m24688c(b), l0Var.m24685d(b));
            b = l0Var.mo24667f(b);
        }
    }

    /* renamed from: a */
    public static int m24698a(long j) {
        return (int) (j >>> 32);
    }

    /* renamed from: a */
    public static long m24697a(long j, int i) {
        return (j & (-4294967296L)) | (i & 4294967295L);
    }

    /* renamed from: b */
    public static int m24692b(long j) {
        return (int) j;
    }

    /* renamed from: e */
    public static <K> C5002l0<K> m24684e() {
        return new C5002l0<>();
    }

    /* renamed from: k */
    public static <K> C5002l0<K> m24680k(int i) {
        return new C5002l0<>(i);
    }

    /* renamed from: l */
    public static long[] m24679l(int i) {
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    /* renamed from: m */
    public static int[] m24678m(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    /* renamed from: a */
    public int mo24674a(int i, int i2) {
        return i - 1;
    }

    /* renamed from: a */
    public int m24696a(Object obj) {
        int b = m24691b(obj);
        return b == -1 ? 0 : this.f17617b[b];
    }

    /* renamed from: a */
    public int m24695a(K k, int i) {
        C5006n.m24659b(i, "count");
        long[] jArr = this.f17621f;
        Object[] objArr = this.f17616a;
        int[] iArr = this.f17617b;
        int a = C4980f0.m24726a(k);
        int c = m24689c() & a;
        int i2 = this.f17618c;
        int[] iArr2 = this.f17620e;
        int i3 = iArr2[c];
        int i4 = i3;
        if (i3 == -1) {
            iArr2[c] = i2;
        } else {
            while (true) {
                long j = jArr[i4];
                if (m24698a(j) != a || !C4928k.m24808a(k, objArr[i4])) {
                    int b = m24692b(j);
                    if (b == -1) {
                        jArr[i4] = m24697a(j, i2);
                        break;
                    }
                    i4 = b;
                } else {
                    int i5 = iArr[i4];
                    iArr[i4] = i;
                    return i5;
                }
            }
        }
        if (i2 != Integer.MAX_VALUE) {
            int i6 = i2 + 1;
            m24682i(i6);
            mo24673a(i2, k, i, a);
            this.f17618c = i6;
            if (i2 >= this.f17623h) {
                m24681j(this.f17620e.length * 2);
            }
            this.f17619d++;
            return 0;
        }
        throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
    }

    /* renamed from: a */
    public void mo24676a() {
        this.f17619d++;
        Arrays.fill(this.f17616a, 0, this.f17618c, (Object) null);
        Arrays.fill(this.f17617b, 0, this.f17618c, 0);
        Arrays.fill(this.f17620e, -1);
        Arrays.fill(this.f17621f, -1L);
        this.f17618c = 0;
    }

    /* renamed from: a */
    public void m24699a(int i) {
        if (i > this.f17621f.length) {
            mo24666h(i);
        }
        if (i >= this.f17623h) {
            m24681j(Math.max(2, Integer.highestOneBit(i - 1) << 1));
        }
    }

    /* renamed from: a */
    public void mo24675a(int i, float f) {
        boolean z = false;
        C4933n.m24790a(i >= 0, "Initial capacity must be non-negative");
        if (f > 0.0f) {
            z = true;
        }
        C4933n.m24790a(z, "Illegal load factor");
        int a = C4980f0.m24728a(i, f);
        this.f17620e = m24678m(a);
        this.f17622g = f;
        this.f17616a = new Object[i];
        this.f17617b = new int[i];
        this.f17621f = m24679l(i);
        this.f17623h = Math.max(1, (int) (a * f));
    }

    /* renamed from: a */
    public void mo24673a(int i, K k, int i2, int i3) {
        this.f17621f[i] = (i3 << 32) | 4294967295L;
        this.f17616a[i] = k;
        this.f17617b[i] = i2;
    }

    /* renamed from: b */
    public int mo24672b() {
        return this.f17618c == 0 ? -1 : 0;
    }

    /* renamed from: b */
    public int m24691b(Object obj) {
        int a = C4980f0.m24726a(obj);
        int i = this.f17620e[m24689c() & a];
        while (i != -1) {
            long j = this.f17621f[i];
            if (m24698a(j) == a && C4928k.m24808a(obj, this.f17616a[i])) {
                return i;
            }
            i = m24692b(j);
        }
        return -1;
    }

    /* renamed from: b */
    public final int m24690b(Object obj, int i) {
        int c = m24689c() & i;
        int i2 = this.f17620e[c];
        if (i2 == -1) {
            return 0;
        }
        int i3 = -1;
        while (true) {
            if (m24698a(this.f17621f[i2]) != i || !C4928k.m24808a(obj, this.f17616a[i2])) {
                int b = m24692b(this.f17621f[i2]);
                if (b == -1) {
                    return 0;
                }
                i3 = i2;
                i2 = b;
            } else {
                int i4 = this.f17617b[i2];
                if (i3 == -1) {
                    this.f17620e[c] = m24692b(this.f17621f[i2]);
                } else {
                    long[] jArr = this.f17621f;
                    jArr[i3] = m24697a(jArr[i3], m24692b(jArr[i2]));
                }
                mo24669e(i2);
                this.f17618c--;
                this.f17619d++;
                return i4;
            }
        }
    }

    /* renamed from: b */
    public AbstractC4997j0.AbstractC4998a<K> m24694b(int i) {
        C4933n.m24798a(i, this.f17618c);
        return new C5003a(i);
    }

    /* renamed from: b */
    public void m24693b(int i, int i2) {
        C4933n.m24798a(i, this.f17618c);
        this.f17617b[i] = i2;
    }

    /* renamed from: c */
    public final int m24689c() {
        return this.f17620e.length - 1;
    }

    /* renamed from: c */
    public int m24687c(Object obj) {
        return m24690b(obj, C4980f0.m24726a(obj));
    }

    /* renamed from: c */
    public K m24688c(int i) {
        C4933n.m24798a(i, this.f17618c);
        return (K) this.f17616a[i];
    }

    /* renamed from: d */
    public int m24686d() {
        return this.f17618c;
    }

    /* renamed from: d */
    public int m24685d(int i) {
        C4933n.m24798a(i, this.f17618c);
        return this.f17617b[i];
    }

    /* renamed from: e */
    public void mo24669e(int i) {
        int d = m24686d() - 1;
        if (i < d) {
            Object[] objArr = this.f17616a;
            objArr[i] = objArr[d];
            int[] iArr = this.f17617b;
            iArr[i] = iArr[d];
            objArr[d] = null;
            iArr[d] = 0;
            long[] jArr = this.f17621f;
            long j = jArr[d];
            jArr[i] = j;
            jArr[d] = -1;
            int a = m24698a(j) & m24689c();
            int[] iArr2 = this.f17620e;
            int i2 = iArr2[a];
            int i3 = i2;
            if (i2 == d) {
                iArr2[a] = i;
                return;
            }
            while (true) {
                long j2 = this.f17621f[i3];
                int b = m24692b(j2);
                if (b == d) {
                    this.f17621f[i3] = m24697a(j2, i);
                    return;
                }
                i3 = b;
            }
        } else {
            this.f17616a[i] = null;
            this.f17617b[i] = 0;
            this.f17621f[i] = -1;
        }
    }

    /* renamed from: f */
    public int mo24667f(int i) {
        int i2 = i + 1;
        if (i2 >= this.f17618c) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: g */
    public int m24683g(int i) {
        return m24690b(this.f17616a[i], m24698a(this.f17621f[i]));
    }

    /* renamed from: h */
    public void mo24666h(int i) {
        this.f17616a = Arrays.copyOf(this.f17616a, i);
        this.f17617b = Arrays.copyOf(this.f17617b, i);
        long[] jArr = this.f17621f;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(copyOf, length, i, -1L);
        }
        this.f17621f = copyOf;
    }

    /* renamed from: i */
    public final void m24682i(int i) {
        int length = this.f17621f.length;
        if (i > length) {
            int max = Math.max(1, length >>> 1) + length;
            int i2 = max;
            if (max < 0) {
                i2 = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            }
            if (i2 != length) {
                mo24666h(i2);
            }
        }
    }

    /* renamed from: j */
    public final void m24681j(int i) {
        if (this.f17620e.length >= 1073741824) {
            this.f17623h = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            return;
        }
        int i2 = (int) (i * this.f17622g);
        int[] m = m24678m(i);
        long[] jArr = this.f17621f;
        int length = m.length;
        for (int i3 = 0; i3 < this.f17618c; i3++) {
            int a = m24698a(jArr[i3]);
            int i4 = a & (length - 1);
            int i5 = m[i4];
            m[i4] = i3;
            jArr[i3] = (a << 32) | (4294967295L & i5);
        }
        this.f17623h = i2 + 1;
        this.f17620e = m;
    }
}
