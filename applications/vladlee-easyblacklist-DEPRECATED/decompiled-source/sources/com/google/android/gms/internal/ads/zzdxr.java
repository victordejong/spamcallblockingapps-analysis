package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ResolveInfo;
import android.util.Log;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdxr.class */
public final class zzdxr {

    /* renamed from: a */
    private static String f14725a;

    /* renamed from: a */
    private static boolean m3294a(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 64);
            if (!(queryIntentActivities == null || queryIntentActivities.size() == 0)) {
                for (ResolveInfo resolveInfo : queryIntentActivities) {
                    IntentFilter intentFilter = resolveInfo.filter;
                    if (!(intentFilter == null || intentFilter.countDataAuthorities() == 0 || intentFilter.countDataPaths() == 0 || resolveInfo.activityInfo == null)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (RuntimeException e) {
            Log.e("CustomTabsHelper", "Runtime exception while getting specialized handlers");
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0134, code lost:
        if (r0.contains("com.google.android.apps.chrome") != false) goto L_0x00ca;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String zzcc(android.content.Context r5) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdxr.zzcc(android.content.Context):java.lang.String");
    }
}
