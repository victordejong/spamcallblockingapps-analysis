package p530d.p541c;

import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.k */
/* loaded from: classes2-dex2jar.jar:d/c/k.class */
public interface AbstractC9836k<T> {
    void onComplete();

    void onError(Throwable th);

    void onSubscribe(AbstractC9861b bVar);

    void onSuccess(T t);
}
