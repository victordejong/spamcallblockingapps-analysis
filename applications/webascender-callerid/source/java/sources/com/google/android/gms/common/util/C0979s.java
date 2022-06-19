package com.google.android.gms.common.util;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
/* renamed from: com.google.android.gms.common.util.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/util/s.class */
public final class C0979s {

    /* renamed from: b */
    private static long f3613b;

    /* renamed from: a */
    private static final IntentFilter f3612a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: c */
    private static float f3614c = Float.NaN;

    /* renamed from: a */
    public static int m3114a(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f3612a);
        int intExtra = registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0);
        int i = 3;
        if (C0971m.m3145c()) {
            i = 7;
        }
        int i2 = (intExtra & i) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        int i3 = 0;
        if (C0971m.m3142f() ? powerManager.isInteractive() : powerManager.isScreenOn()) {
            i3 = 2;
        }
        return i3 | i2;
    }

    /* renamed from: b */
    public static float m3113b(Context context) {
        synchronized (C0979s.class) {
            try {
                if (SystemClock.elapsedRealtime() - f3613b < 60000 && !Float.isNaN(f3614c)) {
                    return f3614c;
                }
                Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f3612a);
                if (registerReceiver != null) {
                    f3614c = registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1);
                }
                f3613b = SystemClock.elapsedRealtime();
                return f3614c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
