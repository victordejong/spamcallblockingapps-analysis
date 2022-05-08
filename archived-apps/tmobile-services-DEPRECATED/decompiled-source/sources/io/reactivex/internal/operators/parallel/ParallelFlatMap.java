package io.reactivex.internal.operators.parallel;

import io.reactivex.functions.Function;
import io.reactivex.internal.operators.flowable.FlowableFlatMap;
import io.reactivex.parallel.ParallelFlowable;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelFlatMap.class */
public final class ParallelFlatMap<T, R> extends ParallelFlowable<R> {

    /* renamed from: a */
    final ParallelFlowable<T> f18837a;

    /* renamed from: b */
    final Function<? super T, ? extends Publisher<? extends R>> f18838b;

    /* renamed from: c */
    final boolean f18839c;

    /* renamed from: d */
    final int f18840d;

    /* renamed from: e */
    final int f18841e;

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: a */
    public int mo3379a() {
        return this.f18837a.mo3379a();
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    /* renamed from: b */
    public void mo3378b(Subscriber<? super R>[] subscriberArr) {
        if (m3377c(subscriberArr)) {
            int length = subscriberArr.length;
            Subscriber<? super T>[] subscriberArr2 = new Subscriber[length];
            for (int i = 0; i < length; i++) {
                subscriberArr2[i] = FlowableFlatMap.m4251C(subscriberArr[i], this.f18838b, this.f18839c, this.f18840d, this.f18841e);
            }
            this.f18837a.mo3378b(subscriberArr2);
        }
    }
}
