package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzft.class */
public final class zzft extends AbstractC2764er {

    /* renamed from: j */
    private static final AtomicLong f17180j = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: a */
    private C2741dv f17181a;

    /* renamed from: b */
    private C2741dv f17182b;

    /* renamed from: i */
    private volatile boolean f17189i;

    /* renamed from: g */
    private final Object f17187g = new Object();

    /* renamed from: h */
    private final Semaphore f17188h = new Semaphore(2);

    /* renamed from: c */
    private final PriorityBlockingQueue<C2742dw<?>> f17183c = new PriorityBlockingQueue<>();

    /* renamed from: d */
    private final BlockingQueue<C2742dw<?>> f17184d = new LinkedBlockingQueue();

    /* renamed from: e */
    private final Thread.UncaughtExceptionHandler f17185e = new C2739dt(this, "Thread death: Uncaught exception on worker thread");

    /* renamed from: f */
    private final Thread.UncaughtExceptionHandler f17186f = new C2739dt(this, "Thread death: Uncaught exception on network thread");

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzft(zzga zzgaVar) {
        super(zzgaVar);
    }

    /* renamed from: a */
    private final void m1840a(C2742dw<?> dwVar) {
        synchronized (this.f17187g) {
            this.f17183c.add(dwVar);
            if (this.f17181a == null) {
                this.f17181a = new C2741dv(this, "Measurement Worker", this.f17183c);
                this.f17181a.setUncaughtExceptionHandler(this.f17185e);
                this.f17181a.start();
            } else {
                this.f17181a.m2125a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final <T> T m1838a(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            zzq().zza(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                zzey zzi = zzr().zzi();
                String valueOf = String.valueOf(str);
                zzi.zza(valueOf.length() != 0 ? "Interrupted waiting for ".concat(valueOf) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t = atomicReference.get();
        if (t == null) {
            zzey zzi2 = zzr().zzi();
            String valueOf2 = String.valueOf(str);
            zzi2.zza(valueOf2.length() != 0 ? "Timed out waiting for ".concat(valueOf2) : new String("Timed out waiting for "));
        }
        return t;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2764er
    /* renamed from: a */
    protected final boolean mo1646a() {
        return false;
    }

    public final <V> Future<V> zza(Callable<V> callable) {
        m2056l();
        Preconditions.checkNotNull(callable);
        C2742dw<?> dwVar = new C2742dw<>(this, callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f17181a) {
            if (!this.f17183c.isEmpty()) {
                zzr().zzi().zza("Callable skipped the worker queue.");
            }
            dwVar.run();
        } else {
            m1840a(dwVar);
        }
        return dwVar;
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zza() {
        super.zza();
    }

    public final void zza(Runnable runnable) {
        m2056l();
        Preconditions.checkNotNull(runnable);
        m1840a(new C2742dw<>(this, runnable, "Task exception on worker thread"));
    }

    public final <V> Future<V> zzb(Callable<V> callable) {
        m2056l();
        Preconditions.checkNotNull(callable);
        C2742dw<?> dwVar = new C2742dw<>(this, callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f17181a) {
            dwVar.run();
        } else {
            m1840a(dwVar);
        }
        return dwVar;
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ void zzb() {
        super.zzb();
    }

    public final void zzb(Runnable runnable) {
        m2056l();
        Preconditions.checkNotNull(runnable);
        C2742dw<?> dwVar = new C2742dw<>(this, runnable, "Task exception on network thread");
        synchronized (this.f17187g) {
            this.f17184d.add(dwVar);
            if (this.f17182b == null) {
                this.f17182b = new C2741dv(this, "Measurement Network", this.f17184d);
                this.f17182b.setUncaughtExceptionHandler(this.f17186f);
                this.f17182b.start();
            } else {
                this.f17182b.m2125a();
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final void zzc() {
        if (Thread.currentThread() != this.f17182b) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final void zzd() {
        if (Thread.currentThread() != this.f17181a) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    public final boolean zzg() {
        return Thread.currentThread() == this.f17181a;
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzah zzl() {
        return super.zzl();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Clock zzm() {
        return super.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ Context zzn() {
        return super.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzeu zzo() {
        return super.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzkm zzp() {
        return super.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzft zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzew zzr() {
        return super.zzr();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ C2734do zzs() {
        return super.zzs();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo
    public final /* bridge */ /* synthetic */ zzx zzt() {
        return super.zzt();
    }

    @Override // com.google.android.gms.measurement.internal.C2761eo, com.google.android.gms.measurement.internal.AbstractC2763eq
    public final /* bridge */ /* synthetic */ zzw zzu() {
        return super.zzu();
    }
}
