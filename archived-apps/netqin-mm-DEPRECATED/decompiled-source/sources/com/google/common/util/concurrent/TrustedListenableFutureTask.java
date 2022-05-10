package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p275i.p276a.AbstractC5095d;
import p131c.p161d.p266c.p275i.p276a.AbstractC5098f;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
/* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/TrustedListenableFutureTask.class */
public class TrustedListenableFutureTask<V> extends AbstractC5098f.AbstractC5099a<V> implements RunnableFuture<V> {

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask.class */
    public final class TrustedFutureInterruptibleAsyncTask extends InterruptibleTask<AbstractFutureC5108l<V>> {
        public final AbstractC5095d<V> callable;

        public TrustedFutureInterruptibleAsyncTask(AbstractC5095d<V> dVar) {
            C4933n.m24795a(dVar);
            this.callable = dVar;
        }

        public void afterRanInterruptibly(AbstractFutureC5108l<V> lVar, Throwable th) {
            if (th == null) {
                TrustedListenableFutureTask.this.mo7721a((AbstractFutureC5108l) lVar);
            } else {
                TrustedListenableFutureTask.this.mo276a(th);
            }
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public /* bridge */ /* synthetic */ void afterRanInterruptibly(Object obj, Throwable th) {
            afterRanInterruptibly((AbstractFutureC5108l) ((AbstractFutureC5108l) obj), th);
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public AbstractFutureC5108l<V> runInterruptibly() throws Exception {
            AbstractFutureC5108l<V> call = this.callable.call();
            C4933n.m24793a(call, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.callable);
            return call;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public String toPendingString() {
            return this.callable.toString();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleTask.class */
    public final class TrustedFutureInterruptibleTask extends InterruptibleTask<V> {
        public final Callable<V> callable;

        public TrustedFutureInterruptibleTask(Callable<V> callable) {
            C4933n.m24795a(callable);
            this.callable = callable;
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public void afterRanInterruptibly(V v, Throwable th) {
            if (th == null) {
                TrustedListenableFutureTask.this.mo275b((TrustedListenableFutureTask) v);
            } else {
                TrustedListenableFutureTask.this.mo276a(th);
            }
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public final boolean isDone() {
            return TrustedListenableFutureTask.this.isDone();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public V runInterruptibly() throws Exception {
            return this.callable.call();
        }

        @Override // com.google.common.util.concurrent.InterruptibleTask
        public String toPendingString() {
            return this.callable.toString();
        }
    }
}
