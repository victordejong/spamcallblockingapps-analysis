package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.google.android.gms.common.p026n.C0950c;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.google.android.gms.common.util.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/a.class */
public class C0960a {
    /* renamed from: a */
    public static byte[] m3178a(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest m3177b;
        PackageInfo m3205e = C0950c.m3200a(context).m3205e(str, 64);
        Signature[] signatureArr = m3205e.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (m3177b = m3177b("SHA1")) == null) {
            return null;
        }
        return m3177b.digest(m3205e.signatures[0].toByteArray());
    }

    /* renamed from: b */
    public static MessageDigest m3177b(String str) {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }
}
