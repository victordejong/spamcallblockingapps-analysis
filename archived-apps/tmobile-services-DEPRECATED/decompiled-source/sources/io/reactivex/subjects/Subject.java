package io.reactivex.subjects;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
/* loaded from: classes2-dex2jar.jar:io/reactivex/subjects/Subject.class */
public abstract class Subject<T> extends Observable<T> implements Observer<T> {
    @NonNull
    /* renamed from: d */
    public final Subject<T> m3186d() {
        return this instanceof SerializedSubject ? this : new SerializedSubject(this);
    }
}
