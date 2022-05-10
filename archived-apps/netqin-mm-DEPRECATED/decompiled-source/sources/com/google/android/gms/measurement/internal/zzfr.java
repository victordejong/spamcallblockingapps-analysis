package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4;
import p131c.p161d.p170b.p224d.p260i.p261a.C4773o3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4782p3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4791q3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfr.class */
public final class zzfr extends AbstractC4747l4 {

    /* renamed from: l */
    public static final AtomicLong f29990l = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: c */
    public C4791q3 f29991c;

    /* renamed from: d */
    public C4791q3 f29992d;

    /* renamed from: k */
    public volatile boolean f29999k;

    /* renamed from: i */
    public final Object f29997i = new Object();

    /* renamed from: j */
    public final Semaphore f29998j = new Semaphore(2);

    /* renamed from: e */
    public final PriorityBlockingQueue<C4773o3<?>> f29993e = new PriorityBlockingQueue<>();

    /* renamed from: f */
    public final BlockingQueue<C4773o3<?>> f29994f = new LinkedBlockingQueue();

    /* renamed from: g */
    public final Thread.UncaughtExceptionHandler f29995g = new C4782p3(this, "Thread death: Uncaught exception on worker thread");

    /* renamed from: h */
    public final Thread.UncaughtExceptionHandler f29996h = new C4782p3(this, "Thread death: Uncaught exception on network thread");

    public zzfr(zzfu zzfuVar) {
        super(zzfuVar);
    }

    /* renamed from: a */
    public final <T> T m9091a(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        synchronized (atomicReference) {
            mo8795j().m9093a(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                zzes t = mo8789p().m9149t();
                String valueOf = String.valueOf(str);
                t.m9143a(valueOf.length() != 0 ? "Interrupted waiting for ".concat(valueOf) : new String("Interrupted waiting for "));
                return null;
            }
        }
        T t2 = atomicReference.get();
        if (t2 == null) {
            zzes t3 = mo8789p().m9149t();
            String valueOf2 = String.valueOf(str);
            t3.m9143a(valueOf2.length() != 0 ? "Timed out waiting for ".concat(valueOf2) : new String("Timed out waiting for "));
        }
        return t2;
    }

    /* renamed from: a */
    public final <V> Future<V> m9092a(Callable<V> callable) throws IllegalStateException {
        m24909l();
        Preconditions.m17288a(callable);
        C4773o3<?> o3Var = new C4773o3<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f29991c) {
            if (!this.f29993e.isEmpty()) {
                mo8789p().m9149t().m9143a("Callable skipped the worker queue.");
            }
            o3Var.run();
        } else {
            m9096a(o3Var);
        }
        return o3Var;
    }

    /* renamed from: a */
    public final void m9096a(C4773o3<?> o3Var) {
        synchronized (this.f29997i) {
            this.f29993e.add(o3Var);
            if (this.f29991c == null) {
                C4791q3 q3Var = new C4791q3(this, "Measurement Worker", this.f29993e);
                this.f29991c = q3Var;
                q3Var.setUncaughtExceptionHandler(this.f29995g);
                this.f29991c.start();
            } else {
                this.f29991c.m24892a();
            }
        }
    }

    /* renamed from: a */
    public final void m9093a(Runnable runnable) throws IllegalStateException {
        m24909l();
        Preconditions.m17288a(runnable);
        m9096a(new C4773o3<>(this, runnable, false, "Task exception on worker thread"));
    }

    /* renamed from: b */
    public final <V> Future<V> m9086b(Callable<V> callable) throws IllegalStateException {
        m24909l();
        Preconditions.m17288a(callable);
        C4773o3<?> o3Var = new C4773o3<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f29991c) {
            o3Var.run();
        } else {
            m9096a(o3Var);
        }
        return o3Var;
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.C4756m4
    /* renamed from: b */
    public final void mo9090b() {
        if (Thread.currentThread() != this.f29992d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    /* renamed from: b */
    public final void m9087b(Runnable runnable) throws IllegalStateException {
        m24909l();
        Preconditions.m17288a(runnable);
        m9096a(new C4773o3<>(this, runnable, true, "Task exception on worker thread"));
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.C4756m4
    /* renamed from: c */
    public final void mo9085c() {
        if (Thread.currentThread() != this.f29991c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    /* renamed from: c */
    public final void m9083c(Runnable runnable) throws IllegalStateException {
        m24909l();
        Preconditions.m17288a(runnable);
        C4773o3<?> o3Var = new C4773o3<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.f29997i) {
            this.f29994f.add(o3Var);
            if (this.f29992d == null) {
                C4791q3 q3Var = new C4791q3(this, "Measurement Network", this.f29994f);
                this.f29992d = q3Var;
                q3Var.setUncaughtExceptionHandler(this.f29996h);
                this.f29992d.start();
            } else {
                this.f29992d.m24892a();
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4747l4
    /* renamed from: o */
    public final boolean mo8676o() {
        return false;
    }

    /* renamed from: q */
    public final boolean m9080q() {
        return Thread.currentThread() == this.f29991c;
    }
}
