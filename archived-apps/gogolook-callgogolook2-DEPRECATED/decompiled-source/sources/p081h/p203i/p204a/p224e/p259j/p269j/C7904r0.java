package p081h.p203i.p204a.p224e.p259j.p269j;

import java.io.IOException;
import java.util.Arrays;
/* renamed from: h.i.a.e.j.j.r0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/r0.class */
public final class C7904r0 extends AbstractC7890p0 {

    /* renamed from: d */
    public final byte[] f18528d;

    /* renamed from: e */
    public int f18529e;

    /* renamed from: f */
    public int f18530f;

    /* renamed from: g */
    public int f18531g;

    /* renamed from: h */
    public int f18532h;

    /* renamed from: i */
    public int f18533i;

    /* renamed from: j */
    public int f18534j;

    public C7904r0(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f18534j = Integer.MAX_VALUE;
        this.f18528d = bArr;
        this.f18529e = i2 + i;
        this.f18531g = i;
        this.f18532h = this.f18531g;
    }

    /* renamed from: A */
    public final byte m19079A() throws IOException {
        int i = this.f18531g;
        if (i != this.f18529e) {
            byte[] bArr = this.f18528d;
            this.f18531g = i + 1;
            return bArr[i];
        }
        throw C7924t1.m18893a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: a */
    public final double mo19078a() throws IOException {
        return Double.longBitsToDouble(m19048y());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: a */
    public final <T extends AbstractC7925t2> T mo19076a(AbstractC7794e3<T> e3Var, C7965z0 z0Var) throws IOException {
        int v = m19051v();
        if (this.f18509a < this.f18510b) {
            int d = mo19071d(v);
            this.f18509a++;
            T a = e3Var.mo19152a(this, z0Var);
            mo19077a(0);
            this.f18509a--;
            mo19069e(d);
            return a;
        }
        throw C7924t1.m18887f();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: a */
    public final void mo19077a(int i) throws C7924t1 {
        if (this.f18533i != i) {
            throw C7924t1.m18889d();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: b */
    public final float mo19075b() throws IOException {
        return Float.intBitsToFloat(m19049x());
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: b */
    public final boolean mo19074b(int i) throws IOException {
        int d;
        int i2 = i & 7;
        if (i2 != 0) {
            if (i2 == 1) {
                mo19067f(8);
                return true;
            } else if (i2 == 2) {
                mo19067f(m19051v());
                return true;
            } else if (i2 == 3) {
                do {
                    d = mo19072d();
                    if (d == 0) {
                        break;
                    }
                } while (mo19074b(d));
                mo19077a(((i >>> 3) << 3) | 4);
                return true;
            } else if (i2 == 4) {
                return false;
            } else {
                if (i2 == 5) {
                    mo19067f(4);
                    return true;
                }
                throw C7924t1.m18888e();
            }
        } else if (this.f18529e - this.f18531g >= 10) {
            for (int i3 = 0; i3 < 10; i3++) {
                byte[] bArr = this.f18528d;
                int i4 = this.f18531g;
                this.f18531g = i4 + 1;
                if (bArr[i4] >= 0) {
                    return true;
                }
            }
            throw C7924t1.m18890c();
        } else {
            for (int i5 = 0; i5 < 10; i5++) {
                if (m19079A() >= 0) {
                    return true;
                }
            }
            throw C7924t1.m18890c();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: c */
    public final String mo19073c() throws IOException {
        int v = m19051v();
        if (v > 0) {
            int i = this.f18529e;
            int i2 = this.f18531g;
            if (v <= i - i2) {
                String str = new String(this.f18528d, i2, v, C7891p1.f18512a);
                this.f18531g += v;
                return str;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v < 0) {
            throw C7924t1.m18891b();
        }
        throw C7924t1.m18893a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: d */
    public final int mo19072d() throws IOException {
        if (mo19054s()) {
            this.f18533i = 0;
            return 0;
        }
        this.f18533i = m19051v();
        int i = this.f18533i;
        if ((i >>> 3) != 0) {
            return i;
        }
        throw new C7924t1("Protocol message contained an invalid tag (zero).");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: d */
    public final int mo19071d(int i) throws C7924t1 {
        if (i >= 0) {
            int t = i + mo19053t();
            int i2 = this.f18534j;
            if (t <= i2) {
                this.f18534j = t;
                m19047z();
                return i2;
            }
            throw C7924t1.m18893a();
        }
        throw C7924t1.m18891b();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: e */
    public final long mo19070e() throws IOException {
        return m19050w();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: e */
    public final void mo19069e(int i) {
        this.f18534j = i;
        m19047z();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: f */
    public final long mo19068f() throws IOException {
        return m19050w();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: f */
    public final void mo19067f(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.f18529e;
            int i3 = this.f18531g;
            if (i <= i2 - i3) {
                this.f18531g = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw C7924t1.m18891b();
        }
        throw C7924t1.m18893a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: g */
    public final int mo19066g() throws IOException {
        return m19051v();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: h */
    public final long mo19065h() throws IOException {
        return m19048y();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: i */
    public final int mo19064i() throws IOException {
        return m19049x();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: j */
    public final boolean mo19063j() throws IOException {
        return m19050w() != 0;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: k */
    public final String mo19062k() throws IOException {
        int v = m19051v();
        if (v > 0) {
            int i = this.f18529e;
            int i2 = this.f18531g;
            if (v <= i - i2) {
                String c = C7858l4.m19247c(this.f18528d, i2, v);
                this.f18531g += v;
                return c;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v <= 0) {
            throw C7924t1.m18891b();
        }
        throw C7924t1.m18893a();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: l */
    public final AbstractC7791e0 mo19061l() throws IOException {
        byte[] bArr;
        int v = m19051v();
        if (v > 0) {
            int i = this.f18529e;
            int i2 = this.f18531g;
            if (v <= i - i2) {
                AbstractC7791e0 a = AbstractC7791e0.m19474a(this.f18528d, i2, v);
                this.f18531g += v;
                return a;
            }
        }
        if (v == 0) {
            return AbstractC7791e0.f18220b;
        }
        if (v > 0) {
            int i3 = this.f18529e;
            int i4 = this.f18531g;
            if (v <= i3 - i4) {
                this.f18531g = v + i4;
                bArr = Arrays.copyOfRange(this.f18528d, i4, this.f18531g);
                return AbstractC7791e0.m19475a(bArr);
            }
        }
        if (v > 0) {
            throw C7924t1.m18893a();
        } else if (v == 0) {
            bArr = C7891p1.f18513b;
            return AbstractC7791e0.m19475a(bArr);
        } else {
            throw C7924t1.m18891b();
        }
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: m */
    public final int mo19060m() throws IOException {
        return m19051v();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: n */
    public final int mo19059n() throws IOException {
        return m19051v();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: o */
    public final int mo19058o() throws IOException {
        return m19049x();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: p */
    public final long mo19057p() throws IOException {
        return m19048y();
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: q */
    public final int mo19056q() throws IOException {
        int v = m19051v();
        return (-(v & 1)) ^ (v >>> 1);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: r */
    public final long mo19055r() throws IOException {
        long w = m19050w();
        return (-(w & 1)) ^ (w >>> 1);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: s */
    public final boolean mo19054s() throws IOException {
        return this.f18531g == this.f18529e;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.AbstractC7890p0
    /* renamed from: t */
    public final int mo19053t() {
        return this.f18531g - this.f18532h;
    }

    /* renamed from: u */
    public final long m19052u() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte A = m19079A();
            j |= (A & Byte.MAX_VALUE) << i;
            if ((A & 128) == 0) {
                return j;
            }
        }
        throw C7924t1.m18890c();
    }

    /* renamed from: v */
    public final int m19051v() throws IOException {
        int i;
        int i2 = this.f18531g;
        int i3 = this.f18529e;
        if (i3 != i2) {
            byte[] bArr = this.f18528d;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f18531g = i4;
                return b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        i = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            int i10 = i5 + 1;
                            byte b2 = bArr[i5];
                            int i11 = (i9 ^ (b2 << 28)) ^ 266354560;
                            i = i11;
                            i5 = i10;
                            if (b2 < 0) {
                                int i12 = i10 + 1;
                                i = i11;
                                i5 = i12;
                                if (bArr[i10] < 0) {
                                    int i13 = i12 + 1;
                                    i = i11;
                                    i5 = i13;
                                    if (bArr[i12] < 0) {
                                        int i14 = i13 + 1;
                                        i = i11;
                                        i5 = i14;
                                        if (bArr[i13] < 0) {
                                            int i15 = i14 + 1;
                                            i = i11;
                                            i5 = i15;
                                            if (bArr[i14] < 0) {
                                                i5 = i15 + 1;
                                                if (bArr[i15] >= 0) {
                                                    i = i11;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                this.f18531g = i5;
                return i;
            }
        }
        return (int) m19052u();
    }

    /* renamed from: w */
    public final long m19050w() throws IOException {
        long j;
        long j2;
        long j3;
        int i;
        int i2 = this.f18531g;
        int i3 = this.f18529e;
        if (i3 != i2) {
            byte[] bArr = this.f18528d;
            int i4 = i2 + 1;
            byte b = bArr[i2];
            if (b >= 0) {
                this.f18531g = i4;
                return b;
            } else if (i3 - i4 >= 9) {
                int i5 = i4 + 1;
                int i6 = b ^ (bArr[i4] << 7);
                if (i6 < 0) {
                    i = i6 ^ (-128);
                } else {
                    int i7 = i5 + 1;
                    int i8 = i6 ^ (bArr[i5] << 14);
                    if (i8 >= 0) {
                        j = i8 ^ 16256;
                        i5 = i7;
                    } else {
                        i5 = i7 + 1;
                        int i9 = i8 ^ (bArr[i7] << 21);
                        if (i9 < 0) {
                            i = i9 ^ (-2080896);
                        } else {
                            long j4 = i9;
                            int i10 = i5 + 1;
                            long j5 = j4 ^ (bArr[i5] << 28);
                            if (j5 >= 0) {
                                j3 = 266354560;
                                i5 = i10;
                            } else {
                                int i11 = i10 + 1;
                                long j6 = j5 ^ (bArr[i10] << 35);
                                if (j6 < 0) {
                                    j2 = -34093383808L;
                                    i5 = i11;
                                } else {
                                    i5 = i11 + 1;
                                    j5 = j6 ^ (bArr[i11] << 42);
                                    if (j5 >= 0) {
                                        j3 = 4363953127296L;
                                    } else {
                                        int i12 = i5 + 1;
                                        j6 = j5 ^ (bArr[i5] << 49);
                                        if (j6 < 0) {
                                            j2 = -558586000294016L;
                                            i5 = i12;
                                        } else {
                                            i5 = i12 + 1;
                                            j = (j6 ^ (bArr[i12] << 56)) ^ 71499008037633920L;
                                            if (j < 0) {
                                                i5++;
                                                if (bArr[i5] >= 0) {
                                                }
                                            }
                                        }
                                    }
                                }
                                j = j6 ^ j2;
                            }
                            j = j5 ^ j3;
                        }
                    }
                    this.f18531g = i5;
                    return j;
                }
                j = i;
                this.f18531g = i5;
                return j;
            }
        }
        return m19052u();
    }

    /* renamed from: x */
    public final int m19049x() throws IOException {
        int i = this.f18531g;
        if (this.f18529e - i >= 4) {
            byte[] bArr = this.f18528d;
            this.f18531g = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }
        throw C7924t1.m18893a();
    }

    /* renamed from: y */
    public final long m19048y() throws IOException {
        int i = this.f18531g;
        if (this.f18529e - i >= 8) {
            byte[] bArr = this.f18528d;
            this.f18531g = i + 8;
            return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
        }
        throw C7924t1.m18893a();
    }

    /* renamed from: z */
    public final void m19047z() {
        this.f18529e += this.f18530f;
        int i = this.f18529e;
        int i2 = i - this.f18532h;
        int i3 = this.f18534j;
        if (i2 > i3) {
            this.f18530f = i2 - i3;
            this.f18529e = i - this.f18530f;
            return;
        }
        this.f18530f = 0;
    }
}
