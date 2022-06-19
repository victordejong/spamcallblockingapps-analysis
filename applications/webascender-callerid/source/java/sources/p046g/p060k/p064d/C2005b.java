package p046g.p060k.p064d;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
/* renamed from: g.k.d.b */
/* loaded from: classes2-dex2jar.jar:g/k/d/b.class */
public class C2005b {
    /* renamed from: a */
    private static byte[] m402a(String str, String str2) {
        if (!C2009f.m390b(str) || !C2009f.m390b(str2)) {
            return new byte[0];
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(str2.getBytes());
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            return new byte[0];
        }
    }

    /* renamed from: b */
    private static String m401b(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(String.format(Locale.US, "%02x", Integer.valueOf(b & 255)));
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m400c(String str) {
        return C2009f.m390b(str) ? m401b(m402a("SHA-1", str)) : "";
    }
}
