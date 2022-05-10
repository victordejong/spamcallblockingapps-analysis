package p131c.p161d.p170b.p188c.p210w0.p215v;

import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p210w0.AbstractC3054q;
/* renamed from: c.d.b.c.w0.v.m */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/v/m.class */
public final class C3111m {

    /* renamed from: a */
    public final boolean f11342a;

    /* renamed from: b */
    public final String f11343b;

    /* renamed from: c */
    public final AbstractC3054q.C3055a f11344c;

    /* renamed from: d */
    public final int f11345d;

    /* renamed from: e */
    public final byte[] f11346e;

    public C3111m(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        boolean z2 = true;
        C2877e.m28734a((bArr2 != null ? false : z2) ^ (i == 0));
        this.f11342a = z;
        this.f11343b = str;
        this.f11345d = i;
        this.f11346e = bArr2;
        this.f11344c = new AbstractC3054q.C3055a(m27799a(str), bArr, i2, i3);
    }

    /* renamed from: a */
    public static int m27799a(String str) {
        if (str == null) {
            return 1;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals("cbc1")) {
                    c = 2;
                    break;
                }
                break;
            case 3046671:
                if (str.equals("cbcs")) {
                    c = 3;
                    break;
                }
                break;
            case 3049879:
                if (str.equals("cenc")) {
                    c = 0;
                    break;
                }
                break;
            case 3049895:
                if (str.equals("cens")) {
                    c = 1;
                    break;
                }
                break;
        }
        if (c == 0 || c == 1) {
            return 1;
        }
        if (c == 2 || c == 3) {
            return 2;
        }
        C2894o.m28594d("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
        return 1;
    }
}
