package androidx.work.impl;

import android.content.Context;
import android.os.Build;
import androidx.work.AbstractC0541m;
import androidx.work.C0467b;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import androidx.work.impl.background.systemalarm.f;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.impl.background.systemjob.b;
import androidx.work.impl.p015n.AbstractC0515q;
import androidx.work.impl.p015n.C0513p;
import androidx.work.impl.utils.C0523d;
import java.util.List;
/* renamed from: androidx.work.impl.f */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/f.class */
public class C0487f {

    /* renamed from: a */
    private static final String f2502a = AbstractC0541m.m4305f("Schedulers");

    /* renamed from: a */
    static AbstractC0486e m4474a(Context context, j jVar) {
        b bVar;
        if (Build.VERSION.SDK_INT >= 23) {
            bVar = new b(context, jVar);
            C0523d.m4340a(context, SystemJobService.class, true);
            AbstractC0541m.m4308c().m4310a(f2502a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
        } else {
            b m4472c = m4472c(context);
            bVar = m4472c;
            if (m4472c == null) {
                bVar = new f(context);
                C0523d.m4340a(context, SystemAlarmService.class, true);
                AbstractC0541m.m4308c().m4310a(f2502a, "Created SystemAlarmScheduler", new Throwable[0]);
            }
        }
        return bVar;
    }

    /* renamed from: b */
    public static void m4473b(C0467b c0467b, WorkDatabase workDatabase, List<AbstractC0486e> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        AbstractC0515q B = workDatabase.B();
        workDatabase.m4811c();
        try {
            List<C0513p> m4396f = B.m4396f(c0467b.m4544g());
            List<C0513p> m4382t = B.m4382t(200);
            if (m4396f != null && m4396f.size() > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                for (C0513p c0513p : m4396f) {
                    B.m4399c(c0513p.f2594a, currentTimeMillis);
                }
            }
            workDatabase.m4796r();
            if (m4396f != null && m4396f.size() > 0) {
                C0513p[] c0513pArr = (C0513p[]) m4396f.toArray(new C0513p[m4396f.size()]);
                for (AbstractC0486e abstractC0486e : list) {
                    if (abstractC0486e.m4476c()) {
                        abstractC0486e.m4477a(c0513pArr);
                    }
                }
            }
            if (m4382t == null || m4382t.size() <= 0) {
                return;
            }
            C0513p[] c0513pArr2 = (C0513p[]) m4382t.toArray(new C0513p[m4382t.size()]);
            for (AbstractC0486e abstractC0486e2 : list) {
                if (!abstractC0486e2.m4476c()) {
                    abstractC0486e2.m4477a(c0513pArr2);
                }
            }
        } finally {
            workDatabase.m4807g();
        }
    }

    /* renamed from: c */
    private static AbstractC0486e m4472c(Context context) {
        try {
            AbstractC0486e abstractC0486e = (AbstractC0486e) Class.forName("androidx.work.impl.background.gcm.GcmScheduler").getConstructor(Context.class).newInstance(context);
            AbstractC0541m.m4308c().m4310a(f2502a, String.format("Created %s", "androidx.work.impl.background.gcm.GcmScheduler"), new Throwable[0]);
            return abstractC0486e;
        } catch (Throwable th) {
            AbstractC0541m.m4308c().m4310a(f2502a, "Unable to create GCM Scheduler", th);
            return null;
        }
    }
}
