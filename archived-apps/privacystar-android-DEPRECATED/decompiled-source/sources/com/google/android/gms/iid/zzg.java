package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Intent;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zzg.class */
final class zzg {
    final Intent intent;
    private final BroadcastReceiver.PendingResult zzbe;
    private boolean zzbf = false;
    private final ScheduledFuture<?> zzbg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.intent = intent;
        this.zzbe = pendingResult;
        this.zzbg = scheduledExecutorService.schedule(new zzh(this, intent), 9500L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void finish() {
        synchronized (this) {
            if (!this.zzbf) {
                this.zzbe.finish();
                this.zzbg.cancel(false);
                this.zzbf = true;
            }
        }
    }
}
