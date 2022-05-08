package com.aotter.net.trek.util;

import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/util/CryptLib.class */
public class CryptLib {

    /* renamed from: a */
    public Cipher f1592a = Cipher.getInstance("AES/CBC/PKCS5Padding");

    /* renamed from: b */
    public byte[] f1593b = new byte[16];

    /* renamed from: c */
    public byte[] f1594c = new byte[16];

    public static String SHA256(String str, int i) {
        MessageDigest instance = MessageDigest.getInstance("SHA-256");
        instance.update(str.getBytes("UTF-8"));
        byte[] digest = instance.digest();
        StringBuffer stringBuffer = new StringBuffer();
        int length = digest.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(digest[i2])));
        }
        return i > stringBuffer.toString().length() ? stringBuffer.toString() : stringBuffer.toString().substring(0, i);
    }

    /* renamed from: a */
    private String m36323a(String str, String str2, EnumC1764a aVar, String str3) {
        String str4;
        int length = str2.getBytes("UTF-8").length;
        int length2 = str2.getBytes("UTF-8").length;
        byte[] bArr = this.f1593b;
        if (length2 > bArr.length) {
            length = bArr.length;
        }
        int length3 = str3.getBytes("UTF-8").length;
        int length4 = str3.getBytes("UTF-8").length;
        byte[] bArr2 = this.f1594c;
        if (length4 > bArr2.length) {
            length3 = bArr2.length;
        }
        System.arraycopy(str2.getBytes("UTF-8"), 0, this.f1593b, 0, length);
        System.arraycopy(str3.getBytes("UTF-8"), 0, this.f1594c, 0, length3);
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f1593b, "AES");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(this.f1594c);
        if (aVar.equals(EnumC1764a.ENCRYPT)) {
            this.f1592a.init(1, secretKeySpec, ivParameterSpec);
            str4 = Base64.encodeToString(this.f1592a.doFinal(str.getBytes("UTF-8")), 2);
        } else {
            str4 = "";
        }
        if (aVar.equals(EnumC1764a.DECRYPT)) {
            this.f1592a.init(2, secretKeySpec, ivParameterSpec);
            str4 = new String(this.f1592a.doFinal(Base64.decode(str.getBytes(), 0)));
        }
        System.out.println(str4);
        return str4;
    }

    public static String generateRandomIV(int i) {
        byte[] bArr = new byte[16];
        new SecureRandom().nextBytes(bArr);
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            stringBuffer.append(String.format("%02x", Byte.valueOf(bArr[i2])));
        }
        return i > stringBuffer.toString().length() ? stringBuffer.toString() : stringBuffer.toString().substring(0, i);
    }

    public static final String md5(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(str.getBytes());
            byte[] digest = instance.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & 255);
                while (hexString.length() < 2) {
                    hexString = "0" + hexString;
                }
                sb.append(hexString);
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String decrypt(String str, String str2, String str3) {
        return m36323a(str, str2, EnumC1764a.DECRYPT, str3);
    }

    public String encrypt(String str, String str2, String str3) {
        return m36323a(str, str2, EnumC1764a.ENCRYPT, str3);
    }
}
