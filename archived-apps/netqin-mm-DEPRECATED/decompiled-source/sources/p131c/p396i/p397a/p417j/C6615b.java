package p131c.p396i.p397a.p417j;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: c.i.a.j.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/j/b.class */
public class C6615b {
    /* renamed from: a */
    public static String m20362a(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuffer stringBuffer = new StringBuffer("");
            for (byte b : digest) {
                int i = b;
                if (b < 0) {
                    i = b + 256;
                }
                if (i < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i));
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }
}
