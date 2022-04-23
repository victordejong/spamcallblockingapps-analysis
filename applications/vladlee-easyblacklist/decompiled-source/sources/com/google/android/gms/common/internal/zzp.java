package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzp.class */
public final class zzp {

    /* renamed from: a */
    private static Object f6855a = new Object();

    /* renamed from: b */
    private static boolean f6856b;

    /* renamed from: c */
    private static String f6857c;

    /* renamed from: d */
    private static int f6858d;

    /* renamed from: a */
    private static void m5651a(Context context) {
        Bundle bundle;
        synchronized (f6855a) {
            if (!f6856b) {
                f6856b = true;
                try {
                    bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
                if (bundle != null) {
                    f6857c = bundle.getString("com.google.app.id");
                    f6858d = bundle.getInt("com.google.android.gms.version");
                }
            }
        }
    }

    public static String zzc(Context context) {
        m5651a(context);
        return f6857c;
    }

    public static int zzd(Context context) {
        m5651a(context);
        return f6858d;
    }
}
