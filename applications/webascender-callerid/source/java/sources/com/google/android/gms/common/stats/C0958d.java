package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.C0979s;
import java.util.List;
/* renamed from: com.google.android.gms.common.stats.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/d.class */
public class C0958d {

    /* renamed from: a */
    private static C0958d f3590a = new C0958d();

    /* renamed from: b */
    private static Boolean f3591b;

    /* renamed from: a */
    public static C0958d m3183a() {
        return f3590a;
    }

    /* renamed from: d */
    private static void m3180d(Context context, WakeLockEvent wakeLockEvent) {
        try {
            context.startService(new Intent().setComponent(C0956b.f3589a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", (Parcelable) wakeLockEvent));
        } catch (Exception e) {
            Log.wtf("WakeLockTracker", e);
        }
    }

    /* renamed from: e */
    private static boolean m3179e() {
        if (f3591b == null) {
            f3591b = Boolean.FALSE;
        }
        return f3591b.booleanValue();
    }

    /* renamed from: b */
    public void m3182b(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list) {
        m3181c(context, str, i, str2, str3, str4, i2, list, 0L);
    }

    /* renamed from: c */
    public void m3181c(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        if (!m3179e()) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            String valueOf = String.valueOf(str);
            Log.e("WakeLockTracker", valueOf.length() != 0 ? "missing wakeLock key. ".concat(valueOf) : new String("missing wakeLock key. "));
        } else if (7 != i && 8 != i && 10 != i && 11 != i) {
        } else {
            m3180d(context, new WakeLockEvent(System.currentTimeMillis(), i, str2, i2, C0957c.m3184c(list), str, SystemClock.elapsedRealtime(), C0979s.m3114a(context), str3, C0957c.m3185b(context.getPackageName()), C0979s.m3113b(context), j, str4, false));
        }
    }
}
