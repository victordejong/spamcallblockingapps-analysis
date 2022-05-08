package p660rx.subjects;

import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.observers.SerializedObserver;
/* renamed from: rx.subjects.SerializedSubject */
/* loaded from: classes3-dex2jar.jar:rx/subjects/SerializedSubject.class */
public class SerializedSubject<T, R> extends Subject<T, R> {
    public final SerializedObserver<T> observer;

    public SerializedSubject(final Subject<T, R> subject) {
        super(new Observable.OnSubscribe<R>() { // from class: rx.subjects.SerializedSubject.1
            @Override // p660rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object obj) {
                call((Subscriber) ((Subscriber) obj));
            }

            public void call(Subscriber<? super R> subscriber) {
                Subject.this.unsafeSubscribe(subscriber);
            }
        });
        this.observer = new SerializedObserver<>(subject);
    }

    @Override // p660rx.Observer
    public void onCompleted() {
        this.observer.onCompleted();
    }

    @Override // p660rx.Observer
    public void onError(Throwable th) {
        this.observer.onError(th);
    }

    @Override // p660rx.Observer
    public void onNext(T t) {
        this.observer.onNext(t);
    }
}
