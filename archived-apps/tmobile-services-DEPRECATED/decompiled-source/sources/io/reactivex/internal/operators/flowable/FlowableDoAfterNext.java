package io.reactivex.internal.operators.flowable;

import io.reactivex.annotations.Nullable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.ConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableConditionalSubscriber;
import io.reactivex.internal.subscribers.BasicFuseableSubscriber;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoAfterNext.class */
public final class FlowableDoAfterNext<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Consumer<? super T> f15796h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoAfterNext$DoAfterConditionalSubscriber.class */
    static final class DoAfterConditionalSubscriber<T> extends BasicFuseableConditionalSubscriber<T, T> {

        /* renamed from: k */
        final Consumer<? super T> f15797k;

        DoAfterConditionalSubscriber(ConditionalSubscriber<? super T> conditionalSubscriber, Consumer<? super T> consumer) {
            super(conditionalSubscriber);
            this.f15797k = consumer;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f19343f.onNext(t);
            if (this.f19347j == 0) {
                try {
                    this.f15797k.accept(t);
                } catch (Throwable th) {
                    m3492c(th);
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.ConditionalSubscriber
        /* renamed from: p */
        public boolean mo3605p(T t) {
            boolean p = this.f19343f.mo3605p(t);
            try {
                this.f15797k.accept(t);
            } catch (Throwable th) {
                m3492c(th);
            }
            return p;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll = this.f19345h.poll();
            if (poll != null) {
                this.f15797k.accept(poll);
            }
            return poll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3491d(i);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableDoAfterNext$DoAfterSubscriber.class */
    static final class DoAfterSubscriber<T> extends BasicFuseableSubscriber<T, T> {

        /* renamed from: k */
        final Consumer<? super T> f15798k;

        DoAfterSubscriber(Subscriber<? super T> subscriber, Consumer<? super T> consumer) {
            super(subscriber);
            this.f15798k = consumer;
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f19351i) {
                this.f19348f.onNext(t);
                if (this.f19352j == 0) {
                    try {
                        this.f15798k.accept(t);
                    } catch (Throwable th) {
                        m3488c(th);
                    }
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            T poll = this.f19350h.poll();
            if (poll != null) {
                this.f15798k.accept(poll);
            }
            return poll;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return m3487d(i);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        if (subscriber instanceof ConditionalSubscriber) {
            this.f15411g.m4493v(new DoAfterConditionalSubscriber((ConditionalSubscriber) subscriber, this.f15796h));
        } else {
            this.f15411g.m4493v(new DoAfterSubscriber(subscriber, this.f15796h));
        }
    }
}
