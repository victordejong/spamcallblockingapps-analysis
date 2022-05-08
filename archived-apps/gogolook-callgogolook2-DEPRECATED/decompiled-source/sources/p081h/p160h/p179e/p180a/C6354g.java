package p081h.p160h.p179e.p180a;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.p190p.C6431d;
import p081h.p160h.p179e.p180a.p190p.C6438i;
/* renamed from: h.h.e.a.g */
/* loaded from: classes2-dex2jar.jar:h/h/e/a/g.class */
public class C6354g {

    /* renamed from: a */
    public static String f15781a = "prefs_sdk_scheduletaskid";

    /* renamed from: b */
    public static String f15782b = "prefs_sdk_scheduletaskdelayed";

    /* renamed from: a */
    public static void m23072a(Context context) {
        m23066b(context, C6431d.m22627a(context, f15781a, 0L), C6431d.m22627a(context, f15782b, 0L));
    }

    /* renamed from: a */
    public static void m23071a(Context context, long j) {
        if (j > 0) {
            JSONObject a = C6370k.m22930b(context).m22941a(j);
            if (a != null) {
                try {
                    m23069a(context, a.getString("_intentaction"), a.getString("_intentextra"), a.getString("_content"));
                } catch (JSONException e) {
                    C6438i.m22583a(e);
                }
            }
            C6431d.m22620b(context, f15781a, 0L);
            C6431d.m22620b(context, f15782b, 0L);
            C6370k.m22930b(context).m22932b(j);
            JSONObject b = C6370k.m22930b(context).m22933b();
            if (b != null) {
                try {
                    m23066b(context, b.getLong("_id"), b.getLong("_delayed"));
                } catch (JSONException e2) {
                    C6438i.m22583a(e2);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m23070a(Context context, long j, long j2) {
        C6438i.m22579c("prepare startScheduleTask taskId = " + j + ", delayed = " + j2);
        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        Intent intent = new Intent("com.gogolook.whoscallsdk.core.wcsdk_scheduletask");
        intent.putExtra("schedule_taskid", j);
        intent.setPackage(context.getPackageName());
        alarmManager.set(0, j2, PendingIntent.getBroadcast(context, 0, intent, 134217728));
        C6431d.m22620b(context, f15781a, j);
        C6431d.m22620b(context, f15782b, j2);
    }

    /* renamed from: a */
    public static void m23069a(Context context, String str, String str2, String str3) {
        C6438i.m22579c("prepare send broadcast intent_action = " + str + ", intent_extra = " + str2 + ", content = " + str3);
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra(str2, str3);
        intent.setPackage(context.getPackageName());
        context.sendBroadcast(intent);
    }

    /* renamed from: a */
    public static void m23068a(Context context, String str, String str2, String str3, long j) {
        long currentTimeMillis = System.currentTimeMillis();
        if (j == 0 || currentTimeMillis >= j) {
            m23069a(context, str, str2, str3);
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("_content", str3);
        contentValues.put("_intentaction", str);
        contentValues.put("_intentextra", str2);
        contentValues.put("_delayed", Long.valueOf(j));
        long a = C6370k.m22930b(context).m22940a(contentValues);
        if (a > 0) {
            m23066b(context, a, j);
        }
    }

    /* renamed from: b */
    public static void m23067b(Context context) {
        long a = C6431d.m22627a(context, f15781a, 0L);
        C6431d.m22627a(context, f15782b, 0L);
        PendingIntent.getBroadcast(context, 0, new Intent("com.gogolook.whoscallsdk.core.wcsdk_scheduletask"), 268435456);
        C6370k.m22930b(context).m22932b(a);
        C6431d.m22620b(context, f15781a, 0L);
        C6431d.m22620b(context, f15782b, 0L);
    }

    /* renamed from: b */
    public static void m23066b(Context context, long j, long j2) {
        C6438i.m22578d("prepare setScheduleTaskWithId taskId = " + j + ", delayed = " + j2);
        if (j > 0) {
            long currentTimeMillis = System.currentTimeMillis();
            long a = C6431d.m22627a(context, f15781a, 0L);
            long a2 = C6431d.m22627a(context, f15782b, 0L);
            boolean z = false;
            if (PendingIntent.getBroadcast(context, 0, new Intent("com.gogolook.whoscallsdk.core.wcsdk_scheduletask"), 536870912) != null) {
                z = true;
            }
            if (a <= 0 || a == j) {
                m23070a(context, j, j2);
            } else if (currentTimeMillis >= a2) {
                m23071a(context, a);
                m23070a(context, j, j2);
            } else if (j2 <= a2) {
                m23070a(context, j, j2);
            } else if (!z) {
                m23070a(context, a, a2);
            }
        }
    }

    /* renamed from: c */
    public static void m23065c(Context context) {
        try {
            if (C6370k.m22930b(context).m22941a(C6431d.m22627a(context, f15781a, 0L)).getString("_intentaction").equals("com.gogolook.whoscallsdk.core.wcsdk_queuetask")) {
                m23067b(context);
            } else {
                C6370k.m22930b(context).m22938a("com.gogolook.whoscallsdk.core.wcsdk_queuetask");
            }
        } catch (Exception e) {
            C6438i.m22583a(e);
        }
    }
}
