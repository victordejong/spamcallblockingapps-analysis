package com.google.a.d.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/a/d/a/b.class */
abstract class b implements h {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v10 */
    /* JADX WARN: Type inference failed for: r17v11 */
    /* JADX WARN: Type inference failed for: r17v12 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private <T> T a(java.util.Collection<? extends java.util.concurrent.Callable<T>> r8, boolean r9, long r10) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.a.d.a.b.a(java.util.Collection, boolean, long):java.lang.Object");
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        if (collection == null) {
            throw new NullPointerException();
        }
        ArrayList<Future> arrayList = new ArrayList(collection.size());
        try {
            Iterator<? extends Callable<T>> it = collection.iterator();
            while (it.hasNext()) {
                g a2 = g.a((Callable) it.next());
                arrayList.add(a2);
                execute(a2);
            }
            for (Future future : arrayList) {
                if (!future.isDone()) {
                    try {
                        future.get();
                    } catch (CancellationException e) {
                    } catch (ExecutionException e2) {
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            for (Future future2 : arrayList) {
                future2.cancel(true);
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00db, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e9, code lost:
        if (r0.hasNext() == false) goto L_0x00d2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ec, code lost:
        r0 = (java.util.concurrent.Future) r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0102, code lost:
        if (r0.isDone() != false) goto L_0x00e3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0109, code lost:
        if (r12 > 0) goto L_0x0133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010c, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x011a, code lost:
        if (r0.hasNext() == false) goto L_0x00d2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x011d, code lost:
        ((java.util.concurrent.Future) r0.next()).cancel(true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0133, code lost:
        r0.get(r12, java.util.concurrent.TimeUnit.NANOSECONDS);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0155, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0163, code lost:
        if (r0.hasNext() != false) goto L_0x0166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0166, code lost:
        ((java.util.concurrent.Future) r0.next()).cancel(true);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 3 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0181 -> B:46:0x0140). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x0186 -> B:46:0x0140). Please submit an issue!!! */
    @Override // java.util.concurrent.ExecutorService
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public <T> java.util.List<java.util.concurrent.Future<T>> invokeAll(java.util.Collection<? extends java.util.concurrent.Callable<T>> r8, long r9, java.util.concurrent.TimeUnit r11) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.a.d.a.b.invokeAll(java.util.Collection, long, java.util.concurrent.TimeUnit):java.util.List");
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) {
        try {
            return (T) a(collection, false, 0L);
        } catch (TimeoutException e) {
            throw new AssertionError();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return (T) a(collection, true, timeUnit.toNanos(j));
    }

    @Override // java.util.concurrent.ExecutorService
    public /* synthetic */ Future submit(Runnable runnable) {
        g a2 = g.a(runnable, (Object) null);
        execute(a2);
        return a2;
    }

    @Override // java.util.concurrent.ExecutorService
    public /* synthetic */ Future submit(Runnable runnable, Object obj) {
        g a2 = g.a(runnable, obj);
        execute(a2);
        return a2;
    }

    @Override // java.util.concurrent.ExecutorService
    public /* synthetic */ Future submit(Callable callable) {
        g a2 = g.a(callable);
        execute(a2);
        return a2;
    }
}
