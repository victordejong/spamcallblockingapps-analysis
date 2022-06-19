package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.C0894i;
import com.google.android.gms.common.p026n.C0950c;
/* renamed from: com.google.android.gms.common.util.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/p.class */
public final class C0974p {
    /* renamed from: a */
    public static boolean m3130a(Context context, int i) {
        if (!m3129b(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return C0894i.m3460a(context).m3459b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException e) {
            if (!Log.isLoggable("UidVerifier", 3)) {
                return false;
            }
            Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m3129b(Context context, int i, String str) {
        return C0950c.m3200a(context).m3202h(i, str);
    }
}
