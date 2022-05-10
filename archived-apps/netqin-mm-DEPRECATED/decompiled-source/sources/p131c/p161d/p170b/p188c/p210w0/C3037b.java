package p131c.p161d.p170b.p188c.p210w0;

import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3050o;
/* renamed from: c.d.b.c.w0.b */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/b.class */
public final class C3037b implements AbstractC3050o {

    /* renamed from: a */
    public final int f10942a;

    /* renamed from: b */
    public final int[] f10943b;

    /* renamed from: c */
    public final long[] f10944c;

    /* renamed from: d */
    public final long[] f10945d;

    /* renamed from: e */
    public final long[] f10946e;

    /* renamed from: f */
    public final long f10947f;

    public C3037b(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f10943b = iArr;
        this.f10944c = jArr;
        this.f10945d = jArr2;
        this.f10946e = jArr3;
        int length = iArr.length;
        this.f10942a = length;
        if (length > 0) {
            this.f10947f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f10947f = 0L;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public AbstractC3050o.C3051a mo27544b(long j) {
        int c = m28069c(j);
        C3053p pVar = new C3053p(this.f10946e[c], this.f10944c[c]);
        if (pVar.f10995a >= j || c == this.f10942a - 1) {
            return new AbstractC3050o.C3051a(pVar);
        }
        int i = c + 1;
        return new AbstractC3050o.C3051a(pVar, new C3053p(this.f10946e[i], this.f10944c[i]));
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: b */
    public boolean mo27545b() {
        return true;
    }

    /* renamed from: c */
    public int m28069c(long j) {
        return C2885h0.m28643b(this.f10946e, j, true, true);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.AbstractC3050o
    /* renamed from: c */
    public long mo27543c() {
        return this.f10947f;
    }

    public String toString() {
        return "ChunkIndex(length=" + this.f10942a + ", sizes=" + Arrays.toString(this.f10943b) + ", offsets=" + Arrays.toString(this.f10944c) + ", timeUs=" + Arrays.toString(this.f10946e) + ", durationsUs=" + Arrays.toString(this.f10945d) + ")";
    }
}
