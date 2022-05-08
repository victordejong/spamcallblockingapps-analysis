package p660rx.internal.producers;

import java.util.concurrent.atomic.AtomicInteger;
import p660rx.Producer;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
/* renamed from: rx.internal.producers.SingleDelayedProducer */
/* loaded from: classes3-dex2jar.jar:rx/internal/producers/SingleDelayedProducer.class */
public final class SingleDelayedProducer<T> extends AtomicInteger implements Producer {
    public final Subscriber<? super T> child;
    public T value;

    public SingleDelayedProducer(Subscriber<? super T> subscriber) {
        this.child = subscriber;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void emit(Subscriber<? super T> subscriber, T t) {
        if (!subscriber.isUnsubscribed()) {
            try {
                subscriber.onNext(t);
                if (!subscriber.isUnsubscribed()) {
                    subscriber.onCompleted();
                }
            } catch (Throwable th) {
                Exceptions.throwOrReport(th, subscriber, t);
            }
        }
    }

    @Override // p660rx.Producer
    public void request(long j) {
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        } else if (i != 0) {
            do {
                int i2 = get();
                if (i2 != 0) {
                    if (i2 == 1 && compareAndSet(1, 3)) {
                        emit(this.child, this.value);
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    public void setValue(T t) {
        do {
            int i = get();
            if (i == 0) {
                this.value = t;
            } else if (i == 2 && compareAndSet(2, 3)) {
                emit(this.child, t);
                return;
            } else {
                return;
            }
        } while (!compareAndSet(0, 1));
    }
}
