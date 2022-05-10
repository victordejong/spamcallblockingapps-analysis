package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10432b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber.class */
public final class FlowableSubscribeOn$SubscribeOnSubscriber<T> extends AtomicReference<Thread> implements AbstractC9829h<T>, AbstractC10434d, Runnable {
    public static final long serialVersionUID = 8094547886072529208L;
    public final AbstractC10433c<? super T> actual;
    public final boolean nonScheduledRequests;
    public AbstractC10432b<T> source;
    public final AbstractC9845s.AbstractC9848c worker;

    /* renamed from: s */
    public final AtomicReference<AbstractC10434d> f38427s = new AtomicReference<>();
    public final AtomicLong requested = new AtomicLong();

    /* renamed from: io.reactivex.internal.operators.flowable.FlowableSubscribeOn$SubscribeOnSubscriber$a */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSubscribeOn$SubscribeOnSubscriber$a.class */
    public static final class RunnableC10408a implements Runnable {

        /* renamed from: a */
        public final AbstractC10434d f38428a;

        /* renamed from: b */
        public final long f38429b;

        public RunnableC10408a(AbstractC10434d dVar, long j) {
            this.f38428a = dVar;
            this.f38429b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f38428a.request(this.f38429b);
        }
    }

    public FlowableSubscribeOn$SubscribeOnSubscriber(AbstractC10433c<? super T> cVar, AbstractC9845s.AbstractC9848c cVar2, AbstractC10432b<T> bVar, boolean z) {
        this.actual = cVar;
        this.worker = cVar2;
        this.source = bVar;
        this.nonScheduledRequests = !z;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.f38427s);
        this.worker.dispose();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.actual.onComplete();
        this.worker.dispose();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
        this.worker.dispose();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.actual.onNext(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.setOnce(this.f38427s, dVar)) {
            long andSet = this.requested.getAndSet(0L);
            if (andSet != 0) {
                requestUpstream(andSet, dVar);
            }
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            AbstractC10434d dVar = this.f38427s.get();
            if (dVar != null) {
                requestUpstream(j, dVar);
                return;
            }
            C9800b.m2012a(this.requested, j);
            AbstractC10434d dVar2 = this.f38427s.get();
            if (dVar2 != null) {
                long andSet = this.requested.getAndSet(0L);
                if (andSet != 0) {
                    requestUpstream(andSet, dVar2);
                }
            }
        }
    }

    public void requestUpstream(long j, AbstractC10434d dVar) {
        if (this.nonScheduledRequests || Thread.currentThread() == get()) {
            dVar.request(j);
        } else {
            this.worker.mo1851a(new RunnableC10408a(dVar, j));
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        lazySet(Thread.currentThread());
        AbstractC10432b<T> bVar = this.source;
        this.source = null;
        bVar.subscribe(this);
    }
}
