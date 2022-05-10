package p530d.p541c.p543b0.p548e.p550b;

import io.reactivex.internal.operators.flowable.FlowableReplay$InnerSubscription;
/* renamed from: d.c.b0.e.b.o */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/b/o.class */
public interface AbstractC9699o<T> {
    void complete();

    void error(Throwable th);

    void next(T t);

    void replay(FlowableReplay$InnerSubscription<T> flowableReplay$InnerSubscription);
}
