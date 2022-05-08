package p081h.p447o.p448a.p449a;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
/* renamed from: h.o.a.a.a */
/* loaded from: classes2-dex2jar.jar:h/o/a/a/a.class */
public class C10829a {
    /* renamed from: a */
    public static byte[] m10523a(String str, String str2) {
        Cipher instance = Cipher.getInstance("AES");
        instance.init(1, new SecretKeySpec(str2.getBytes("UTF-8"), "AES"));
        return instance.doFinal(str.getBytes("UTF-8"));
    }
}
