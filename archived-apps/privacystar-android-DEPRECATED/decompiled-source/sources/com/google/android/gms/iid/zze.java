package com.google.android.gms.iid;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.google.android.gms.stats.GCoreWakefulBroadcastReceiver;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/iid/zze.class */
public abstract class zze extends Service {
    private Binder zzay;
    private int zzaz;
    @VisibleForTesting
    final ExecutorService zzax = Executors.newSingleThreadExecutor();
    private final Object lock = new Object();
    private int zzba = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzf(Intent intent) {
        if (intent != null) {
            GCoreWakefulBroadcastReceiver.completeWakefulIntent(intent);
        }
        synchronized (this.lock) {
            this.zzba--;
            if (this.zzba == 0) {
                stopSelfResult(this.zzaz);
            }
        }
    }

    public abstract void handleIntent(Intent intent);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        Binder binder;
        synchronized (this) {
            if (Log.isLoggable("EnhancedIntentService", 3)) {
                Log.d("EnhancedIntentService", "Service received bind request");
            }
            if (this.zzay == null) {
                this.zzay = new zzi(this);
            }
            binder = this.zzay;
        }
        return binder;
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        synchronized (this.lock) {
            this.zzaz = i2;
            this.zzba++;
        }
        if (intent == null) {
            zzf(intent);
            return 2;
        }
        this.zzax.execute(new zzf(this, intent, intent));
        return 3;
    }
}
