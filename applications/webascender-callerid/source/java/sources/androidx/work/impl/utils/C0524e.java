package androidx.work.impl.utils;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p015n.C0505d;
import f.t.a.b;
/* renamed from: androidx.work.impl.utils.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/e.class */
public class C0524e {

    /* renamed from: a */
    private final WorkDatabase f2630a;

    public C0524e(WorkDatabase workDatabase) {
        this.f2630a = workDatabase;
    }

    /* renamed from: b */
    public static void m4338b(Context context, b bVar) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("androidx.work.util.preferences", 0);
        if (sharedPreferences.contains("reschedule_needed") || sharedPreferences.contains("last_cancel_all_time_ms")) {
            Object[] objArr = null;
            long j = sharedPreferences.getLong("last_cancel_all_time_ms", 0L);
            if (sharedPreferences.getBoolean("reschedule_needed", false)) {
                objArr = 1;
            }
            bVar.beginTransaction();
            try {
                bVar.i0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"last_cancel_all_time_ms", Long.valueOf(j)});
                bVar.i0("INSERT OR REPLACE INTO `Preference` (`key`, `long_value`) VALUES (@key, @long_value)", new Object[]{"reschedule_needed", Long.valueOf(objArr == 1 ? 1L : 0L)});
                sharedPreferences.edit().clear().apply();
                bVar.h0();
            } finally {
                bVar.z0();
            }
        }
    }

    /* renamed from: a */
    public boolean m4339a() {
        Long m4417a = this.f2630a.x().m4417a("reschedule_needed");
        return m4417a != null && m4417a.longValue() == 1;
    }

    /* renamed from: c */
    public void m4337c(boolean z) {
        this.f2630a.x().m4416b(new C0505d("reschedule_needed", z));
    }
}
