package io.reactivex.internal.operators.parallel;

import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelDoOnNextTry.class */
public final class ParallelDoOnNextTry<T> extends ParallelFlowable<T> {

    /* renamed from: a */
    final ParallelFlowable<T> f18806a;

    /* renamed from: b */
    final Consumer<? super T> f18807b;

    /* renamed from: c */
    final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f18808c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.reactivex.internal.operators.parallel.ParallelDoOnNextTry$1 */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelDoOnNextTry$1.class */
    public static /* synthetic */ class C21201 {

        /* renamed from: a */
        static final /* synthetic */ int[] f18809a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ParallelFailureHandling.values().length];
            f18809a = iArr;
            try {
                iArr[ParallelFailureHandling.RETRY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18809a[ParallelFailureHandling.SKIP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18809a[ParallelFailureHandling.STOP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextConditionalSubscriber.class */
    static final class ParallelDoOnNextConditionalSubscriber<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: f */
        final ConditionalSubscriber<? super T> f18810f;

        /* renamed from: g */
        final Consumer<? super T> f18811g;

        /* renamed from: h */
        final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f18812h;

        /* renamed from: i */
        Subscription f18813i;

        /* renamed from: j */
        boolean f18814j;

        ParallelDoOnNextConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Consumer<? super T> consumer, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> biFunction) {
            this.f18810f = conditionalSubscriber;
            this.f18811g = consumer;
            this.f18812h = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f18813i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18814j) {
                this.f18814j = true;
                this.f18810f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18814j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18814j = true;
            this.f18810f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!mo3605p(t) && !this.f18814j) {
                this.f18813i.request(1L);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18813i, subscription)) {
                this.f18813i = subscription;
                this.f18810f.onSubscribe(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo3605p(T r9) {
            /*
                r8 = this;
                r0 = r8
                boolean r0 = r0.f18814j
                if (r0 == 0) goto L_0x0009
                r0 = 0
                return r0
            L_0x0009:
                r0 = 0
                r10 = r0
            L_0x000b:
                r0 = r8
                io.reactivex.functions.Consumer<? super T> r0 = r0.f18811g     // Catch: all -> 0x0020
                r1 = r9
                r0.accept(r1)     // Catch: all -> 0x0020
                r0 = r8
                io.reactivex.internal.fuseable.ConditionalSubscriber<? super T> r0 = r0.f18810f
                r1 = r9
                boolean r0 = r0.mo3605p(r1)
                return r0
            L_0x0020:
                r12 = move-exception
                r0 = r12
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                io.reactivex.functions.BiFunction<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r0 = r0.f18812h     // Catch: all -> 0x0082
                r13 = r0
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                r0 = r13
                r1 = r10
                java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: all -> 0x0082
                r2 = r12
                java.lang.Object r0 = r0.apply(r1, r2)     // Catch: all -> 0x0082
                r13 = r0
                r0 = r13
                java.lang.String r1 = "The errorHandler returned a null item"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.m4363e(r0, r1)     // Catch: all -> 0x0082
                r0 = r13
                io.reactivex.parallel.ParallelFailureHandling r0 = (io.reactivex.parallel.ParallelFailureHandling) r0     // Catch: all -> 0x0082
                r13 = r0
                int[] r0 = io.reactivex.internal.operators.parallel.ParallelDoOnNextTry.C21201.f18809a     // Catch: all -> 0x0082
                r1 = r13
                int r1 = r1.ordinal()
                r0 = r0[r1]
                r14 = r0
                r0 = r14
                r1 = 1
                if (r0 == r1) goto L_0x000b
                r0 = r14
                r1 = 2
                if (r0 == r1) goto L_0x0080
                r0 = r14
                r1 = 3
                if (r0 == r1) goto L_0x0078
                r0 = r8
                r0.cancel()
                r0 = r8
                r1 = r12
                r0.onError(r1)
                r0 = 0
                return r0
            L_0x0078:
                r0 = r8
                r0.cancel()
                r0 = r8
                r0.onComplete()
            L_0x0080:
                r0 = 0
                return r0
            L_0x0082:
                r9 = move-exception
                r0 = r9
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                r0.cancel()
                r0 = r8
                io.reactivex.exceptions.CompositeException r1 = new io.reactivex.exceptions.CompositeException
                r2 = r1
                r3 = 2
                java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
                r4 = r3
                r5 = 0
                r6 = r12
                r4[r5] = r6
                r4 = r3
                r5 = 1
                r6 = r9
                r4[r5] = r6
                r2.<init>(r3)
                r0.onError(r1)
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelDoOnNextTry.ParallelDoOnNextConditionalSubscriber.mo3605p(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f18813i.request(j);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelDoOnNextTry$ParallelDoOnNextSubscriber.class */
    static final class ParallelDoOnNextSubscriber<T> implements ConditionalSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super T> f18815f;

        /* renamed from: g */
        final Consumer<? super T> f18816g;

        /* renamed from: h */
        final BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> f18817h;

        /* renamed from: i */
        Subscription f18818i;

        /* renamed from: j */
        boolean f18819j;

        ParallelDoOnNextSubscriber(Subscriber<? super T> subscriber, Consumer<? super T> consumer, BiFunction<? super Long, ? super Throwable, ParallelFailureHandling> biFunction) {
            this.f18815f = subscriber;
            this.f18816g = consumer;
            this.f18817h = biFunction;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f18818i.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18819j) {
                this.f18819j = true;
                this.f18815f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18819j) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18819j = true;
            this.f18815f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!mo3605p(t)) {
                this.f18818i.request(1L);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f18818i, subscription)) {
                this.f18818i = subscription;
                this.f18815f.onSubscribe(this);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
        /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean mo3605p(T r9) {
            /*
                r8 = this;
                r0 = r8
                boolean r0 = r0.f18819j
                if (r0 == 0) goto L_0x0009
                r0 = 0
                return r0
            L_0x0009:
                r0 = 0
                r10 = r0
            L_0x000b:
                r0 = r8
                io.reactivex.functions.Consumer<? super T> r0 = r0.f18816g     // Catch: all -> 0x0021
                r1 = r9
                r0.accept(r1)     // Catch: all -> 0x0021
                r0 = r8
                org.reactivestreams.Subscriber<? super T> r0 = r0.f18815f
                r1 = r9
                r0.onNext(r1)
                r0 = 1
                return r0
            L_0x0021:
                r12 = move-exception
                r0 = r12
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                io.reactivex.functions.BiFunction<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r0 = r0.f18817h     // Catch: all -> 0x0083
                r13 = r0
                r0 = r10
                r1 = 1
                long r0 = r0 + r1
                r10 = r0
                r0 = r13
                r1 = r10
                java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: all -> 0x0083
                r2 = r12
                java.lang.Object r0 = r0.apply(r1, r2)     // Catch: all -> 0x0083
                r13 = r0
                r0 = r13
                java.lang.String r1 = "The errorHandler returned a null item"
                java.lang.Object r0 = io.reactivex.internal.functions.ObjectHelper.m4363e(r0, r1)     // Catch: all -> 0x0083
                r0 = r13
                io.reactivex.parallel.ParallelFailureHandling r0 = (io.reactivex.parallel.ParallelFailureHandling) r0     // Catch: all -> 0x0083
                r13 = r0
                int[] r0 = io.reactivex.internal.operators.parallel.ParallelDoOnNextTry.C21201.f18809a     // Catch: all -> 0x0083
                r1 = r13
                int r1 = r1.ordinal()
                r0 = r0[r1]
                r14 = r0
                r0 = r14
                r1 = 1
                if (r0 == r1) goto L_0x000b
                r0 = r14
                r1 = 2
                if (r0 == r1) goto L_0x0081
                r0 = r14
                r1 = 3
                if (r0 == r1) goto L_0x0079
                r0 = r8
                r0.cancel()
                r0 = r8
                r1 = r12
                r0.onError(r1)
                r0 = 0
                return r0
            L_0x0079:
                r0 = r8
                r0.cancel()
                r0 = r8
                r0.onComplete()
            L_0x0081:
                r0 = 0
                return r0
            L_0x0083:
                r9 = move-exception
                r0 = r9
                io.reactivex.exceptions.Exceptions.m4428b(r0)
                r0 = r8
                r0.cancel()
                r0 = r8
                io.reactivex.exceptions.CompositeException r1 = new io.reactivex.exceptions.CompositeException
                r2 = r1
                r3 = 2
                java.lang.Throwable[] r3 = new java.lang.Throwable[r3]
                r4 = r3
                r5 = 0
                r6 = r12
                r4[r5] = r6
                r4 = r3
                r5 = 1
                r6 = r9
                r4[r5] = r6
                r2.<init>(r3)
                r0.onError(r1)
                r0 = 0
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.parallel.ParallelDoOnNextTry.ParallelDoOnNextSubscriber.mo3605p(java.lang.Object):boolean");
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f18818i.request(j);
        }
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18806a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super T>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                Subscriber<? super T> subscriber = subscriberArr[i];
                if (subscriber instanceof ConditionalSubscriber) {
                    subscriberArr2[i] = new ParallelDoOnNextConditionalSubscriber((ConditionalSubscriber) subscriber, this.f18807b, this.f18808c);
                } else {
                    subscriberArr2[i] = new ParallelDoOnNextSubscriber(subscriber, this.f18807b, this.f18808c);
                }
            }
            this.f18806a.mo3378b(subscriberArr2);
        }
    }
}
