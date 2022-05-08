package com.google.android.gms.iid;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzr.class */
public final class zzr {
    private final ScheduledExecutorService zzbz;
    @GuardedBy("this")
    private zzt zzca;
    @GuardedBy("this")
    private int zzcb;
    private final Context zzk;

    public zzr(Context context) {
        this(context, Executors.newSingleThreadScheduledExecutor());
    }

    @VisibleForTesting
    private zzr(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.zzca = new zzt(this, null);
        this.zzcb = 1;
        this.zzk = context.getApplicationContext();
        this.zzbz = scheduledExecutorService;
    }

    private final <T> Task<T> zzd(zzz<T> zzzVar) {
        Task<T> task;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(zzzVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.zzca.zze(zzzVar)) {
                this.zzca = new zzt(this, null);
                this.zzca.zze(zzzVar);
            }
            task = zzzVar.zzcl.getTask();
        }
        return task;
    }

    private final int zzq() {
        int i;
        synchronized (this) {
            i = this.zzcb;
            this.zzcb = i + 1;
        }
        return i;
    }

    public final Task<Bundle> zzd(int i, Bundle bundle) {
        return zzd(new zzab(zzq(), 1, bundle));
    }
}
