package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC0541m;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.j;
import androidx.work.impl.p015n.AbstractC0508h;
import androidx.work.impl.p015n.C0507g;
import androidx.work.impl.utils.C0522c;
/* renamed from: androidx.work.impl.background.systemalarm.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/a.class */
class C0482a {

    /* renamed from: a */
    private static final String f2484a = AbstractC0541m.m4305f("Alarms");

    /* renamed from: a */
    public static void m4486a(Context context, j jVar, String str) {
        AbstractC0508h y = jVar.v().y();
        C0507g m4413c = y.m4413c(str);
        if (m4413c != null) {
            m4485b(context, str, m4413c.f2588b);
            AbstractC0541m.m4308c().m4310a(f2484a, String.format("Removing SystemIdInfo for workSpecId (%s)", str), new Throwable[0]);
            y.m4412d(str);
        }
    }

    /* renamed from: b */
    private static void m4485b(Context context, String str, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, b.b(context, str), 536870912);
        if (service == null || alarmManager == null) {
            return;
        }
        AbstractC0541m.m4308c().m4310a(f2484a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", str, Integer.valueOf(i)), new Throwable[0]);
        alarmManager.cancel(service);
    }

    /* renamed from: c */
    public static void m4484c(Context context, j jVar, String str, long j) {
        WorkDatabase v = jVar.v();
        AbstractC0508h y = v.y();
        C0507g m4413c = y.m4413c(str);
        if (m4413c != null) {
            m4485b(context, str, m4413c.f2588b);
            m4483d(context, str, m4413c.f2588b, j);
            return;
        }
        int m4344b = new C0522c(v).m4344b();
        y.m4414b(new C0507g(str, m4344b));
        m4483d(context, str, m4344b, j);
    }

    /* renamed from: d */
    private static void m4483d(Context context, String str, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent service = PendingIntent.getService(context, i, b.b(context, str), 134217728);
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, j, service);
            } else {
                alarmManager.set(0, j, service);
            }
        }
    }
}
