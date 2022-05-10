package p530d.p541c;

import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.r */
/* loaded from: classes2-dex2jar.jar:d/c/r.class */
public interface AbstractC9844r<T> {
    void onComplete();

    void onError(Throwable th);

    void onNext(T t);

    void onSubscribe(AbstractC9861b bVar);
}
