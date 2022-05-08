package p660rx.internal.util;

import p660rx.Subscriber;
import p660rx.functions.Action0;
import p660rx.functions.Action1;
/* renamed from: rx.internal.util.ActionSubscriber */
/* loaded from: classes3-dex2jar.jar:rx/internal/util/ActionSubscriber.class */
public final class ActionSubscriber<T> extends Subscriber<T> {
    public final Action0 onCompleted;
    public final Action1<Throwable> onError;
    public final Action1<? super T> onNext;

    public ActionSubscriber(Action1<? super T> action1, Action1<Throwable> action12, Action0 action0) {
        this.onNext = action1;
        this.onError = action12;
        this.onCompleted = action0;
    }

    @Override // p660rx.Observer
    public void onCompleted() {
        this.onCompleted.call();
    }

    @Override // p660rx.Observer
    public void onError(Throwable th) {
        this.onError.call(th);
    }

    @Override // p660rx.Observer
    public void onNext(T t) {
        this.onNext.call(t);
    }
}
