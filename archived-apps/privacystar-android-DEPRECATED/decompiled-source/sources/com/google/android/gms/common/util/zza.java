package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.util.DateUtil;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/zza.class */
public final class zza {
    private static final IntentFilter filter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    private static long zzgt = 0;
    private static float zzgu = Float.NaN;

    @TargetApi(20)
    public static int zzg(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, filter);
        int i = 0;
        int i2 = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        if (PlatformVersion.isAtLeastKitKatWatch() ? powerManager.isInteractive() : powerManager.isScreenOn()) {
            i = 1;
        }
        return (i << 1) | i2;
    }

    public static float zzh(Context context) {
        synchronized (zza.class) {
            try {
                if (SystemClock.elapsedRealtime() - zzgt >= DateUtil.MINUTE_IN_MILLIS || Float.isNaN(zzgu)) {
                    Intent registerReceiver = context.getApplicationContext().registerReceiver(null, filter);
                    if (registerReceiver != null) {
                        zzgu = registerReceiver.getIntExtra(FirebaseAnalytics.Param.LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
                    }
                    zzgt = SystemClock.elapsedRealtime();
                    return zzgu;
                }
                return zzgu;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
