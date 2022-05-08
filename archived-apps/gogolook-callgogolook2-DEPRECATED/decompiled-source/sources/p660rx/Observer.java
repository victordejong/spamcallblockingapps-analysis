package p660rx;
/* renamed from: rx.Observer */
/* loaded from: classes3-dex2jar.jar:rx/Observer.class */
public interface Observer<T> {
    void onCompleted();

    void onError(Throwable th);

    void onNext(T t);
}
