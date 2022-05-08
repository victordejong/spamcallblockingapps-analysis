package com.google.android.gms.iid;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.facebook.stetho.common.Utf8Charset;
import java.io.File;
import java.io.UnsupportedEncodingException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzn.class */
final class zzn {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m14138a(Context context, String str) {
        File d = m14135d(context, str);
        if (d.exists()) {
            d.delete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m14137b(Context context) {
        File[] listFiles;
        for (File file : m14136c(context).listFiles()) {
            if (file.getName().startsWith("com.google.InstanceId")) {
                file.delete();
            }
        }
    }

    /* renamed from: c */
    private static File m14136c(Context context) {
        File i = ContextCompat.m19670i(context);
        if (i != null && i.isDirectory()) {
            return i;
        }
        Log.w("InstanceID", "noBackupFilesDir doesn't exist, using regular files directory instead");
        return context.getFilesDir();
    }

    /* renamed from: d */
    private static File m14135d(Context context, String str) {
        String sb;
        if (TextUtils.isEmpty(str)) {
            sb = "com.google.InstanceId.properties";
        } else {
            try {
                String encodeToString = Base64.encodeToString(str.getBytes(Utf8Charset.NAME), 11);
                StringBuilder sb2 = new StringBuilder(String.valueOf(encodeToString).length() + 33);
                sb2.append("com.google.InstanceId_");
                sb2.append(encodeToString);
                sb2.append(".properties");
                sb = sb2.toString();
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
        return new File(m14136c(context), sb);
    }
}
