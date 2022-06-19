package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.p026n.C0950c;
/* renamed from: com.google.android.gms.common.internal.d1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d1.class */
public final class C0907d1 {

    /* renamed from: a */
    private static Object f3525a = new Object();

    /* renamed from: b */
    private static boolean f3526b;

    /* renamed from: c */
    private static int f3527c;

    /* renamed from: a */
    public static int m3369a(Context context) {
        m3368b(context);
        return f3527c;
    }

    /* renamed from: b */
    private static void m3368b(Context context) {
        Bundle bundle;
        synchronized (f3525a) {
            if (f3526b) {
                return;
            }
            f3526b = true;
            try {
                bundle = C0950c.m3200a(context).m3207c(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf("MetadataValueReader", "This should never happen.", e);
            }
            if (bundle == null) {
                return;
            }
            bundle.getString("com.google.app.id");
            f3527c = bundle.getInt("com.google.android.gms.version");
        }
    }
}
