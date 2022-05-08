package com.google.android.gms.internal.measurement;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.PersistableBundle;
import android.support.p001v4.app.NotificationCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.privacystar.core.util.BlockingManager;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzcc.class */
public final class zzcc extends zzau {
    private boolean zzyr;
    private boolean zzys;
    private final AlarmManager zzyt = (AlarmManager) getContext().getSystemService(NotificationCompat.CATEGORY_ALARM);
    private Integer zzyu;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzcc(zzaw zzawVar) {
        super(zzawVar);
    }

    private final int getJobId() {
        if (this.zzyu == null) {
            String valueOf = String.valueOf(getContext().getPackageName());
            this.zzyu = Integer.valueOf((valueOf.length() != 0 ? SettingsJsonConstants.ANALYTICS_KEY.concat(valueOf) : new String(SettingsJsonConstants.ANALYTICS_KEY)).hashCode());
        }
        return this.zzyu.intValue();
    }

    private final PendingIntent zzeo() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(getContext(), 0, intent, 0);
    }

    public final void cancel() {
        this.zzys = false;
        this.zzyt.cancel(zzeo());
        if (Build.VERSION.SDK_INT >= 24) {
            zza("Cancelling job. JobID", Integer.valueOf(getJobId()));
            ((JobScheduler) getContext().getSystemService("jobscheduler")).cancel(getJobId());
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzau
    protected final void zzag() {
        ActivityInfo receiverInfo;
        try {
            cancel();
            if (zzbx.zzea() > 0 && (receiverInfo = getContext().getPackageManager().getReceiverInfo(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2)) != null && receiverInfo.enabled) {
                zzq("Receiver registered for local dispatch.");
                this.zzyr = true;
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    public final boolean zzej() {
        return this.zzys;
    }

    public final boolean zzem() {
        return this.zzyr;
    }

    public final void zzen() {
        zzcl();
        Preconditions.checkState(this.zzyr, "Receiver not registered");
        long zzea = zzbx.zzea();
        if (zzea > 0) {
            cancel();
            long elapsedRealtime = zzbx().elapsedRealtime();
            this.zzys = true;
            zzcf.zzaam.get().booleanValue();
            if (Build.VERSION.SDK_INT >= 24) {
                zzq("Scheduling upload with JobScheduler");
                ComponentName componentName = new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsJobService");
                JobScheduler jobScheduler = (JobScheduler) getContext().getSystemService("jobscheduler");
                JobInfo.Builder builder = new JobInfo.Builder(getJobId(), componentName);
                builder.setMinimumLatency(zzea);
                builder.setOverrideDeadline(zzea << 1);
                PersistableBundle persistableBundle = new PersistableBundle();
                persistableBundle.putString(BlockingManager.ACTION_CONSTANT, "com.google.android.gms.analytics.ANALYTICS_DISPATCH");
                builder.setExtras(persistableBundle);
                JobInfo build = builder.build();
                zza("Scheduling job. JobID", Integer.valueOf(getJobId()));
                jobScheduler.schedule(build);
                return;
            }
            zzq("Scheduling upload with AlarmManager");
            this.zzyt.setInexactRepeating(2, elapsedRealtime + zzea, zzea, zzeo());
        }
    }
}
