package p530d.p541c.p543b0.p556h;

import io.reactivex.internal.subscribers.InnerQueuedSubscriber;
/* renamed from: d.c.b0.h.c */
/* loaded from: classes2-dex2jar.jar:d/c/b0/h/c.class */
public interface AbstractC9797c<T> {
    void drain();

    void innerComplete(InnerQueuedSubscriber<T> innerQueuedSubscriber);

    void innerError(InnerQueuedSubscriber<T> innerQueuedSubscriber, Throwable th);

    void innerNext(InnerQueuedSubscriber<T> innerQueuedSubscriber, T t);
}
