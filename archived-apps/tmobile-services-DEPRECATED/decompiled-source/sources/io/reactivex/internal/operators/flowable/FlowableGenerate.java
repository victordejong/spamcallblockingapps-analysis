package io.reactivex.internal.operators.flowable;

import io.reactivex.Emitter;
import io.reactivex.Flowable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGenerate.class */
public final class FlowableGenerate<T, S> extends Flowable<T> {

    /* renamed from: g */
    final Callable<S> f15985g;

    /* renamed from: h */
    final BiFunction<S, Emitter<T>, S> f15986h;

    /* renamed from: i */
    final Consumer<? super S> f15987i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGenerate$GeneratorSubscription.class */
    static final class GeneratorSubscription<T, S> extends AtomicLong implements Emitter<T>, Subscription {
        private static final long serialVersionUID = 7565982551505011832L;

        /* renamed from: f */
        final Subscriber<? super T> f15988f;

        /* renamed from: g */
        final BiFunction<S, ? super Emitter<T>, S> f15989g;

        /* renamed from: h */
        final Consumer<? super S> f15990h;

        /* renamed from: i */
        S f15991i;

        /* renamed from: j */
        volatile boolean f15992j;

        /* renamed from: k */
        boolean f15993k;

        /* renamed from: l */
        boolean f15994l;

        GeneratorSubscription(Subscriber<? super T> subscriber, BiFunction<S, ? super Emitter<T>, S> biFunction, Consumer<? super S> consumer, S s) {
            this.f15988f = subscriber;
            this.f15989g = biFunction;
            this.f15990h = consumer;
            this.f15991i = s;
        }

        /* renamed from: b */
        private void m4212b(S s) {
            try {
                this.f15990h.accept(s);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f15992j) {
                this.f15992j = true;
                if (BackpressureHelper.m3454a(this, 1L) == 0) {
                    S s = this.f15991i;
                    this.f15991i = null;
                    m4212b(s);
                }
            }
        }

        @Override // io.reactivex.Emitter
        public void onComplete() {
            if (!this.f15993k) {
                this.f15993k = true;
                this.f15988f.onComplete();
            }
        }

        @Override // io.reactivex.Emitter
        public void onError(Throwable th) {
            if (this.f15993k) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            Throwable th2 = th;
            if (th == null) {
                th2 = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.f15993k = true;
            this.f15988f.onError(th2);
        }

        @Override // io.reactivex.Emitter
        public void onNext(T t) {
            if (this.f15993k) {
                return;
            }
            if (this.f15994l) {
                onError(new IllegalStateException("onNext already called in this generate turn"));
            } else if (t == null) {
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            } else {
                this.f15994l = true;
                this.f15988f.onNext(t);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v33, types: [long] */
        /* JADX WARN: Type inference failed for: r0v40, types: [long] */
        /* JADX WARN: Type inference failed for: r5v0, types: [java.util.concurrent.atomic.AtomicLong, io.reactivex.internal.operators.flowable.FlowableGenerate$GeneratorSubscription, java.lang.Object, io.reactivex.internal.operators.flowable.FlowableGenerate$GeneratorSubscription<T, S>] */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v2 */
        /* JADX WARN: Type inference failed for: r6v3 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // org.reactivestreams.Subscription
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void request(long r6) {
            /*
                Method dump skipped, instructions count: 186
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableGenerate.GeneratorSubscription.request(long):void");
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        try {
            subscriber.onSubscribe(new GeneratorSubscription(subscriber, this.f15986h, this.f15987i, this.f15985g.call()));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
