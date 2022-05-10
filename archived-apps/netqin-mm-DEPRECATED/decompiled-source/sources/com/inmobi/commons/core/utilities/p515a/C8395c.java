package com.inmobi.commons.core.utilities.p515a;

import android.util.Base64;
import com.android.volley.Request;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
/* renamed from: com.inmobi.commons.core.utilities.a.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/a/c.class */
public class C8395c {

    /* renamed from: a */
    public static final String f32648a = "c";

    /* renamed from: a */
    public static String m5702a(String str) {
        String str2 = null;
        if (str != null) {
            if ("".equals(str)) {
                str2 = null;
            } else {
                try {
                    RSAPublicKey rSAPublicKey = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger("C10F7968CFE2C76AC6F0650C877806D4514DE58FC239592D2385BCE5609A84B2A0FBDAF29B05505EAD1FDFEF3D7209ACBF34B5D0A806DF18147EA9C0337D6B5B", 16), new BigInteger("010001", 16)));
                    Cipher instance = Cipher.getInstance("RSA/ECB/nopadding");
                    instance.init(1, rSAPublicKey);
                    str2 = new String(Base64.encode(m5701a(str.getBytes(Request.DEFAULT_PARAMS_ENCODING), instance), 0));
                } catch (Exception e) {
                    new StringBuilder("SDK encountered unexpected error in getting encrypted UID-map; ").append(e.getMessage());
                    str2 = null;
                }
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static byte[] m5701a(byte[] bArr, Cipher cipher) throws IllegalBlockSizeException, BadPaddingException {
        int i = 0;
        byte[] bArr2 = new byte[0];
        int length = bArr.length;
        byte[] bArr3 = new byte[64];
        while (i < length) {
            bArr2 = bArr2;
            byte[] bArr4 = bArr3;
            if (i > 0) {
                bArr2 = bArr2;
                bArr4 = bArr3;
                if (i % 64 == 0) {
                    bArr2 = m5700a(bArr2, cipher.doFinal(bArr3));
                    bArr4 = new byte[i + 64 > length ? length - i : 64];
                }
            }
            bArr4[i % 64] = bArr[i];
            i++;
            bArr3 = bArr4;
        }
        return m5700a(bArr2, cipher.doFinal(bArr3));
    }

    /* renamed from: a */
    public static byte[] m5700a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }
}
