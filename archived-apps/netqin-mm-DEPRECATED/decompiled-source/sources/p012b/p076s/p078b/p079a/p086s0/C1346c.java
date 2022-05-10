package p012b.p076s.p078b.p079a.p086s0;

import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
/* renamed from: b.s.b.a.s0.c */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/c.class */
public class C1346c implements AbstractC1358o {

    /* renamed from: a */
    public final long f5314a;

    /* renamed from: b */
    public final long f5315b;

    /* renamed from: c */
    public final int f5316c;

    /* renamed from: d */
    public final long f5317d;

    /* renamed from: e */
    public final int f5318e;

    /* renamed from: f */
    public final long f5319f;

    public C1346c(long j, long j2, int i, int i2) {
        this.f5314a = j;
        this.f5315b = j2;
        this.f5316c = i2 == -1 ? 1 : i2;
        this.f5318e = i;
        if (j == -1) {
            this.f5317d = -1L;
            this.f5319f = -9223372036854775807L;
            return;
        }
        this.f5317d = j - j2;
        this.f5319f = m33633a(j, j2, i);
    }

    /* renamed from: a */
    public static long m33633a(long j, long j2, int i) {
        return ((Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public AbstractC1358o.C1359a mo33118b(long j) {
        if (this.f5317d == -1) {
            return new AbstractC1358o.C1359a(new C1361p(0L, this.f5315b));
        }
        long c = m33632c(j);
        long d = m33631d(c);
        C1361p pVar = new C1361p(d, c);
        if (d < j) {
            int i = this.f5316c;
            if (i + c < this.f5314a) {
                long j2 = c + i;
                return new AbstractC1358o.C1359a(pVar, new C1361p(m33631d(j2), j2));
            }
        }
        return new AbstractC1358o.C1359a(pVar);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: b */
    public boolean mo33119b() {
        return this.f5317d != -1;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
    /* renamed from: c */
    public long mo33117c() {
        return this.f5319f;
    }

    /* renamed from: c */
    public final long m33632c(long j) {
        long j2 = (j * this.f5318e) / 8000000;
        int i = this.f5316c;
        return this.f5315b + C1167d0.m34455b((j2 / i) * i, 0L, this.f5317d - i);
    }

    /* renamed from: d */
    public long m33631d(long j) {
        return m33633a(j, this.f5315b, this.f5318e);
    }
}
