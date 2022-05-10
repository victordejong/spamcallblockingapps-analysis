package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.wrappers.Wrappers;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zzs.class */
public final class zzs {

    /* renamed from: a */
    public static Object f23496a = new Object();

    /* renamed from: b */
    public static boolean f23497b;

    /* renamed from: c */
    public static String f23498c;

    /* renamed from: d */
    public static int f23499d;

    /* renamed from: a */
    public static String m17156a(Context context) {
        m17154c(context);
        return f23498c;
    }

    /* renamed from: b */
    public static int m17155b(Context context) {
        m17154c(context);
        return f23499d;
    }

    /* renamed from: c */
    public static void m17154c(Context context) {
        Bundle bundle;
        synchronized (f23496a) {
            if (!f23497b) {
                f23497b = true;
                try {
                    bundle = Wrappers.m17026b(context).m17032a(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e);
                }
                if (bundle != null) {
                    f23498c = bundle.getString("com.google.app.id");
                    f23499d = bundle.getInt("com.google.android.gms.version");
                }
            }
        }
    }
}
