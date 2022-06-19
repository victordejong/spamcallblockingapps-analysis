package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.common.p026n.C0950c;
/* renamed from: com.google.android.gms.common.util.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/e.class */
public class C0964e {
    /* renamed from: a */
    public static boolean m3169a() {
        return false;
    }

    /* renamed from: b */
    public static boolean m3168b(Context context, String str) {
        "com.google.android.gms".equals(str);
        try {
            return (C0950c.m3200a(context).m3207c(str, 0).flags & 2097152) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
