package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import androidx.work.AbstractC0538j;
import androidx.work.AbstractC0541m;
import androidx.work.EnumC0550v;
import androidx.work.impl.C0487f;
import androidx.work.impl.C0490i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.b;
import androidx.work.impl.j;
import androidx.work.impl.p015n.AbstractC0512n;
import androidx.work.impl.p015n.AbstractC0515q;
import androidx.work.impl.p015n.C0513p;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable.class */
public class ForceStopRunnable implements Runnable {

    /* renamed from: i */
    private static final String f2618i = AbstractC0541m.m4305f("ForceStopRunnable");

    /* renamed from: j */
    private static final long f2619j = TimeUnit.DAYS.toMillis(3650);

    /* renamed from: f */
    private final Context f2620f;

    /* renamed from: g */
    private final j f2621g;

    /* renamed from: h */
    private int f2622h = 0;

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver.class */
    public static class BroadcastReceiver extends android.content.BroadcastReceiver {

        /* renamed from: a */
        private static final String f2623a = AbstractC0541m.m4305f("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            AbstractC0541m.m4308c().m4304g(f2623a, "Rescheduling alarm that keeps track of force-stops.", new Throwable[0]);
            ForceStopRunnable.m4364g(context);
        }
    }

    public ForceStopRunnable(Context context, j jVar) {
        this.f2620f = context.getApplicationContext();
        this.f2621g = jVar;
    }

    /* renamed from: c */
    static Intent m4368c(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        return intent;
    }

    /* renamed from: d */
    private static PendingIntent m4367d(Context context, int i) {
        return PendingIntent.getBroadcast(context, -1, m4368c(context), i);
    }

    /* renamed from: g */
    static void m4364g(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent m4367d = m4367d(context, 134217728);
        long currentTimeMillis = System.currentTimeMillis() + f2619j;
        if (alarmManager != null) {
            if (Build.VERSION.SDK_INT >= 19) {
                alarmManager.setExact(0, currentTimeMillis, m4367d);
            } else {
                alarmManager.set(0, currentTimeMillis, m4367d);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public boolean m4370a() {
        boolean z = false;
        boolean i = Build.VERSION.SDK_INT >= 23 ? b.i(this.f2620f, this.f2621g) : false;
        WorkDatabase v = this.f2621g.v();
        AbstractC0515q B = v.B();
        AbstractC0512n A = v.A();
        v.m4811c();
        try {
            List<C0513p> m4392j = B.m4392j();
            boolean z2 = m4392j != null && !m4392j.isEmpty();
            if (z2) {
                for (C0513p c0513p : m4392j) {
                    B.m4400b(EnumC0550v.ENQUEUED, c0513p.f2594a);
                    B.m4399c(c0513p.f2594a, -1L);
                }
            }
            A.m4408b();
            v.m4796r();
            v.m4807g();
            if (z2 || i) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            v.m4807g();
            throw th;
        }
    }

    /* renamed from: b */
    public void m4369b() {
        boolean m4370a = m4370a();
        if (m4363h()) {
            AbstractC0541m.m4308c().m4310a(f2618i, "Rescheduling Workers.", new Throwable[0]);
            this.f2621g.z();
            this.f2621g.r().m4337c(false);
        } else if (m4366e()) {
            AbstractC0541m.m4308c().m4310a(f2618i, "Application was force-stopped, rescheduling.", new Throwable[0]);
            this.f2621g.z();
        } else if (m4370a) {
            AbstractC0541m.m4308c().m4310a(f2618i, "Found unfinished work, scheduling it.", new Throwable[0]);
            C0487f.m4473b(this.f2621g.o(), this.f2621g.v(), this.f2621g.u());
        }
        this.f2621g.y();
    }

    /* renamed from: e */
    public boolean m4366e() {
        if (m4367d(this.f2620f, 536870912) == null) {
            m4364g(this.f2620f);
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public boolean m4365f() {
        if (this.f2621g.t() == null) {
            return true;
        }
        AbstractC0541m m4308c = AbstractC0541m.m4308c();
        String str = f2618i;
        m4308c.m4310a(str, "Found a remote implementation for WorkManager", new Throwable[0]);
        boolean m4335b = C0525f.m4335b(this.f2620f, this.f2621g.o());
        AbstractC0541m.m4308c().m4310a(str, String.format("Is default app process = %s", Boolean.valueOf(m4335b)), new Throwable[0]);
        return m4335b;
    }

    /* renamed from: h */
    boolean m4363h() {
        return this.f2621g.r().m4339a();
    }

    /* renamed from: i */
    public void m4362i(long j) {
        try {
            Thread.sleep(j);
        } catch (InterruptedException e) {
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        int i;
        if (!m4365f()) {
            return;
        }
        while (true) {
            C0490i.m4463e(this.f2620f);
            AbstractC0541m.m4308c().m4310a(f2618i, "Performing cleanup operations.", new Throwable[0]);
            try {
                m4369b();
                return;
            } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteTableLockedException e) {
                i = this.f2622h + 1;
                this.f2622h = i;
                if (i >= 3) {
                    AbstractC0541m m4308c = AbstractC0541m.m4308c();
                    String str = f2618i;
                    m4308c.m4309b(str, "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                    IllegalStateException illegalStateException = new IllegalStateException("The file system on the device is in a bad state. WorkManager cannot access the app's internal data store.", e);
                    AbstractC0538j m4548c = this.f2621g.o().m4548c();
                    if (m4548c == null) {
                        throw illegalStateException;
                    }
                    AbstractC0541m.m4308c().m4310a(str, "Routing exception to the specified exception handler", illegalStateException);
                    m4548c.m4316a(illegalStateException);
                    return;
                }
                AbstractC0541m.m4308c().m4310a(f2618i, String.format("Retrying after %s", Long.valueOf(i * 300)), e);
                m4362i(this.f2622h * 300);
            }
            AbstractC0541m.m4308c().m4310a(f2618i, String.format("Retrying after %s", Long.valueOf(i * 300)), e);
            m4362i(this.f2622h * 300);
        }
    }
}
