package p660rx.internal.operators;

import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.functions.Action0;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.OperatorDoAfterTerminate */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorDoAfterTerminate.class */
public final class OperatorDoAfterTerminate<T> implements Observable.Operator<T, T> {
    public final Action0 action;

    public OperatorDoAfterTerminate(Action0 action0) {
        if (action0 != null) {
            this.action = action0;
            return;
        }
        throw new NullPointerException("Action can not be null");
    }

    @Override // p660rx.functions.Func1
    public /* bridge */ /* synthetic */ Object call(Object obj) {
        return call((Subscriber) ((Subscriber) obj));
    }

    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        return (Subscriber<T>) new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorDoAfterTerminate.1
            public void callAction() {
                try {
                    OperatorDoAfterTerminate.this.action.call();
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    RxJavaHooks.onError(th);
                }
            }

            @Override // p660rx.Observer
            public void onCompleted() {
                try {
                    subscriber.onCompleted();
                } finally {
                    callAction();
                }
            }

            @Override // p660rx.Observer
            public void onError(Throwable th) {
                try {
                    subscriber.onError(th);
                } finally {
                    callAction();
                }
            }

            @Override // p660rx.Observer
            public void onNext(T t) {
                subscriber.onNext(t);
            }
        };
    }
}
