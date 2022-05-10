package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p557i.C9804f;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/StrictSubscriber.class */
public class StrictSubscriber<T> extends AtomicInteger implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = -4945028590049415624L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean done;
    public final AtomicThrowable error = new AtomicThrowable();
    public final AtomicLong requested = new AtomicLong();

    /* renamed from: s */
    public final AtomicReference<AbstractC10434d> f38569s = new AtomicReference<>();
    public final AtomicBoolean once = new AtomicBoolean();

    public StrictSubscriber(AbstractC10433c<? super T> cVar) {
        this.actual = cVar;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        if (!this.done) {
            SubscriptionHelper.cancel(this.f38569s);
        }
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        C9804f.m1996a(this.actual, this, this.error);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.done = true;
        C9804f.m1997a((AbstractC10433c<?>) this.actual, th, (AtomicInteger) this, this.error);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        C9804f.m1998a(this.actual, t, this, this.error);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (this.once.compareAndSet(false, true)) {
            this.actual.onSubscribe(this);
            SubscriptionHelper.deferredSetOnce(this.f38569s, this.requested, dVar);
            return;
        }
        dVar.cancel();
        cancel();
        onError(new IllegalStateException("§2.12 violated: onSubscribe must be called at most once"));
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (j <= 0) {
            cancel();
            onError(new IllegalArgumentException("§3.9 violated: positive request amount required but it was " + j));
            return;
        }
        SubscriptionHelper.deferredRequest(this.f38569s, this.requested, j);
    }
}
