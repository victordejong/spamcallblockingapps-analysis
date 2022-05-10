package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscribers.SinglePostCompleteSubscriber;
import p530d.p541c.C9839n;
import p530d.p541c.p560e0.C9815a;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableMaterialize$MaterializeSubscriber.class */
public final class FlowableMaterialize$MaterializeSubscriber<T> extends SinglePostCompleteSubscriber<T, C9839n<T>> {
    public static final long serialVersionUID = -3740826063558713822L;

    public FlowableMaterialize$MaterializeSubscriber(AbstractC10433c<? super C9839n<T>> cVar) {
        super(cVar);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        complete(C9839n.m1871c());
    }

    public void onDrop(C9839n<T> nVar) {
        if (nVar.m1872b()) {
            C9815a.m1923b(nVar.m1875a());
        }
    }

    @Override // io.reactivex.internal.subscribers.SinglePostCompleteSubscriber
    public /* bridge */ /* synthetic */ void onDrop(Object obj) {
        onDrop((C9839n) ((C9839n) obj));
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        complete(C9839n.m1873a(th));
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        this.produced++;
        this.actual.onNext(C9839n.m1874a(t));
    }
}
