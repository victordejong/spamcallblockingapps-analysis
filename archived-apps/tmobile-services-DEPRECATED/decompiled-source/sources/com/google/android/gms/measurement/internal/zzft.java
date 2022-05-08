package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzm;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzft.class */
public final class zzft<V> extends FutureTask<V> implements Comparable<zzft<V>> {

    /* renamed from: f */
    private final long f9263f;

    /* renamed from: g */
    final boolean f9264g;

    /* renamed from: h */
    private final String f9265h;

    /* renamed from: i */
    private final /* synthetic */ zzfo f9266i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzft(zzfo zzfoVar, Runnable runnable, boolean z, String str) {
        super(zzm.m11965a().mo11861b(runnable), null);
        AtomicLong atomicLong;
        this.f9266i = zzfoVar;
        Preconditions.m14523k(str);
        atomicLong = zzfo.f9239l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f9263f = andIncrement;
        this.f9265h = str;
        this.f9264g = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzfoVar.mo11081c().m11560D().m11540a("Tasks index overflow");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzft(zzfo zzfoVar, Callable<V> callable, boolean z, String str) {
        super(zzm.m11965a().mo11862a(callable));
        AtomicLong atomicLong;
        this.f9266i = zzfoVar;
        Preconditions.m14523k(str);
        atomicLong = zzfo.f9239l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f9263f = andIncrement;
        this.f9265h = str;
        this.f9264g = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzfoVar.mo11081c().m11560D().m11540a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(@NonNull Object obj) {
        zzft zzftVar = (zzft) obj;
        boolean z = this.f9264g;
        if (z != zzftVar.f9264g) {
            return z ? -1 : 1;
        }
        long j = this.f9263f;
        long j2 = zzftVar.f9263f;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.f9266i.mo11081c().m11559E().m11539b("Two tasks share the same index. index", Long.valueOf(this.f9263f));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.f9266i.mo11081c().m11560D().m11539b(this.f9265h, th);
        if (th instanceof zzfr) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
