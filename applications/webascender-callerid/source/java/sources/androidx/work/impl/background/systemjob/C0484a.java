package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build;
import android.os.PersistableBundle;
import androidx.work.AbstractC0541m;
import androidx.work.C0470c;
import androidx.work.C0472d;
import androidx.work.EnumC0466a;
import androidx.work.EnumC0542n;
import androidx.work.impl.p015n.C0513p;
/* renamed from: androidx.work.impl.background.systemjob.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a.class */
class C0484a {

    /* renamed from: b */
    private static final String f2495b = AbstractC0541m.m4305f("SystemJobInfoConverter");

    /* renamed from: a */
    private final ComponentName f2496a;

    /* renamed from: androidx.work.impl.background.systemjob.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemjob/a$a.class */
    public static /* synthetic */ class C0485a {

        /* renamed from: a */
        static final /* synthetic */ int[] f2497a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0542n.values().length];
            f2497a = iArr;
            try {
                iArr[EnumC0542n.NOT_REQUIRED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2497a[EnumC0542n.CONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2497a[EnumC0542n.UNMETERED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2497a[EnumC0542n.NOT_ROAMING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2497a[EnumC0542n.METERED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    C0484a(Context context) {
        this.f2496a = new ComponentName(context.getApplicationContext(), SystemJobService.class);
    }

    /* renamed from: b */
    private static JobInfo.TriggerContentUri m4479b(C0472d.C0473a c0473a) {
        return new JobInfo.TriggerContentUri(c0473a.m4510a(), c0473a.m4509b() ? 1 : 0);
    }

    /* renamed from: c */
    static int m4478c(EnumC0542n enumC0542n) {
        int i = C0485a.f2497a[enumC0542n.ordinal()];
        if (i != 1) {
            if (i == 2) {
                return 1;
            }
            if (i == 3) {
                return 2;
            }
            if (i != 4) {
                if (i == 5 && Build.VERSION.SDK_INT >= 26) {
                    return 4;
                }
            } else if (Build.VERSION.SDK_INT >= 24) {
                return 3;
            }
            AbstractC0541m.m4308c().m4310a(f2495b, String.format("API version too low. Cannot convert network type value %s", enumC0542n), new Throwable[0]);
            return 1;
        }
        return 0;
    }

    /* renamed from: a */
    JobInfo m4480a(C0513p c0513p, int i) {
        C0470c c0470c = c0513p.f2603j;
        int m4478c = m4478c(c0470c.m4535b());
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("EXTRA_WORK_SPEC_ID", c0513p.f2594a);
        persistableBundle.putBoolean("EXTRA_IS_PERIODIC", c0513p.m4404d());
        JobInfo.Builder extras = new JobInfo.Builder(i, this.f2496a).setRequiredNetworkType(m4478c).setRequiresCharging(c0470c.m4530g()).setRequiresDeviceIdle(c0470c.m4529h()).setExtras(persistableBundle);
        if (!c0470c.m4529h()) {
            extras.setBackoffCriteria(c0513p.f2606m, c0513p.f2605l == EnumC0466a.LINEAR ? 0 : 1);
        }
        long max = Math.max(c0513p.m4407a() - System.currentTimeMillis(), 0L);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 <= 28) {
            extras.setMinimumLatency(max);
        } else if (max > 0) {
            extras.setMinimumLatency(max);
        } else {
            extras.setImportantWhileForeground(true);
        }
        if (i2 >= 24 && c0470c.m4532e()) {
            for (C0472d.C0473a c0473a : c0470c.m4536a().m4512b()) {
                extras.addTriggerContentUri(m4479b(c0473a));
            }
            extras.setTriggerContentUpdateDelay(c0470c.m4534c());
            extras.setTriggerContentMaxDelay(c0470c.m4533d());
        }
        extras.setPersisted(false);
        if (Build.VERSION.SDK_INT >= 26) {
            extras.setRequiresBatteryNotLow(c0470c.m4531f());
            extras.setRequiresStorageNotLow(c0470c.m4528i());
        }
        return extras.build();
    }
}
