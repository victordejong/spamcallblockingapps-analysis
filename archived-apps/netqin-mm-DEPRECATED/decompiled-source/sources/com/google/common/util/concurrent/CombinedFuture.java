package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p275i.p276a.AbstractC5088b;
import p131c.p161d.p266c.p275i.p276a.AbstractC5095d;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CombinedFuture.class */
public final class CombinedFuture<V> extends AbstractC5088b<Object, V> {

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask.class */
    public final class AsyncCallableInterruptibleTask extends CombinedFuture<V>.CombinedFutureInterruptibleTask<AbstractFutureC5108l<V>> {
        public final AbstractC5095d<V> callable;

        public AsyncCallableInterruptibleTask(AbstractC5095d<V> dVar, Executor executor) {
            super(executor);
            C4933n.m24795a(dVar);
            this.callable = dVar;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public AbstractFutureC5108l<V> runInterruptibly() throws Exception {
            this.thrownByExecute = false;
            AbstractFutureC5108l<V> call = this.callable.call();
            C4933n.m24793a(call, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.callable);
            return call;
        }

        public void setValue(AbstractFutureC5108l<V> lVar) {
            CombinedFuture.this.mo7721a((AbstractFutureC5108l) lVar);
            CombinedFuture.this.m24522i();
        }

        @Override // com.google.common.util.concurrent.CombinedFuture.CombinedFutureInterruptibleTask
        public /* bridge */ /* synthetic */ void setValue(Object obj) {
            setValue((AbstractFutureC5108l) ((AbstractFutureC5108l) obj));
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public String toPendingString() {
            return this.callable.toString();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask.class */
    public final class CallableInterruptibleTask extends CombinedFuture<V>.CombinedFutureInterruptibleTask<V> {
        public final Callable<V> callable;

        public CallableInterruptibleTask(Callable<V> callable, Executor executor) {
            super(executor);
            C4933n.m24795a(callable);
            this.callable = callable;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public V runInterruptibly() throws Exception {
            this.thrownByExecute = false;
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.CombinedFuture.CombinedFutureInterruptibleTask
        public void setValue(V v) {
            CombinedFuture.this.mo275b((CombinedFuture) v);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public String toPendingString() {
            return this.callable.toString();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask.class */
    public abstract class CombinedFutureInterruptibleTask<T> extends InterruptibleTask<T> {
        public final Executor listenerExecutor;
        public boolean thrownByExecute = true;

        public CombinedFutureInterruptibleTask(Executor executor) {
            C4933n.m24795a(executor);
            this.listenerExecutor = executor;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final void afterRanInterruptibly(T t, Throwable th) {
            if (th == null) {
                setValue(t);
            } else if (th instanceof ExecutionException) {
                CombinedFuture.this.mo276a(th.getCause());
            } else if (th instanceof CancellationException) {
                CombinedFuture.this.cancel(false);
            } else {
                CombinedFuture.this.mo276a(th);
            }
        }

        public final void execute() {
            try {
                this.listenerExecutor.execute(this);
            } catch (RejectedExecutionException e) {
                if (this.thrownByExecute) {
                    CombinedFuture.this.mo276a((Throwable) e);
                }
            }
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final boolean isDone() {
            return CombinedFuture.this.isDone();
        }

        public abstract void setValue(T t);
    }
}
