package io.reactivex.internal.fuseable;

import org.reactivestreams.Publisher;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/fuseable/HasUpstreamPublisher.class */
public interface HasUpstreamPublisher<T> {
    Publisher<T> source();
}
