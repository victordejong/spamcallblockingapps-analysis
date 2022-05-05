package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.ads.internal.zzq;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.ads.gb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gb.class */
final class ExecutorC1891gb implements Executor {

    /* renamed from: a */
    private final Handler f8492a = new zzavv(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzq.zzkq();
                zzawb.zza(zzq.zzku().getApplicationContext(), th);
                throw th;
            }
        } else {
            this.f8492a.post(runnable);
        }
    }
}
