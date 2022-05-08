package p660rx.subjects;

import p660rx.Observable;
import p660rx.Observer;
/* renamed from: rx.subjects.Subject */
/* loaded from: classes3-dex2jar.jar:rx/subjects/Subject.class */
public abstract class Subject<T, R> extends Observable<R> implements Observer<T> {
    public Subject(Observable.OnSubscribe<R> onSubscribe) {
        super(onSubscribe);
    }
}
