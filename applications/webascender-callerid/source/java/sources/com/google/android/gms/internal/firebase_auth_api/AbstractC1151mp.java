package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.ap;
import com.google.android.gms.internal.firebase-auth-api.bp;
import com.google.android.gms.internal.firebase-auth-api.fp;
import com.google.android.gms.internal.firebase-auth-api.hp;
import com.google.android.gms.internal.firebase-auth-api.mp;
import com.google.android.gms.internal.firebase-auth-api.pp;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.mp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/mp.class */
public abstract class AbstractC1151mp implements Iterable<Byte>, Serializable {

    /* renamed from: g */
    public static final mp f3756g = new jp(C1117k.f3739b);

    /* renamed from: h */
    private static final fp f3757h;

    /* renamed from: f */
    private int f3758f = 0;

    static {
        f3757h = C1243wo.m2371a() ? new lp((bp) null) : new dp((bp) null);
    }

    AbstractC1151mp() {
    }

    /* renamed from: B */
    static int m2734B(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) < 0) {
            if (i < 0) {
                StringBuilder sb = new StringBuilder(32);
                sb.append("Beginning index: ");
                sb.append(i);
                sb.append(" < 0");
                throw new IndexOutOfBoundsException(sb.toString());
            } else if (i2 < i) {
                StringBuilder sb2 = new StringBuilder(66);
                sb2.append("Beginning index larger than ending index: ");
                sb2.append(i);
                sb2.append(", ");
                sb2.append(i2);
                throw new IndexOutOfBoundsException(sb2.toString());
            } else {
                StringBuilder sb3 = new StringBuilder(37);
                sb3.append("End index: ");
                sb3.append(i2);
                sb3.append(" >= ");
                sb3.append(i3);
                throw new IndexOutOfBoundsException(sb3.toString());
            }
        }
        return i4;
    }

    /* renamed from: q */
    public static mp m2723q(byte[] bArr, int i, int i2) {
        m2734B(i, i + i2, bArr.length);
        return new jp(f3757h.m2867a(bArr, i, i2));
    }

    /* renamed from: s */
    public static mp m2722s(byte[] bArr) {
        return m2723q(bArr, 0, bArr.length);
    }

    /* renamed from: t */
    static mp m2721t(byte[] bArr) {
        return new jp(bArr);
    }

    /* renamed from: u */
    public static mp m2720u(String str) {
        return new jp(str.getBytes(C1117k.f3738a));
    }

    /* renamed from: x */
    static hp m2717x(int i) {
        return new C1095hp(i, null);
    }

    /* renamed from: c */
    public abstract byte m2733c(int i);

    /* renamed from: d */
    abstract byte m2732d(int i);

    public abstract boolean equals(Object obj);

    /* renamed from: g */
    public abstract int m2731g();

    /* renamed from: h */
    protected abstract void m2730h(byte[] bArr, int i, int i2, int i3);

    public final int hashCode() {
        int i = this.f3758f;
        int i2 = i;
        if (i == 0) {
            int m2731g = m2731g();
            int m2725n = m2725n(m2731g, 0, m2731g);
            i2 = m2725n;
            if (m2725n == 0) {
                i2 = 1;
            }
            this.f3758f = i2;
        }
        return i2;
    }

    /* renamed from: i */
    public abstract mp m2729i(int i, int i2);

    @Override // java.lang.Iterable
    public final /* bridge */ /* synthetic */ Iterator<Byte> iterator() {
        return new bp(this);
    }

    /* renamed from: j */
    abstract void m2728j(ap apVar) throws IOException;

    /* renamed from: k */
    protected abstract String m2727k(Charset charset);

    /* renamed from: m */
    public abstract boolean m2726m();

    /* renamed from: n */
    protected abstract int m2725n(int i, int i2, int i3);

    /* renamed from: p */
    public abstract pp m2724p();

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(m2731g()), m2731g() <= 50 ? C1040e1.m2948a(this) : String.valueOf(C1040e1.m2948a(m2729i(0, 47))).concat("..."));
    }

    /* renamed from: v */
    public final byte[] m2719v() {
        int m2731g = m2731g();
        if (m2731g == 0) {
            return C1117k.f3739b;
        }
        byte[] bArr = new byte[m2731g];
        m2730h(bArr, 0, 0, m2731g);
        return bArr;
    }

    /* renamed from: w */
    public final String m2718w(Charset charset) {
        return m2731g() == 0 ? "" : m2727k(charset);
    }

    /* renamed from: y */
    protected final int m2716y() {
        return this.f3758f;
    }
}
