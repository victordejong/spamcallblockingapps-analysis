package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import java.security.MessageDigest;
import java.util.Formatter;
/* renamed from: com.appsflyer.internal.ab */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/ab.class */
public final class C0652ab {
    C0652ab() {
    }

    /* renamed from: ı */
    public static String m4086(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
            str2 = m4085(messageDigest.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to SHA1");
            AFLogger.afErrorLog(sb.toString(), e);
            str2 = null;
        }
        return str2;
    }

    /* renamed from: ı */
    private static String m4085(byte[] bArr) {
        Formatter formatter = new Formatter();
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            formatter.format("%02x", Byte.valueOf(bArr[i]));
        }
        String obj = formatter.toString();
        formatter.close();
        return obj;
    }

    /* renamed from: ǃ */
    public static String m4084(long j) {
        StringBuilder sb = new StringBuilder();
        sb.append(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY));
        sb.append(j);
        return m4086(sb.toString());
    }

    /* renamed from: ɩ */
    public static String m4083(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes());
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(Integer.toString((b & 255) + 256, 16).substring(1));
            }
            str2 = sb.toString();
        } catch (Exception e) {
            StringBuilder sb2 = new StringBuilder("Error turning ");
            sb2.append(str.substring(0, 6));
            sb2.append(".. to SHA-256");
            AFLogger.afErrorLog(sb2.toString(), e);
            str2 = null;
        }
        return str2;
    }

    /* renamed from: ι */
    public static String m4082(String str) {
        String str2;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(str.getBytes("UTF-8"));
            str2 = m4085(messageDigest.digest());
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder("Error turning ");
            sb.append(str.substring(0, 6));
            sb.append(".. to MD5");
            AFLogger.afErrorLog(sb.toString(), e);
            str2 = null;
        }
        return str2;
    }
}
