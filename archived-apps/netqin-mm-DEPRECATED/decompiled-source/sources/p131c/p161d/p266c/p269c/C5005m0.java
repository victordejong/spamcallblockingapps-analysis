package p131c.p161d.p266c.p269c;

import java.util.Arrays;
/* renamed from: c.d.c.c.m0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/m0.class */
public class C5005m0<K> extends C5002l0<K> {

    /* renamed from: i */
    public transient long[] f17627i;

    /* renamed from: j */
    public transient int f17628j;

    /* renamed from: k */
    public transient int f17629k;

    public C5005m0(int i) {
        this(i, 1.0f);
    }

    public C5005m0(int i, float f) {
        super(i, f);
    }

    @Override // p131c.p161d.p266c.p269c.C5002l0
    /* renamed from: a */
    public int mo24674a(int i, int i2) {
        int i3 = i;
        if (i == m24686d()) {
            i3 = i2;
        }
        return i3;
    }

    @Override // p131c.p161d.p266c.p269c.C5002l0
    /* renamed from: a */
    public void mo24676a() {
        super.mo24676a();
        this.f17628j = -2;
        this.f17629k = -2;
    }

    @Override // p131c.p161d.p266c.p269c.C5002l0
    /* renamed from: a */
    public void mo24675a(int i, float f) {
        super.mo24675a(i, f);
        this.f17628j = -2;
        this.f17629k = -2;
        long[] jArr = new long[i];
        this.f17627i = jArr;
        Arrays.fill(jArr, -1L);
    }

    @Override // p131c.p161d.p266c.p269c.C5002l0
    /* renamed from: a */
    public void mo24673a(int i, K k, int i2, int i3) {
        super.mo24673a(i, k, i2, i3);
        m24670d(this.f17629k, i);
        m24670d(i, -2);
    }

    @Override // p131c.p161d.p266c.p269c.C5002l0
    /* renamed from: b */
    public int mo24672b() {
        int i = this.f17628j;
        int i2 = i;
        if (i == -2) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: c */
    public final void m24671c(int i, int i2) {
        long[] jArr = this.f17627i;
        jArr[i] = (jArr[i] & 4294967295L) | (i2 << 32);
    }

    /* renamed from: d */
    public final void m24670d(int i, int i2) {
        if (i == -2) {
            this.f17628j = i2;
        } else {
            m24668e(i, i2);
        }
        if (i2 == -2) {
            this.f17629k = i;
        } else {
            m24671c(i2, i);
        }
    }

    @Override // p131c.p161d.p266c.p269c.C5002l0
    /* renamed from: e */
    public void mo24669e(int i) {
        int d = m24686d() - 1;
        m24670d(m24665n(i), m24664o(i));
        if (i < d) {
            m24670d(m24665n(d), i);
            m24670d(i, m24664o(d));
        }
        super.mo24669e(i);
    }

    /* renamed from: e */
    public final void m24668e(int i, int i2) {
        long[] jArr = this.f17627i;
        jArr[i] = (jArr[i] & (-4294967296L)) | (i2 & 4294967295L);
    }

    @Override // p131c.p161d.p266c.p269c.C5002l0
    /* renamed from: f */
    public int mo24667f(int i) {
        int o = m24664o(i);
        int i2 = o;
        if (o == -2) {
            i2 = -1;
        }
        return i2;
    }

    @Override // p131c.p161d.p266c.p269c.C5002l0
    /* renamed from: h */
    public void mo24666h(int i) {
        super.mo24666h(i);
        long[] jArr = this.f17627i;
        int length = jArr.length;
        long[] copyOf = Arrays.copyOf(jArr, i);
        this.f17627i = copyOf;
        Arrays.fill(copyOf, length, i, -1L);
    }

    /* renamed from: n */
    public final int m24665n(int i) {
        return (int) (this.f17627i[i] >>> 32);
    }

    /* renamed from: o */
    public final int m24664o(int i) {
        return (int) this.f17627i[i];
    }
}
