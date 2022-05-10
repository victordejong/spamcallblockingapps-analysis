package p012b.p076s.p078b.p079a.p086s0;

import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
/* renamed from: b.s.b.a.s0.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/b.class */
public final class C1345b implements AbstractC1358o {

    /* renamed from: a */
    public final int f5308a;

    /* renamed from: b */
    public final int[] f5309b;

    /* renamed from: c */
    public final long[] f5310c;

    /* renamed from: d */
    public final long[] f5311d;

    /* renamed from: e */
    public final long[] f5312e;

    /* renamed from: f */
    public final long f5313f;

    public C1345b(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.f5309b = iArr;
        this.f5310c = jArr;
        this.f5311d = jArr2;
        this.f5312e = jArr3;
        int length = iArr.length;
        this.f5308a = length;
        if (length > 0) {
            this.f5313f = jArr2[length - 1] + jArr3[length - 1];
        } else {
            this.f5313f = 0L;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public AbstractC1358o.C1359a mo33118b(long j) {
        int c = m33634c(j);
        C1361p pVar = new C1361p(this.f5312e[c], this.f5310c[c]);
        if (pVar.f5361a >= j || c == this.f5308a - 1) {
            return new AbstractC1358o.C1359a(pVar);
        }
        int i = c + 1;
        return new AbstractC1358o.C1359a(pVar, new C1361p(this.f5312e[i], this.f5310c[i]));
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public boolean mo33119b() {
        return true;
    }

    /* renamed from: c */
    public int m33634c(long j) {
        return C1167d0.m34449b(this.f5312e, j, true, true);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: c */
    public long mo33117c() {
        return this.f5313f;
    }

    public String toString() {
        int i = this.f5308a;
        String arrays = Arrays.toString(this.f5309b);
        String arrays2 = Arrays.toString(this.f5310c);
        String arrays3 = Arrays.toString(this.f5312e);
        String arrays4 = Arrays.toString(this.f5311d);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 71 + String.valueOf(arrays2).length() + String.valueOf(arrays3).length() + String.valueOf(arrays4).length());
        sb.append("ChunkIndex(length=");
        sb.append(i);
        sb.append(", sizes=");
        sb.append(arrays);
        sb.append(", offsets=");
        sb.append(arrays2);
        sb.append(", timeUs=");
        sb.append(arrays3);
        sb.append(", durationsUs=");
        sb.append(arrays4);
        sb.append(")");
        return sb.toString();
    }
}
