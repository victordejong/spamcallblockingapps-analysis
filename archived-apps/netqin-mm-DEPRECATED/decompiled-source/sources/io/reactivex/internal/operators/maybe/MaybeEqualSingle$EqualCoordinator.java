package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9838m;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p542a0.AbstractC9641d;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeEqualSingle$EqualCoordinator.class */
public final class MaybeEqualSingle$EqualCoordinator<T> extends AtomicInteger implements AbstractC9861b {
    public final AbstractC9851u<? super Boolean> actual;
    public final AbstractC9641d<? super T, ? super T> isEqual;
    public final MaybeEqualSingle$EqualObserver<T> observer1 = new MaybeEqualSingle$EqualObserver<>(this);
    public final MaybeEqualSingle$EqualObserver<T> observer2 = new MaybeEqualSingle$EqualObserver<>(this);

    public MaybeEqualSingle$EqualCoordinator(AbstractC9851u<? super Boolean> uVar, AbstractC9641d<? super T, ? super T> dVar) {
        super(2);
        this.actual = uVar;
        this.isEqual = dVar;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        this.observer1.dispose();
        this.observer2.dispose();
    }

    public void done() {
        if (decrementAndGet() == 0) {
            Object obj = this.observer1.value;
            Object obj2 = this.observer2.value;
            if (obj == null || obj2 == null) {
                this.actual.onSuccess(Boolean.valueOf(obj == null && obj2 == null));
                return;
            }
            try {
                this.actual.onSuccess(Boolean.valueOf(this.isEqual.mo2094a(obj, obj2)));
            } catch (Throwable th) {
                C9863a.m1822b(th);
                this.actual.onError(th);
            }
        }
    }

    public void error(MaybeEqualSingle$EqualObserver<T> maybeEqualSingle$EqualObserver, Throwable th) {
        if (getAndSet(0) > 0) {
            MaybeEqualSingle$EqualObserver<T> maybeEqualSingle$EqualObserver2 = this.observer1;
            if (maybeEqualSingle$EqualObserver == maybeEqualSingle$EqualObserver2) {
                this.observer2.dispose();
            } else {
                maybeEqualSingle$EqualObserver2.dispose();
            }
            this.actual.onError(th);
            return;
        }
        C9815a.m1923b(th);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(this.observer1.get());
    }

    public void subscribe(AbstractC9838m<? extends T> mVar, AbstractC9838m<? extends T> mVar2) {
        mVar.mo1876a(this.observer1);
        mVar2.mo1876a(this.observer2);
    }
}
