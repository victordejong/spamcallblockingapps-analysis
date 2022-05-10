package io.reactivex.internal.operators.single;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import p530d.p541c.AbstractC9814e;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToFlowable.class */
public final class SingleToFlowable<T> extends AbstractC9814e<T> {

    /* renamed from: b */
    public final AbstractC9852v<? extends T> f38555b;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver.class */
    public static final class SingleToFlowableObserver<T> extends DeferredScalarSubscription<T> implements AbstractC9851u<T> {
        public static final long serialVersionUID = 187782011903685568L;

        /* renamed from: d */
        public AbstractC9861b f38556d;

        public SingleToFlowableObserver(AbstractC10433c<? super T> cVar) {
            super(cVar);
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, p611j.p612a.AbstractC10434d
        public void cancel() {
            super.cancel();
            this.f38556d.dispose();
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSubscribe(AbstractC9861b bVar) {
            if (DisposableHelper.validate(this.f38556d, bVar)) {
                this.f38556d = bVar;
                this.actual.onSubscribe(this);
            }
        }

        @Override // p530d.p541c.AbstractC9851u
        public void onSuccess(T t) {
            complete(t);
        }
    }

    public SingleToFlowable(AbstractC9852v<? extends T> vVar) {
        this.f38555b = vVar;
    }

    @Override // p530d.p541c.AbstractC9814e
    /* renamed from: a */
    public void mo213a(AbstractC10433c<? super T> cVar) {
        this.f38555b.mo1841a(new SingleToFlowableObserver(cVar));
    }
}
