package p010g.p026l.p030d;

import java.security.MessageDigest;
import java.util.Locale;
/* renamed from: g.l.d.b */
/* loaded from: classes2-dex2jar.jar:g/l/d/b.class */
public class C0282b {
    /* renamed from: a */
    private static byte[] m491a(String str, String str2) {
        if (!C0286f.m479b(str) || !C0286f.m479b(str2)) {
            return new byte[0];
        }
        MessageDigest instance = MessageDigest.getInstance(str);
        instance.update(str2.getBytes());
        return instance.digest();
    }

    /* renamed from: b */
    private static String m490b(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m489c(String str) {
        return C0286f.m479b(str) ? m490b(m491a("SHA-1", str)) : "";
    }
}
