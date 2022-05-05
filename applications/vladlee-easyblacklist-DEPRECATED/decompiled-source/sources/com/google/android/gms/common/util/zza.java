package com.google.android.gms.common.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/zza.class */
public final class zza {

    /* renamed from: b */
    private static long f7010b;

    /* renamed from: a */
    private static final IntentFilter f7009a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: c */
    private static float f7011c = Float.NaN;

    public static int zzg(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f7009a);
        int i = 0;
        int i2 = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        if (PlatformVersion.isAtLeastKitKatWatch() ? powerManager.isInteractive() : powerManager.isScreenOn()) {
            i = 2;
        }
        return i | i2;
    }

    public static float zzh(Context context) {
        synchronized (zza.class) {
            try {
                if (SystemClock.elapsedRealtime() - f7010b >= 60000 || Float.isNaN(f7011c)) {
                    Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f7009a);
                    if (registerReceiver != null) {
                        f7011c = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
                    }
                    f7010b = SystemClock.elapsedRealtime();
                    return f7011c;
                }
                return f7011c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
