package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.dw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dw.class */
public final class C2742dw<V> extends FutureTask<V> implements Comparable<C2742dw> {

    /* renamed from: a */
    final boolean f16721a;

    /* renamed from: b */
    private final long f16722b;

    /* renamed from: c */
    private final String f16723c;

    /* renamed from: d */
    private final /* synthetic */ zzft f16724d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2742dw(zzft zzftVar, Runnable runnable, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.f16724d = zzftVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzft.f17180j;
        this.f16722b = atomicLong.getAndIncrement();
        this.f16723c = str;
        this.f16721a = false;
        if (this.f16722b == Long.MAX_VALUE) {
            zzftVar.zzr().zzf().zza("Tasks index overflow");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2742dw(zzft zzftVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.f16724d = zzftVar;
        Preconditions.checkNotNull(str);
        atomicLong = zzft.f17180j;
        this.f16722b = atomicLong.getAndIncrement();
        this.f16723c = str;
        this.f16721a = z;
        if (this.f16722b == Long.MAX_VALUE) {
            zzftVar.zzr().zzf().zza("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C2742dw dwVar) {
        C2742dw dwVar2 = dwVar;
        boolean z = this.f16721a;
        if (z != dwVar2.f16721a) {
            return z ? -1 : 1;
        }
        long j = this.f16722b;
        long j2 = dwVar2.f16722b;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.f16724d.zzr().zzg().zza("Two tasks share the same index. index", Long.valueOf(this.f16722b));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.f16724d.zzr().zzf().zza(this.f16723c, th);
        if (th instanceof C2740du) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
