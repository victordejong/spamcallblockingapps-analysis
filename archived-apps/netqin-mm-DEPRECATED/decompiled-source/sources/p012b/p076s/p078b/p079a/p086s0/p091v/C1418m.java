package p012b.p076s.p078b.p079a.p086s0.p091v;

import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
/* renamed from: b.s.b.a.s0.v.m */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/v/m.class */
public final class C1418m {

    /* renamed from: a */
    public final boolean f5702a;

    /* renamed from: b */
    public final String f5703b;

    /* renamed from: c */
    public final AbstractC1362q.C1363a f5704c;

    /* renamed from: d */
    public final int f5705d;

    /* renamed from: e */
    public final byte[] f5706e;

    public C1418m(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        boolean z2 = true;
        C1160a.m34520a((bArr2 != null ? false : z2) ^ (i == 0));
        this.f5702a = z;
        this.f5703b = str;
        this.f5705d = i;
        this.f5706e = bArr2;
        this.f5704c = new AbstractC1362q.C1363a(m33370a(str), bArr, i2, i3);
    }

    /* renamed from: a */
    public static int m33370a(String str) {
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
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68);
        sb.append("Unsupported protection scheme type '");
        sb.append(str);
        sb.append("'. Assuming AES-CTR crypto mode.");
        C1175j.m34414d("TrackEncryptionBox", sb.toString());
        return 1;
    }
}
