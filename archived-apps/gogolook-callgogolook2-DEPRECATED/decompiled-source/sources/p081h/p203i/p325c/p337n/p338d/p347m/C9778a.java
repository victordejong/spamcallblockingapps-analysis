package p081h.p203i.p325c.p337n.p338d.p347m;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
/* renamed from: h.i.c.n.d.m.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/m/a.class */
public final class C9778a {

    /* renamed from: a */
    public final byte[] f22194a;

    /* renamed from: b */
    public volatile int f22195b = 0;

    static {
        new C9778a(new byte[0]);
    }

    public C9778a(byte[] bArr) {
        this.f22194a = bArr;
    }

    /* renamed from: a */
    public static C9778a m14289a(String str) {
        try {
            return new C9778a(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported.", e);
        }
    }

    /* renamed from: a */
    public static C9778a m14288a(byte[] bArr) {
        return m14287a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static C9778a m14287a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new C9778a(bArr2);
    }

    /* renamed from: a */
    public InputStream m14290a() {
        return new ByteArrayInputStream(this.f22194a);
    }

    /* renamed from: a */
    public void m14286a(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.f22194a, i, bArr, i2, i3);
    }

    /* renamed from: b */
    public int m14285b() {
        return this.f22194a.length;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C9778a)) {
            return false;
        }
        byte[] bArr = this.f22194a;
        int length = bArr.length;
        byte[] bArr2 = ((C9778a) obj).f22194a;
        if (length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = this.f22195b;
        int i2 = i;
        if (i == 0) {
            byte[] bArr = this.f22194a;
            i2 = bArr.length;
            for (byte b : bArr) {
                i2 = (i2 * 31) + b;
            }
            if (i2 == 0) {
                i2 = 1;
            }
            this.f22195b = i2;
        }
        return i2;
    }
}
