package io.reactivex.internal.subscribers;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/subscribers/InnerQueuedSubscriberSupport.class */
public interface InnerQueuedSubscriberSupport<T> {
    void drain();

    void innerComplete(InnerQueuedSubscriber<T> innerQueuedSubscriber);

    void innerError(InnerQueuedSubscriber<T> innerQueuedSubscriber, Throwable th);

    void innerNext(InnerQueuedSubscriber<T> innerQueuedSubscriber, T t);
}
