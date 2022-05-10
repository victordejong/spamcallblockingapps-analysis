package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.GoogleSignatureVerifier;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.wrappers.Wrappers;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/UidVerifier.class */
public final class UidVerifier {
    @KeepForSdk
    /* renamed from: a */
    public static boolean m17048a(Context context, int i) {
        if (!m17047a(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return GoogleSignatureVerifier.m17796a(context).m17795a(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException e) {
            if (!Log.isLoggable("UidVerifier", 3)) {
                return false;
            }
            Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            return false;
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m17047a(Context context, int i, String str) {
        return Wrappers.m17026b(context).m17034a(i, str);
    }
}
