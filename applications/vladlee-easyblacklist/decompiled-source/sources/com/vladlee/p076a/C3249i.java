package com.vladlee.p076a;

import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
/* renamed from: com.vladlee.a.i */
/* loaded from: classes-dex2jar.jar:com/vladlee/a/i.class */
public final class C3249i {
    /* renamed from: a */
    private static PublicKey m399a(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e2) {
            Log.e("IABUtil/Security", "Invalid key specification.");
            throw new IllegalArgumentException(e2);
        }
    }

    /* renamed from: a */
    public static boolean m398a(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str3)) {
            return m397a(m399a(str), str2, str3);
        }
        Log.e("IABUtil/Security", "Purchase verification failed: missing data.");
        return false;
    }

    /* renamed from: a */
    private static boolean m397a(PublicKey publicKey, String str, String str2) {
        String str3;
        try {
            byte[] decode = Base64.decode(str2, 0);
            try {
                Signature instance = Signature.getInstance("SHA1withRSA");
                instance.initVerify(publicKey);
                instance.update(str.getBytes());
                if (instance.verify(decode)) {
                    return true;
                }
                Log.e("IABUtil/Security", "Signature verification failed.");
                return false;
            } catch (InvalidKeyException e) {
                str3 = "Invalid key specification.";
                Log.e("IABUtil/Security", str3);
                return false;
            } catch (NoSuchAlgorithmException e2) {
                str3 = "NoSuchAlgorithmException.";
                Log.e("IABUtil/Security", str3);
                return false;
            } catch (SignatureException e3) {
                str3 = "Signature exception.";
                Log.e("IABUtil/Security", str3);
                return false;
            }
        } catch (IllegalArgumentException e4) {
            Log.e("IABUtil/Security", "Base64 decoding failed.");
            return false;
        }
    }
}
