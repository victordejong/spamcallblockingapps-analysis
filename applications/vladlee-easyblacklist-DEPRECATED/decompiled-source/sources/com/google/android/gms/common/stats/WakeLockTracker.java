package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.zza;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/WakeLockTracker.class */
public class WakeLockTracker {

    /* renamed from: b */
    private static Boolean f6963b;

    /* renamed from: a */
    private static WakeLockTracker f6962a = new WakeLockTracker();

    /* renamed from: c */
    private static boolean f6964c = false;

    /* renamed from: a */
    private static void m5571a(Context context, WakeLockEvent wakeLockEvent) {
        try {
            context.startService(new Intent().setComponent(LoggingConstants.zzfg).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", wakeLockEvent));
        } catch (Exception e) {
            Log.wtf("WakeLockTracker", e);
        }
    }

    /* renamed from: a */
    private static boolean m5572a() {
        if (f6963b == null) {
            f6963b = Boolean.FALSE;
        }
        return f6963b.booleanValue();
    }

    public static WakeLockTracker getInstance() {
        return f6962a;
    }

    public void registerAcquireEvent(Context context, Intent intent, String str, String str2, String str3, int i, String str4) {
        registerEvent(context, intent.getStringExtra(LoggingConstants.EXTRA_WAKE_LOCK_KEY), 7, str, str2, str3, i, Arrays.asList(str4));
    }

    public void registerDeadlineEvent(Context context, String str, String str2, String str3, int i, List<String> list, boolean z, long j) {
        if (m5572a()) {
            m5571a(context, new WakeLockEvent(System.currentTimeMillis(), 16, str, i, StatsUtils.m5573a(list), null, j, zza.zzg(context), str2, StatsUtils.m5574a(context.getPackageName()), zza.zzh(context), 0L, str3, z));
        }
    }

    public void registerEvent(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list) {
        registerEvent(context, str, i, str2, str3, str4, i2, list, 0L);
    }

    public void registerEvent(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        if (m5572a()) {
            if (TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                Log.e("WakeLockTracker", valueOf.length() != 0 ? "missing wakeLock key. ".concat(valueOf) : new String("missing wakeLock key. "));
            } else if (7 == i || 8 == i || 10 == i || 11 == i) {
                m5571a(context, new WakeLockEvent(System.currentTimeMillis(), i, str2, i2, StatsUtils.m5573a(list), str, SystemClock.elapsedRealtime(), zza.zzg(context), str3, StatsUtils.m5574a(context.getPackageName()), zza.zzh(context), j, str4, false));
            }
        }
    }

    public void registerReleaseEvent(Context context, Intent intent) {
        registerEvent(context, intent.getStringExtra(LoggingConstants.EXTRA_WAKE_LOCK_KEY), 8, null, null, null, 0, null);
    }
}
