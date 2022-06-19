package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p015n.C0505d;
import f.t.a.b;
/* renamed from: androidx.work.impl.utils.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/c.class */
public class C0522c {

    /* renamed from: a */
    private final WorkDatabase f2628a;

    public C0522c(WorkDatabase workDatabase) {
        this.f2628a = workDatabase;
    }

    /* renamed from: a */
    public static void m4345a(Context context, b bVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.id", 0);
        if (sharedPreferences.contains("next_job_scheduler_id") || sharedPreferences.contains("next_job_scheduler_id")) {
            int i = sharedPreferences.getInt("next_job_scheduler_id", 0);
            int i2 = sharedPreferences.getInt("next_alarm_manager_id", 0);
            bVar.beginTransaction();
            try {
                bVar.i0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_job_scheduler_id", Integer.valueOf(i)});
                bVar.i0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"next_alarm_manager_id", Integer.valueOf(i2)});
                sharedPreferences.edit().clear().apply();
                bVar.h0();
            } finally {
                bVar.z0();
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    private int m4343c(String str) {
        this.f2628a.m4811c();
        try {
            Long m4417a = this.f2628a.x().m4417a(str);
            int i = 0;
            int intValue = m4417a != null ? m4417a.intValue() : 0;
            if (intValue != Integer.MAX_VALUE) {
                i = intValue + 1;
            }
            m4341e(str, i);
            this.f2628a.m4796r();
            this.f2628a.m4807g();
            return intValue;
        } catch (Throwable th) {
            this.f2628a.m4807g();
            throw th;
        }
    }

    /* renamed from: e */
    private void m4341e(String str, int i) {
        this.f2628a.x().m4416b(new C0505d(str, i));
    }

    /* renamed from: b */
    public int m4344b() {
        int m4343c;
        synchronized (C0522c.class) {
            try {
                m4343c = m4343c("next_alarm_manager_id");
            } catch (Throwable th) {
                throw th;
            }
        }
        return m4343c;
    }

    /* renamed from: d */
    public int m4342d(int i, int i2) {
        synchronized (C0522c.class) {
            try {
                int m4343c = m4343c("next_job_scheduler_id");
                if (m4343c < i || m4343c > i2) {
                    m4341e("next_job_scheduler_id", i + 1);
                } else {
                    i = m4343c;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }
}
