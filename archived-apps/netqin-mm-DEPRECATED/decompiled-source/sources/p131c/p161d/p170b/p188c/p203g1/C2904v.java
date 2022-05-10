package p131c.p161d.p170b.p188c.p203g1;

import com.android.volley.Request;
import java.nio.charset.Charset;
/* renamed from: c.d.b.c.g1.v */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/v.class */
public final class C2904v {

    /* renamed from: a */
    public byte[] f10530a;

    /* renamed from: b */
    public int f10531b;

    /* renamed from: c */
    public int f10532c;

    public C2904v() {
        this.f10530a = C2885h0.f10482f;
    }

    public C2904v(int i) {
        this.f10530a = new byte[i];
        this.f10532c = i;
    }

    public C2904v(byte[] bArr) {
        this.f10530a = bArr;
        this.f10532c = bArr.length;
    }

    public C2904v(byte[] bArr, int i) {
        this.f10530a = bArr;
        this.f10532c = i;
    }

    /* renamed from: a */
    public int m28552a() {
        return this.f10532c - this.f10531b;
    }

    /* renamed from: a */
    public String m28551a(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.f10531b + i) - 1;
        String a = C2885h0.m28660a(this.f10530a, this.f10531b, (i2 >= this.f10532c || this.f10530a[i2] != 0) ? i : i - 1);
        this.f10531b += i;
        return a;
    }

    /* renamed from: a */
    public String m28550a(int i, Charset charset) {
        String str = new String(this.f10530a, this.f10531b, i, charset);
        this.f10531b += i;
        return str;
    }

    /* renamed from: a */
    public void m28549a(C2903u uVar, int i) {
        m28546a(uVar.f10526a, 0, i);
        uVar.m28558b(0);
    }

    /* renamed from: a */
    public void m28548a(byte[] bArr) {
        m28547a(bArr, bArr.length);
    }

    /* renamed from: a */
    public void m28547a(byte[] bArr, int i) {
        this.f10530a = bArr;
        this.f10532c = i;
        this.f10531b = 0;
    }

    /* renamed from: a */
    public void m28546a(byte[] bArr, int i, int i2) {
        System.arraycopy(this.f10530a, this.f10531b, bArr, i, i2);
        this.f10531b += i2;
    }

    /* renamed from: b */
    public int m28545b() {
        return this.f10530a.length;
    }

    /* renamed from: b */
    public String m28544b(int i) {
        return m28550a(i, Charset.forName(Request.DEFAULT_PARAMS_ENCODING));
    }

    /* renamed from: c */
    public int m28543c() {
        return this.f10531b;
    }

    /* renamed from: c */
    public void m28542c(int i) {
        m28547a(m28545b() < i ? new byte[i] : this.f10530a, i);
    }

    /* renamed from: d */
    public int m28541d() {
        return this.f10532c;
    }

    /* renamed from: d */
    public void m28540d(int i) {
        C2877e.m28734a(i >= 0 && i <= this.f10530a.length);
        this.f10532c = i;
    }

    /* renamed from: e */
    public double m28539e() {
        return Double.longBitsToDouble(m28528n());
    }

    /* renamed from: e */
    public void m28538e(int i) {
        C2877e.m28734a(i >= 0 && i <= this.f10532c);
        this.f10531b = i;
    }

    /* renamed from: f */
    public float m28537f() {
        return Float.intBitsToFloat(m28535g());
    }

    /* renamed from: f */
    public void m28536f(int i) {
        m28538e(this.f10531b + i);
    }

    /* renamed from: g */
    public int m28535g() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f10531b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f10531b = i4;
        byte b3 = bArr[i3];
        this.f10531b = i4 + 1;
        return (bArr[i4] & 255) | ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8);
    }

    /* renamed from: h */
    public int m28534h() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f10531b = i3;
        byte b2 = bArr[i2];
        this.f10531b = i3 + 1;
        return (bArr[i3] & 255) | (((b & 255) << 24) >> 8) | ((b2 & 255) << 8);
    }

    /* renamed from: i */
    public int m28533i() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f10531b = i3;
        byte b2 = bArr[i2];
        int i4 = i3 + 1;
        this.f10531b = i4;
        byte b3 = bArr[i3];
        this.f10531b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (b & 255) | ((b2 & 255) << 8) | ((b3 & 255) << 16);
    }

    /* renamed from: j */
    public long m28532j() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f10531b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f10531b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f10531b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f10531b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f10531b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f10531b = i8;
        long j7 = bArr[i7];
        this.f10531b = i8 + 1;
        return ((bArr[i8] & 255) << 56) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16) | ((j4 & 255) << 24) | ((j5 & 255) << 32) | ((j6 & 255) << 40) | ((j7 & 255) << 48);
    }

    /* renamed from: k */
    public long m28531k() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f10531b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f10531b = i4;
        long j3 = bArr[i3];
        this.f10531b = i4 + 1;
        return ((bArr[i4] & 255) << 24) | (j & 255) | ((j2 & 255) << 8) | ((j3 & 255) << 16);
    }

    /* renamed from: l */
    public int m28530l() {
        int i = m28533i();
        if (i >= 0) {
            return i;
        }
        throw new IllegalStateException("Top bit not zero: " + i);
    }

    /* renamed from: m */
    public int m28529m() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        byte b = bArr[i];
        this.f10531b = i2 + 1;
        return ((bArr[i2] & 255) << 8) | (b & 255);
    }

    /* renamed from: n */
    public long m28528n() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f10531b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f10531b = i4;
        long j3 = bArr[i3];
        int i5 = i4 + 1;
        this.f10531b = i5;
        long j4 = bArr[i4];
        int i6 = i5 + 1;
        this.f10531b = i6;
        long j5 = bArr[i5];
        int i7 = i6 + 1;
        this.f10531b = i7;
        long j6 = bArr[i6];
        int i8 = i7 + 1;
        this.f10531b = i8;
        long j7 = bArr[i7];
        this.f10531b = i8 + 1;
        return (bArr[i8] & 255) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j4 & 255) << 32) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8);
    }

    /* renamed from: o */
    public String m28527o() {
        if (m28552a() == 0) {
            return null;
        }
        int i = this.f10531b;
        while (i < this.f10532c && this.f10530a[i] != 0) {
            i++;
        }
        byte[] bArr = this.f10530a;
        int i2 = this.f10531b;
        String a = C2885h0.m28660a(bArr, i2, i - i2);
        this.f10531b = i;
        if (i < this.f10532c) {
            this.f10531b = i + 1;
        }
        return a;
    }

    /* renamed from: p */
    public short m28526p() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        byte b = bArr[i];
        this.f10531b = i2 + 1;
        return (short) ((bArr[i2] & 255) | ((b & 255) << 8));
    }

    /* renamed from: q */
    public int m28525q() {
        return (m28524r() << 21) | (m28524r() << 14) | (m28524r() << 7) | m28524r();
    }

    /* renamed from: r */
    public int m28524r() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        this.f10531b = i + 1;
        return bArr[i] & 255;
    }

    /* renamed from: s */
    public int m28523s() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f10531b = i3;
        byte b2 = bArr[i2];
        this.f10531b = i3 + 2;
        return (b2 & 255) | ((b & 255) << 8);
    }

    /* renamed from: t */
    public long m28522t() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        long j = bArr[i];
        int i3 = i2 + 1;
        this.f10531b = i3;
        long j2 = bArr[i2];
        int i4 = i3 + 1;
        this.f10531b = i4;
        long j3 = bArr[i3];
        this.f10531b = i4 + 1;
        return (bArr[i4] & 255) | ((j & 255) << 24) | ((j2 & 255) << 16) | ((j3 & 255) << 8);
    }

    /* renamed from: u */
    public int m28521u() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        this.f10531b = i3;
        byte b2 = bArr[i2];
        this.f10531b = i3 + 1;
        return (bArr[i3] & 255) | ((b & 255) << 16) | ((b2 & 255) << 8);
    }

    /* renamed from: v */
    public int m28520v() {
        int g = m28535g();
        if (g >= 0) {
            return g;
        }
        throw new IllegalStateException("Top bit not zero: " + g);
    }

    /* renamed from: w */
    public long m28519w() {
        long n = m28528n();
        if (n >= 0) {
            return n;
        }
        throw new IllegalStateException("Top bit not zero: " + n);
    }

    /* renamed from: x */
    public int m28518x() {
        byte[] bArr = this.f10530a;
        int i = this.f10531b;
        int i2 = i + 1;
        this.f10531b = i2;
        byte b = bArr[i];
        this.f10531b = i2 + 1;
        return (bArr[i2] & 255) | ((b & 255) << 8);
    }

    /* renamed from: y */
    public long m28517y() {
        int i;
        int i2;
        byte b;
        int i3;
        long j = this.f10530a[this.f10531b];
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
                if ((this.f10530a[this.f10531b + i] & 192) == 128) {
                    j = (j << 6) | (b & 63);
                } else {
                    throw new NumberFormatException("Invalid UTF-8 sequence continuation byte: " + j);
                }
            }
            this.f10531b += i2;
            return j;
        }
        throw new NumberFormatException("Invalid UTF-8 sequence first byte: " + j);
    }

    /* renamed from: z */
    public void m28516z() {
        this.f10531b = 0;
        this.f10532c = 0;
    }
}
