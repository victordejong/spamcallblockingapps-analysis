package p012b.p076s.p078b.p079a.p086s0.p090u;

import android.util.Pair;
import androidx.media2.exoplayer.external.metadata.id3.MlltFrame;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.C1361p;
import p012b.p076s.p078b.p079a.p086s0.p090u.C1388e;
/* renamed from: b.s.b.a.s0.u.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/u/b.class */
public final class C1385b implements C1388e.AbstractC1389a {

    /* renamed from: a */
    public final long[] f5542a;

    /* renamed from: b */
    public final long[] f5543b;

    /* renamed from: c */
    public final long f5544c;

    public C1385b(long[] jArr, long[] jArr2) {
        this.f5542a = jArr;
        this.f5543b = jArr2;
        this.f5544c = C1220c.m34196a(jArr2[jArr2.length - 1]);
    }

    /* renamed from: a */
    public static Pair<Long, Long> m33510a(long j, long[] jArr, long[] jArr2) {
        double d;
        int b = C1167d0.m34449b(jArr, j, true, true);
        long j2 = jArr[b];
        long j3 = jArr2[b];
        int i = b + 1;
        if (i == jArr.length) {
            return Pair.create(Long.valueOf(j2), Long.valueOf(j3));
        }
        long j4 = jArr[i];
        long j5 = jArr2[i];
        if (j4 == j2) {
            d = 0.0d;
        } else {
            double d2 = j;
            double d3 = j2;
            Double.isNaN(d2);
            Double.isNaN(d3);
            double d4 = j4 - j2;
            Double.isNaN(d4);
            d = (d2 - d3) / d4;
        }
        double d5 = j5 - j3;
        Double.isNaN(d5);
        return Pair.create(Long.valueOf(j), Long.valueOf(((long) (d * d5)) + j3));
    }

    /* renamed from: a */
    public static C1385b m33511a(long j, MlltFrame mlltFrame) {
        int length = mlltFrame.f1792e.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j2 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += mlltFrame.f1790c + mlltFrame.f1792e[i3];
            j2 += mlltFrame.f1791d + mlltFrame.f1793f[i3];
            jArr[i2] = j;
            jArr2[i2] = j2;
        }
        return new C1385b(jArr, jArr2);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p090u.C1388e.AbstractC1389a
    /* renamed from: a */
    public long mo33497a(long j) {
        return C1220c.m34196a(((Long) m33510a(j, this.f5542a, this.f5543b).second).longValue());
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public AbstractC1358o.C1359a mo33118b(long j) {
        Pair<Long, Long> a = m33510a(C1220c.m34195b(C1167d0.m34455b(j, 0L, this.f5544c)), this.f5543b, this.f5542a);
        return new AbstractC1358o.C1359a(new C1361p(C1220c.m34196a(((Long) a.first).longValue()), ((Long) a.second).longValue()));
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public boolean mo33119b() {
        return true;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: c */
    public long mo33117c() {
        return this.f5544c;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p090u.C1388e.AbstractC1389a
    /* renamed from: d */
    public long mo33495d() {
        return -1L;
    }
}
