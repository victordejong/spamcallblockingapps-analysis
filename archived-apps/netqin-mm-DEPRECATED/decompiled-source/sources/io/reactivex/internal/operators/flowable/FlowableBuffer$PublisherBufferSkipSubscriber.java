package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Collection;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p557i.C9800b;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p569y.C9863a;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber.class */
public final class FlowableBuffer$PublisherBufferSkipSubscriber<T, C extends Collection<? super T>> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -5616169793639412593L;
    public final AbstractC10433c<? super C> actual;
    public C buffer;
    public final Callable<C> bufferSupplier;
    public boolean done;
    public int index;

    /* renamed from: s */
    public AbstractC10434d f38340s;
    public final int size;
    public final int skip;

    public FlowableBuffer$PublisherBufferSkipSubscriber(AbstractC10433c<? super C> cVar, int i, int i2, Callable<C> callable) {
        this.actual = cVar;
        this.size = i;
        this.skip = i2;
        this.bufferSupplier = callable;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.f38340s.cancel();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            C c = this.buffer;
            this.buffer = null;
            if (c != null) {
                this.actual.onNext(c);
            }
            this.actual.onComplete();
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.done = true;
        this.buffer = null;
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (!this.done) {
            C c = this.buffer;
            int i = this.index;
            int i2 = i + 1;
            if (i == 0) {
                try {
                    C call = this.bufferSupplier.call();
                    C9650a.m2095a(call, "The bufferSupplier returned a null buffer");
                    c = call;
                    this.buffer = c;
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            if (c != null) {
                c.add(t);
                if (c.size() == this.size) {
                    this.buffer = null;
                    this.actual.onNext(c);
                }
            }
            int i3 = i2;
            if (i2 == this.skip) {
                i3 = 0;
            }
            this.index = i3;
        }
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38340s, dVar)) {
            this.f38340s = dVar;
            this.actual.onSubscribe(this);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (!SubscriptionHelper.validate(j)) {
            return;
        }
        if (get() != 0 || !compareAndSet(0, 1)) {
            this.f38340s.request(C9800b.m2011b(this.skip, j));
            return;
        }
        this.f38340s.request(C9800b.m2013a(C9800b.m2011b(j, this.size), C9800b.m2011b(this.skip - this.size, j - 1)));
    }
}
