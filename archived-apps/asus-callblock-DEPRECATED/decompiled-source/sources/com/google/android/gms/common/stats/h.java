package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.a.g;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/h.class */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static String f4088a = "WakeLockTracker";

    /* renamed from: b  reason: collision with root package name */
    private static h f4089b = new h();
    private static Boolean c;

    public static h a() {
        return f4089b;
    }

    public static void a(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        if (c == null) {
            c = false;
        }
        if (c.booleanValue()) {
            if (TextUtils.isEmpty(str)) {
                String str5 = f4088a;
                String valueOf = String.valueOf(str);
                Log.e(str5, valueOf.length() != 0 ? "missing wakeLock key. ".concat(valueOf) : new String("missing wakeLock key. "));
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (7 == i || 8 == i || 10 == i || 11 == i) {
                if (list != null && list.size() == 1) {
                    list = list;
                    if ("com.google.android.gms".equals(list.get(0))) {
                        list = null;
                    }
                }
                long elapsedRealtime = SystemClock.elapsedRealtime();
                int a2 = g.a(context);
                String packageName = context.getPackageName();
                String str6 = packageName;
                if ("com.google.android.gms".equals(packageName)) {
                    str6 = null;
                }
                try {
                    context.startService(new Intent().setComponent(d.f4084a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", new WakeLockEvent(currentTimeMillis, i, str2, i2, list, str, elapsedRealtime, a2, str3, str6, g.b(context), j, str4)));
                } catch (Exception e) {
                    Log.wtf(f4088a, e);
                }
            }
        }
    }

    public static void a(Context context, String str, String str2, String str3, String str4, int i, List<String> list) {
        a(context, str, 8, str2, str3, str4, i, list, 0L);
    }
}
