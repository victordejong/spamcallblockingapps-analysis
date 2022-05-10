package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p557i.C9804f;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber.class */
public final class FlowableMergeWithCompletable$MergeWithSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -4592979584110982903L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean mainDone;
    public volatile boolean otherDone;
    public final AtomicReference<AbstractC10434d> mainSubscription = new AtomicReference<>();
    public final OtherObserver otherObserver = new OtherObserver(this);
    public final AtomicThrowable error = new AtomicThrowable();
    public final AtomicLong requested = new AtomicLong();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMergeWithCompletable$MergeWithSubscriber$OtherObserver.class */
    public static final class OtherObserver extends AtomicReference<AbstractC9861b> implements AbstractC9647b {
        public static final long serialVersionUID = -2935427570954647017L;
        public final FlowableMergeWithCompletable$MergeWithSubscriber<?> parent;

        public OtherObserver(FlowableMergeWithCompletable$MergeWithSubscriber<?> flowableMergeWithCompletable$MergeWithSubscriber) {
            this.parent = flowableMergeWithCompletable$MergeWithSubscriber;
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onComplete() {
            this.parent.otherComplete();
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onError(Throwable th) {
            this.parent.otherError(th);
        }

        @Override // p530d.p541c.AbstractC9647b
        public void onSubscribe(AbstractC9861b bVar) {
            DisposableHelper.setOnce(this, bVar);
        }
    }

    public FlowableMergeWithCompletable$MergeWithSubscriber(AbstractC10433c<? super T> cVar) {
        this.actual = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        SubscriptionHelper.cancel(this.mainSubscription);
        DisposableHelper.dispose(this.otherObserver);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.mainDone = true;
        if (this.otherDone) {
            C9804f.m1996a(this.actual, this, this.error);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        SubscriptionHelper.cancel(this.mainSubscription);
        C9804f.m1997a((AbstractC10433c<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        C9804f.m1998a(this.actual, t, this, this.error);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        SubscriptionHelper.deferredSetOnce(this.mainSubscription, this.requested, dVar);
    }

    public void otherComplete() {
        this.otherDone = true;
        if (this.mainDone) {
            C9804f.m1996a(this.actual, this, this.error);
        }
    }

    public void otherError(Throwable th) {
        SubscriptionHelper.cancel(this.mainSubscription);
        C9804f.m1997a((AbstractC10433c<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        SubscriptionHelper.deferredRequest(this.mainSubscription, this.requested, j);
    }
}
