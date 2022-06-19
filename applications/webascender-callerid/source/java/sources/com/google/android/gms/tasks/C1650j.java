package com.google.android.gms.tasks;

import com.google.android.gms.common.internal.C0931r;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.tasks.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/j.class */
public final class C1650j {
    /* renamed from: a */
    public static <TResult> TResult m1444a(AbstractC1646g<TResult> abstractC1646g) throws ExecutionException, InterruptedException {
        C0931r.m3310i();
        C0931r.m3307l(abstractC1646g, "Task must not be null");
        if (abstractC1646g.m1453r()) {
            return (TResult) m1435j(abstractC1646g);
        }
        b bVar = new b((RunnableC1645f0) null);
        m1434k(abstractC1646g, bVar);
        bVar.a();
        return (TResult) m1435j(abstractC1646g);
    }

    /* renamed from: b */
    public static <TResult> TResult m1443b(AbstractC1646g<TResult> abstractC1646g, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        C0931r.m3310i();
        C0931r.m3307l(abstractC1646g, "Task must not be null");
        C0931r.m3307l(timeUnit, "TimeUnit must not be null");
        if (abstractC1646g.m1453r()) {
            return (TResult) m1435j(abstractC1646g);
        }
        b bVar = new b((RunnableC1645f0) null);
        m1434k(abstractC1646g, bVar);
        if (!bVar.d(j, timeUnit)) {
            throw new TimeoutException("Timed out waiting for Task");
        }
        return (TResult) m1435j(abstractC1646g);
    }

    /* renamed from: c */
    public static <TResult> AbstractC1646g<TResult> m1442c(Executor executor, Callable<TResult> callable) {
        C0931r.m3307l(executor, "Executor must not be null");
        C0931r.m3307l(callable, "Callback must not be null");
        b0 b0Var = new b0();
        executor.execute(new RunnableC1645f0(b0Var, callable));
        return b0Var;
    }

    /* renamed from: d */
    public static <TResult> AbstractC1646g<TResult> m1441d(Exception exc) {
        b0 b0Var = new b0();
        b0Var.v(exc);
        return b0Var;
    }

    /* renamed from: e */
    public static <TResult> AbstractC1646g<TResult> m1440e(TResult tresult) {
        b0 b0Var = new b0();
        b0Var.w(tresult);
        return b0Var;
    }

    /* renamed from: f */
    public static AbstractC1646g<Void> m1439f(Collection<? extends AbstractC1646g<?>> collection) {
        if (collection == null || collection.isEmpty()) {
            return m1440e(null);
        }
        for (AbstractC1646g<?> abstractC1646g : collection) {
            Objects.requireNonNull(abstractC1646g, "null tasks are not accepted");
        }
        b0 b0Var = new b0();
        c cVar = new c(collection.size(), b0Var);
        for (AbstractC1646g<?> abstractC1646g2 : collection) {
            m1434k(abstractC1646g2, cVar);
        }
        return b0Var;
    }

    /* renamed from: g */
    public static AbstractC1646g<Void> m1438g(AbstractC1646g<?>... abstractC1646gArr) {
        return (abstractC1646gArr == null || abstractC1646gArr.length == 0) ? m1440e(null) : m1439f(Arrays.asList(abstractC1646gArr));
    }

    /* renamed from: h */
    public static AbstractC1646g<List<AbstractC1646g<?>>> m1437h(Collection<? extends AbstractC1646g<?>> collection) {
        return (collection == null || collection.isEmpty()) ? m1440e(Collections.emptyList()) : m1439f(collection).m1459l(new g0(collection));
    }

    /* renamed from: i */
    public static AbstractC1646g<List<AbstractC1646g<?>>> m1436i(AbstractC1646g<?>... abstractC1646gArr) {
        return (abstractC1646gArr == null || abstractC1646gArr.length == 0) ? m1440e(Collections.emptyList()) : m1437h(Arrays.asList(abstractC1646gArr));
    }

    /* renamed from: j */
    private static <TResult> TResult m1435j(AbstractC1646g<TResult> abstractC1646g) throws ExecutionException {
        if (abstractC1646g.m1452s()) {
            return abstractC1646g.m1456o();
        }
        if (!abstractC1646g.m1454q()) {
            throw new ExecutionException(abstractC1646g.m1457n());
        }
        throw new CancellationException("Task is already canceled");
    }

    /* renamed from: k */
    private static void m1434k(AbstractC1646g<?> abstractC1646g, a aVar) {
        Executor executor = C1648i.f4628b;
        abstractC1646g.m1462i(executor, aVar);
        abstractC1646g.m1464g(executor, aVar);
        abstractC1646g.m1469b(executor, aVar);
    }
}
