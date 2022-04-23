package com.google.android.gms.internal.measurement;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.UserHandle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzh.class */
public final class zzh {

    /* renamed from: b */
    private static final Method f16304b = m2253a();

    /* renamed from: c */
    private static final Method f16305c = m2251b();

    /* renamed from: a */
    private final JobScheduler f16306a;

    private zzh(JobScheduler jobScheduler) {
        this.f16306a = jobScheduler;
    }

    /* renamed from: a */
    private final int m2252a(JobInfo jobInfo, String str, int i, String str2) {
        Method method = f16304b;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.f16306a, jobInfo, str, Integer.valueOf(i), str2)).intValue();
            } catch (IllegalAccessException | InvocationTargetException e) {
                Log.e(str2, "error calling scheduleAsPackage", e);
            }
        }
        return this.f16306a.schedule(jobInfo);
    }

    /* renamed from: a */
    private static Method m2253a() {
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        try {
            return JobScheduler.class.getDeclaredMethod("scheduleAsPackage", JobInfo.class, String.class, Integer.TYPE, String.class);
        } catch (NoSuchMethodException e) {
            if (!Log.isLoggable("JobSchedulerCompat", 6)) {
                return null;
            }
            Log.e("JobSchedulerCompat", "No scheduleAsPackage method available, falling back to schedule");
            return null;
        }
    }

    /* renamed from: b */
    private static Method m2251b() {
        if (Build.VERSION.SDK_INT < 24) {
            return null;
        }
        try {
            return UserHandle.class.getDeclaredMethod("myUserId", null);
        } catch (NoSuchMethodException e) {
            if (!Log.isLoggable("JobSchedulerCompat", 6)) {
                return null;
            }
            Log.e("JobSchedulerCompat", "No myUserId method available");
            return null;
        }
    }

    /* renamed from: c */
    private static int m2250c() {
        Method method = f16305c;
        if (method == null) {
            return 0;
        }
        try {
            return ((Integer) method.invoke(null, new Object[0])).intValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            if (!Log.isLoggable("JobSchedulerCompat", 6)) {
                return 0;
            }
            Log.e("JobSchedulerCompat", "myUserId invocation illegal", e);
            return 0;
        }
    }

    public static int zza(Context context, JobInfo jobInfo, String str, String str2) {
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        return (f16304b == null || context.checkSelfPermission("android.permission.UPDATE_DEVICE_STATS") != 0) ? jobScheduler.schedule(jobInfo) : new zzh(jobScheduler).m2252a(jobInfo, str, m2250c(), str2);
    }
}
