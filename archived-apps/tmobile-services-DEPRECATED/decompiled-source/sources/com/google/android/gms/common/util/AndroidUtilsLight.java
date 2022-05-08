package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/AndroidUtilsLight.class */
public class AndroidUtilsLight {
    @KeepForSdk
    /* renamed from: a */
    public static byte[] m14357a(Context context, String str) throws PackageManager.NameNotFoundException {
        MessageDigest b;
        PackageInfo e = Wrappers.m14278a(context).m14283e(str, 64);
        Signature[] signatureArr = e.signatures;
        if (signatureArr == null || signatureArr.length != 1 || (b = m14356b("SHA1")) == null) {
            return null;
        }
        return b.digest(e.signatures[0].toByteArray());
    }

    /* renamed from: b */
    public static MessageDigest m14356b(String str) {
        MessageDigest instance;
        for (int i = 0; i < 2; i++) {
            try {
                instance = MessageDigest.getInstance(str);
            } catch (NoSuchAlgorithmException e) {
            }
            if (instance != null) {
                return instance;
            }
        }
        return null;
    }
}
