package p081h.p203i.p204a.p224e.p235d.p249s;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;
import android.os.SystemClock;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
/* renamed from: h.i.a.e.d.s.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/s/u.class */
public final class C7092u {

    /* renamed from: b */
    public static long f17206b;

    /* renamed from: a */
    public static final IntentFilter f17205a = new IntentFilter("android.intent.action.BATTERY_CHANGED");

    /* renamed from: c */
    public static float f17207c = Float.NaN;

    @TargetApi(20)
    /* renamed from: a */
    public static int m21100a(Context context) {
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f17205a);
        int i = 0;
        int intExtra = registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0);
        int i2 = 3;
        if (C7083o.m21128d()) {
            i2 = 7;
        }
        int i3 = (intExtra & i2) != 0 ? 1 : 0;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (powerManager == null) {
            return -1;
        }
        if (C7083o.m21125g() ? powerManager.isInteractive() : powerManager.isScreenOn()) {
            i = 2;
        }
        return i | i3;
    }

    /* renamed from: b */
    public static float m21099b(Context context) {
        synchronized (C7092u.class) {
            try {
                if (SystemClock.elapsedRealtime() - f17206b >= 60000 || Float.isNaN(f17207c)) {
                    Intent registerReceiver = context.getApplicationContext().registerReceiver(null, f17205a);
                    if (registerReceiver != null) {
                        f17207c = registerReceiver.getIntExtra(IapPlanRealmObject.LEVEL, -1) / registerReceiver.getIntExtra("scale", -1);
                    }
                    f17206b = SystemClock.elapsedRealtime();
                    return f17207c;
                }
                return f17207c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
