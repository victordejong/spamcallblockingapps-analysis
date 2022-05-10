package p131c.p161d.p170b.p188c.p203g1;

import java.util.Arrays;
/* renamed from: c.d.b.c.g1.p */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/p.class */
public final class C2895p {

    /* renamed from: a */
    public int f10500a;

    /* renamed from: b */
    public long[] f10501b;

    public C2895p() {
        this(32);
    }

    public C2895p(int i) {
        this.f10501b = new long[i];
    }

    /* renamed from: a */
    public int m28593a() {
        return this.f10500a;
    }

    /* renamed from: a */
    public long m28592a(int i) {
        if (i >= 0 && i < this.f10500a) {
            return this.f10501b[i];
        }
        throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.f10500a);
    }

    /* renamed from: a */
    public void m28591a(long j) {
        int i = this.f10500a;
        long[] jArr = this.f10501b;
        if (i == jArr.length) {
            this.f10501b = Arrays.copyOf(jArr, i * 2);
        }
        long[] jArr2 = this.f10501b;
        int i2 = this.f10500a;
        this.f10500a = i2 + 1;
        jArr2[i2] = j;
    }
}
