package com.vladlee.easyblacklist;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.legacy.content.WakefulBroadcastReceiver;
import com.google.firebase.analytics.FirebaseAnalytics;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/AlarmReceiver.class */
public class AlarmReceiver extends WakefulBroadcastReceiver {
    /* renamed from: a */
    public static void m373a(Context context) {
        m372a(context, 0L);
    }

    /* renamed from: a */
    private static void m372a(Context context, long j) {
        long b = C3395eg.m67b(context);
        long c = C3395eg.m66c(context);
        long currentTimeMillis = System.currentTimeMillis();
        if (C3392ee.m80a(context, "pref_schedule_enable", false)) {
            boolean a = C3392ee.m80a(context, "pref_enable_blocking", true);
            boolean a2 = C3395eg.m70a(context);
            if (a && !a2) {
                m369a(context, false, new Handler());
            } else if (!a && a2) {
                m369a(context, true, new Handler());
            }
            if (c > currentTimeMillis) {
                m371a(context, b + j, c + j);
            }
            if (j == 0) {
                long j2 = b - 86400000;
                if (j2 < currentTimeMillis) {
                    long j3 = c - 86400000;
                    if (j3 > currentTimeMillis && C3395eg.m68a(context, j2)) {
                        m371a(context, j2, j3);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        m369a(context, true, new Handler());
    }

    /* renamed from: a */
    private static void m371a(Context context, long j, long j2) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        if (C3395eg.m68a(context, j)) {
            Intent intent = new Intent(context, AlarmReceiver.class);
            intent.putExtra("alarm_type", 1);
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 1, intent, 0);
            if (Build.VERSION.SDK_INT >= 23) {
                alarmManager.setExactAndAllowWhileIdle(0, j, broadcast);
            } else if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, j, broadcast);
            } else {
                alarmManager.set(0, j, broadcast);
            }
        }
        Intent intent2 = new Intent(context, AlarmReceiver.class);
        intent2.putExtra("alarm_type", 2);
        PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 2, intent2, 0);
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(0, j2, broadcast2);
        } else if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(0, j2, broadcast2);
        } else {
            alarmManager.set(0, j2, broadcast2);
        }
    }

    /* renamed from: a */
    public static void m370a(Context context, Intent intent, Handler handler) {
        Bundle extras = intent.getExtras();
        int i = extras != null ? extras.getInt("alarm_type") : 0;
        if (!C3392ee.m80a(context, "pref_schedule_enable", false)) {
            return;
        }
        if (i == 1) {
            if (C3395eg.m70a(context)) {
                m369a(context, true, handler);
            } else {
                m372a(context, 86400000L);
            }
        } else if (i != 2 || C3395eg.m70a(context)) {
            m372a(context, 86400000L);
        } else {
            m369a(context, false, handler);
            m372a(context, 0L);
        }
    }

    /* renamed from: a */
    private static void m369a(Context context, boolean z, Handler handler) {
        BlockService.m364a(context, z, handler);
        try {
            BlockService.m367a(context);
        } catch (SecurityException e) {
            FirebaseAnalytics.getInstance(context).m646a("alarmReceiver_SecurityException", new Bundle());
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intent intent2 = new Intent(context, AlarmService.class);
        Bundle extras = intent.getExtras();
        if (extras != null) {
            intent2.putExtras(extras);
        }
        startWakefulService(context, intent2);
    }
}
