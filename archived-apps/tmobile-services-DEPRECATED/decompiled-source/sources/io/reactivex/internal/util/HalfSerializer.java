package io.reactivex.internal.util;

import io.reactivex.Observer;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/HalfSerializer.class */
public final class HalfSerializer {
    private HalfSerializer() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: a */
    public static void m3433a(Observer<?> observer, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable b = atomicThrowable.m3455b();
            if (b != null) {
                observer.onError(b);
            } else {
                observer.onComplete();
            }
        }
    }

    /* renamed from: b */
    public static void m3432b(Subscriber<?> subscriber, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable b = atomicThrowable.m3455b();
            if (b != null) {
                subscriber.onError(b);
            } else {
                subscriber.onComplete();
            }
        }
    }

    /* renamed from: c */
    public static void m3431c(Observer<?> observer, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (!atomicThrowable.m3456a(th)) {
            RxJavaPlugins.m3354t(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            observer.onError(atomicThrowable.m3455b());
        }
    }

    /* renamed from: d */
    public static void m3430d(Subscriber<?> subscriber, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (!atomicThrowable.m3456a(th)) {
            RxJavaPlugins.m3354t(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            subscriber.onError(atomicThrowable.m3455b());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: e */
    public static <T> void m3429e(Observer<? super T> observer, T t, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            observer.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable b = atomicThrowable.m3455b();
                if (b != null) {
                    observer.onError(b);
                } else {
                    observer.onComplete();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public static <T> void m3428f(Subscriber<? super T> subscriber, T t, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            subscriber.onNext(t);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable b = atomicThrowable.m3455b();
                if (b != null) {
                    subscriber.onError(b);
                } else {
                    subscriber.onComplete();
                }
            }
        }
    }
}
