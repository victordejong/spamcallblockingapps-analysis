package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.lang.Thread;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbo.class */
public final class zzbo extends zzcp {
    private static final AtomicLong zzape = new AtomicLong(Long.MIN_VALUE);
    private ExecutorService zzaea;
    private zzbs zzaov;
    private zzbs zzaow;
    private volatile boolean zzapd;
    private final Object zzapb = new Object();
    private final Semaphore zzapc = new Semaphore(2);
    private final PriorityBlockingQueue<zzbr<?>> zzaox = new PriorityBlockingQueue<>();
    private final BlockingQueue<zzbr<?>> zzaoy = new LinkedBlockingQueue();
    private final Thread.UncaughtExceptionHandler zzaoz = new zzbq(this, "Thread death: Uncaught exception on worker thread");
    private final Thread.UncaughtExceptionHandler zzapa = new zzbq(this, "Thread death: Uncaught exception on network thread");

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbo(zzbt zzbtVar) {
        super(zzbtVar);
    }

    private final void zza(zzbr<?> zzbrVar) {
        synchronized (this.zzapb) {
            this.zzaox.add(zzbrVar);
            if (this.zzaov == null) {
                this.zzaov = new zzbs(this, "Measurement Worker", this.zzaox);
                this.zzaov.setUncaughtExceptionHandler(this.zzaoz);
                this.zzaov.start();
            } else {
                this.zzaov.zzke();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> T zza(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            zzgn().zzc(runnable);
            try {
                atomicReference.wait(15000L);
            } catch (InterruptedException e) {
                zzar zzjg = zzgo().zzjg();
                String valueOf = String.valueOf(str);
                zzjg.zzbx(valueOf.length() != 0 ? "Interrupted waiting for ".concat(valueOf) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            zzar zzjg2 = zzgo().zzjg();
            String valueOf2 = String.valueOf(str);
            zzjg2.zzbx(valueOf2.length() != 0 ? "Timed out waiting for ".concat(valueOf2) : new String("Timed out waiting for "));
        }
        return t;
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final void zzaf() {
        if (Thread.currentThread() != this.zzaov) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final <V> Future<V> zzb(Callable<V> callable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(callable);
        zzbr<?> zzbrVar = new zzbr<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzaov) {
            if (!this.zzaox.isEmpty()) {
                zzgo().zzjg().zzbx("Callable skipped the worker queue.");
            }
            zzbrVar.run();
        } else {
            zza(zzbrVar);
        }
        return zzbrVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ Clock zzbx() {
        return super.zzbx();
    }

    public final <V> Future<V> zzc(Callable<V> callable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(callable);
        zzbr<?> zzbrVar = new zzbr<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.zzaov) {
            zzbrVar.run();
        } else {
            zza(zzbrVar);
        }
        return zzbrVar;
    }

    public final void zzc(Runnable runnable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(runnable);
        zza(new zzbr<>(this, runnable, false, "Task exception on worker thread"));
    }

    public final void zzd(Runnable runnable) throws IllegalStateException {
        zzcl();
        Preconditions.checkNotNull(runnable);
        zzbr<?> zzbrVar = new zzbr<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.zzapb) {
            this.zzaoy.add(zzbrVar);
            if (this.zzaow == null) {
                this.zzaow = new zzbs(this, "Measurement Network", this.zzaoy);
                this.zzaow.setUncaughtExceptionHandler(this.zzapa);
                this.zzaow.start();
            } else {
                this.zzaow.zzke();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzga() {
        super.zzga();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ void zzgb() {
        super.zzgb();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final void zzgc() {
        if (Thread.currentThread() != this.zzaow) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzx zzgk() {
        return super.zzgk();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzan zzgl() {
        return super.zzgl();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzfk zzgm() {
        return super.zzgm();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzbo zzgn() {
        return super.zzgn();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzap zzgo() {
        return super.zzgo();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzba zzgp() {
        return super.zzgp();
    }

    @Override // com.google.android.gms.measurement.internal.zzco
    public final /* bridge */ /* synthetic */ zzn zzgq() {
        return super.zzgq();
    }

    @Override // com.google.android.gms.measurement.internal.zzco, com.google.android.gms.measurement.internal.zzcq
    public final /* bridge */ /* synthetic */ zzk zzgr() {
        return super.zzgr();
    }

    @Override // com.google.android.gms.measurement.internal.zzcp
    protected final boolean zzgt() {
        return false;
    }

    public final boolean zzkb() {
        return Thread.currentThread() == this.zzaov;
    }

    public final ExecutorService zzkc() {
        ExecutorService executorService;
        synchronized (this.zzapb) {
            if (this.zzaea == null) {
                this.zzaea = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new ArrayBlockingQueue(100));
            }
            executorService = this.zzaea;
        }
        return executorService;
    }
}
