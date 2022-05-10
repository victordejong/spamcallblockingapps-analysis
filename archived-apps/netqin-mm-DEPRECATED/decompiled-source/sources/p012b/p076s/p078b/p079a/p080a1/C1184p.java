package p012b.p076s.p078b.p079a.p080a1;

import com.android.volley.Request;
import java.nio.charset.Charset;
/* renamed from: b.s.b.a.a1.p */
/* loaded from: classes-dex2jar.jar:b/s/b/a/a1/p.class */
public final class C1184p {

    /* renamed from: a */
    public byte[] f4738a;

    /* renamed from: b */
    public int f4739b;

    /* renamed from: c */
    public int f4740c;

    public C1184p() {
        this.f4738a = C1167d0.f4693f;
    }

    public C1184p(int i) {
        this.f4738a = new byte[i];
        this.f4740c = i;
    }

    public C1184p(byte[] bArr) {
        this.f4738a = bArr;
        this.f4740c = bArr.length;
    }

    public C1184p(byte[] bArr, int i) {
        this.f4738a = bArr;
        this.f4740c = i;
    }

    /* renamed from: a */
    public int m34372a() {
        return this.f4740c - this.f4739b;
    }

    /* renamed from: a */
    public String m34371a(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.f4739b + i) - 1;
        String a = C1167d0.m34468a(this.f4738a, this.f4739b, (i2 >= this.f4740c || this.f4738a[i2] != 0) ? i : i - 1);
        this.f4739b += i;
        return a;
    }

    /* renamed from: a */
    public String m34370a(int i, Charset charset) {
        String str = new String(this.f4738a, this.f4739b, i, charset);
        this.f4739b += i;
        return str;
    }

    /* renamed from: a */
    public void m34369a(C1183o oVar, int i) {
        m34366a(oVar.f4734a, 0, i);
        oVar.m34378b(0);
    }

    /* renamed from: a */
    public void m34368a(byte[] bArr) {
        m34367a(bArr, bArr.length);
    }

    /* renamed from: a */
    public void m34367a(byte[] bArr, int i) {
        this.f4738a = bArr;
        this.f4740c = i;
        this.f4739b = 0;
    }

    /* renamed from: a */
    public void m34366a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f4738a, this.f4739b, bArr, i, i2);
        this.f4739b += i2;
    }

    /* renamed from: b */
    public int m34365b() {
        return this.f4738a.length;
    }

    /* renamed from: b */
    public String m34364b(int i) {
        return m34370a(i, Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
    }

    /* renamed from: c */
    public int m34363c() {
        return this.f4739b;
    }

    /* renamed from: c */
    public void m34362c(int i) {
        m34367a(m34365b() < i ? new byte[i] : this.f4738a, i);
    }

    /* renamed from: d */
    public int m34361d() {
        return this.f4740c;
    }

    /* renamed from: d */
    public void m34360d(int i) {
        C1160a.m34520a(i >= 0 && i <= this.f4738a.length);
        this.f4740c = i;
    }

    /* renamed from: e */
    public double m34359e() {
        return Double.longBitsToDouble(m34348n());
    }

    /* renamed from: e */
    public void m34358e(int i) {
        C1160a.m34520a(i >= 0 && i <= this.f4740c);
        this.f4739b = i;
    }

    /* renamed from: f */
    public int m34357f() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f4739b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4739b = i4;
        byte b3 = bArr[i3];
        this.f4739b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: f */
    public void m34356f(int i) {
        m34358e(this.f4739b + i);
    }

    /* renamed from: g */
    public int m34355g() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f4739b = i3;
        byte b2 = bArr[i2];
        this.f4739b = i3 + 1;
        return (bArr[i3] & 255) | (((b & 255) << 24) >> 8) | ((b2 & 255) << 8);
    }

    /* renamed from: h */
    public String m34354h() {
        if (m34372a() == 0) {
            return null;
        }
        int i = this.f4739b;
        while (i < this.f4740c && !C1167d0.m34436g(this.f4738a[i])) {
            i++;
        }
        int i2 = this.f4739b;
        if (i - i2 >= 3) {
            byte[] bArr = this.f4738a;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.f4739b = i2 + 3;
            }
        }
        byte[] bArr2 = this.f4738a;
        int i3 = this.f4739b;
        String a = C1167d0.m34468a(bArr2, i3, i - i3);
        this.f4739b = i;
        int i4 = this.f4740c;
        if (i == i4) {
            return a;
        }
        if (this.f4738a[i] == 13) {
            int i5 = i + 1;
            this.f4739b = i5;
            if (i5 == i4) {
                return a;
            }
        }
        byte[] bArr3 = this.f4738a;
        int i6 = this.f4739b;
        if (bArr3[i6] == 10) {
            this.f4739b = i6 + 1;
        }
        return a;
    }

    /* renamed from: i */
    public int m34353i() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f4739b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4739b = i4;
        byte b3 = bArr[i3];
        this.f4739b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16);
    }

    /* renamed from: j */
    public long m34352j() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f4739b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4739b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f4739b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f4739b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f4739b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f4739b = i8;
        long j7 = bArr[i7];
        this.f4739b = i8 + 1;
        return ((bArr[i8] & 255) << 56) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40) | ((j7 & 255) << 48);
    }

    /* renamed from: k */
    public long m34351k() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f4739b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4739b = i4;
        long j3 = bArr[i3];
        this.f4739b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16);
    }

    /* renamed from: l */
    public int m34350l() {
        int i = m34353i();
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(i);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: m */
    public int m34349m() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        byte b = bArr[i];
        this.f4739b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: n */
    public long m34348n() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f4739b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4739b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f4739b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f4739b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f4739b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f4739b = i8;
        long j7 = bArr[i7];
        this.f4739b = i8 + 1;
        return (bArr[i8] & 255) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8);
    }

    /* renamed from: o */
    public String m34347o() {
        if (m34372a() == 0) {
            return null;
        }
        int i = this.f4739b;
        while (i < this.f4740c && this.f4738a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f4738a;
        int i2 = this.f4739b;
        String a = C1167d0.m34468a(bArr, i2, i - i2);
        this.f4739b = i;
        if (i < this.f4740c) {
            this.f4739b = i + 1;
        }
        return a;
    }

    /* renamed from: p */
    public short m34346p() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        byte b = bArr[i];
        this.f4739b = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    /* renamed from: q */
    public int m34345q() {
        return (m34344r() << 21) | (m34344r() << 14) | (m34344r() << 7) | m34344r();
    }

    /* renamed from: r */
    public int m34344r() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        this.f4739b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: s */
    public int m34343s() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f4739b = i3;
        byte b2 = bArr[i2];
        this.f4739b = i3 + 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    /* renamed from: t */
    public long m34342t() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f4739b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f4739b = i4;
        long j3 = bArr[i3];
        this.f4739b = i4 + 1;
        return (bArr[i4] & 255) | ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8);
    }

    /* renamed from: u */
    public int m34341u() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f4739b = i3;
        byte b2 = bArr[i2];
        this.f4739b = i3 + 1;
        return (bArr[i3] & 255) | ((b & 255) << 16) | ((b2 & 255) << 8);
    }

    /* renamed from: v */
    public int m34340v() {
        int f = m34357f();
        if (f >= 0) {
            return f;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append("Top bit not zero: ");
        sb.append(f);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: w */
    public long m34339w() {
        long n = m34348n();
        if (n >= 0) {
            return n;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(n);
        throw new IllegalStateException(sb.toString());
    }

    /* renamed from: x */
    public int m34338x() {
        byte[] bArr = this.f4738a;
        int i = this.f4739b;
        int i2 = i + 1;
        this.f4739b = i2;
        byte b = bArr[i];
        this.f4739b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: y */
    public long m34337y() {
        int i;
        int i2;
        byte b;
        int i3;
        long j = this.f4738a[this.f4739b];
        int i4 = 7;
        while (true) {
            if (i4 < 0) {
                break;
            }
            if (((1 << i4) & j) != 0) {
                i4--;
            } else if (i4 < 6) {
                j &= i3 - 1;
                i2 = 7 - i4;
            } else if (i4 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 != 0) {
            for (i = 1; i < i2; i++) {
                if ((this.f4738a[this.f4739b + i] & 192) == 128) {
                    j = (j << 6) | (b & 63);
                } else {
                    StringBuilder sb = new StringBuilder(62);
                    sb.append("Invalid UTF-8 sequence continuation byte: ");
                    sb.append(j);
                    throw new NumberFormatException(sb.toString());
                }
            }
            this.f4739b += i2;
            return j;
        }
        StringBuilder sb2 = new StringBuilder(55);
        sb2.append("Invalid UTF-8 sequence first byte: ");
        sb2.append(j);
        throw new NumberFormatException(sb2.toString());
    }

    /* renamed from: z */
    public void m34336z() {
        this.f4739b = 0;
        this.f4740c = 0;
    }
}
