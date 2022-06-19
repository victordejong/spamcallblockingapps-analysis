package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* renamed from: com.google.android.gms.measurement.internal.m4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/m4.class */
final class C1548m4<V> extends FutureTask<V> implements Comparable<C1548m4<V>> {

    /* renamed from: f */
    private final long f4385f;

    /* renamed from: g */
    final boolean f4386g;

    /* renamed from: h */
    private final String f4387h;

    /* renamed from: i */
    final /* synthetic */ o4 f4388i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1548m4(o4 o4Var, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.f4388i = o4Var;
        C0931r.m3308k(str);
        long andIncrement = o4.C().getAndIncrement();
        this.f4385f = andIncrement;
        this.f4387h = str;
        this.f4386g = z;
        if (andIncrement == Long.MAX_VALUE) {
            ((l5) o4Var).a.c().o().m1570a("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1548m4(o4 o4Var, Callable<V> callable, boolean z, String str) {
        super(callable);
        this.f4388i = o4Var;
        C0931r.m3308k("Task exception on worker thread");
        long andIncrement = o4.C().getAndIncrement();
        this.f4385f = andIncrement;
        this.f4387h = "Task exception on worker thread";
        this.f4386g = z;
        if (andIncrement == Long.MAX_VALUE) {
            ((l5) o4Var).a.c().o().m1570a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        C1548m4 c1548m4 = (C1548m4) obj;
        boolean z = this.f4386g;
        int i = 1;
        if (z == c1548m4.f4386g) {
            int i2 = (this.f4385f > c1548m4.f4385f ? 1 : (this.f4385f == c1548m4.f4385f ? 0 : -1));
            if (i2 < 0) {
                i = -1;
            } else if (i2 <= 0) {
                ((l5) this.f4388i).a.c().p().m1569b("Two tasks share the same index. index", Long.valueOf(this.f4385f));
                return 0;
            }
        } else if (z) {
            return -1;
        }
        return i;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        ((l5) this.f4388i).a.c().o().m1569b(this.f4387h, th);
        super.setException(th);
    }
}
