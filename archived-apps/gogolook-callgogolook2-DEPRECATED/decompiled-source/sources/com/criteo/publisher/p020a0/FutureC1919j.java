package com.criteo.publisher.p020a0;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.criteo.publisher.a0.j */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/j.class */
public class FutureC1919j<T> implements Future<T> {

    /* renamed from: a */
    public final AtomicReference<C1922c<T>> f2038a = new AtomicReference<>();

    /* renamed from: b */
    public final CountDownLatch f2039b = new CountDownLatch(1);

    /* renamed from: c */
    public final FutureTask<T> f2040c = new FutureTask<>(new CallableC1921b());

    /* renamed from: com.criteo.publisher.a0.j$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/j$b.class */
    public class CallableC1921b implements Callable<T> {
        public CallableC1921b() {
        }

        @Override // java.util.concurrent.Callable
        public T call() throws Exception {
            FutureC1919j.this.f2039b.await();
            return (T) ((C1922c) FutureC1919j.this.f2038a.get()).m36018a();
        }
    }

    /* renamed from: com.criteo.publisher.a0.j$c */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/a0/j$c.class */
    public static final class C1922c<T> {

        /* renamed from: a */
        public final T f2042a;

        /* renamed from: b */
        public final Exception f2043b = null;

        public C1922c(T t) {
            this.f2042a = t;
        }

        /* renamed from: a */
        public T m36018a() throws Exception {
            Exception exc = this.f2043b;
            if (exc == null) {
                return this.f2042a;
            }
            throw exc;
        }
    }

    /* renamed from: b */
    public static <T> FutureC1919j<T> m36019b(T t) {
        FutureC1919j<T> jVar = new FutureC1919j<>();
        jVar.m36021a((FutureC1919j<T>) t);
        return jVar;
    }

    /* renamed from: a */
    public void m36021a(T t) {
        this.f2038a.compareAndSet(null, new C1922c<>(t));
        this.f2039b.countDown();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f2040c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        this.f2040c.run();
        return this.f2040c.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, @NonNull TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        this.f2040c.run();
        return this.f2040c.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f2040c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f2040c.isDone();
    }
}
