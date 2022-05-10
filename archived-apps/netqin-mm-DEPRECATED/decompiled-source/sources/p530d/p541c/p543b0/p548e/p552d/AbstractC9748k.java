package p530d.p541c.p543b0.p548e.p552d;

import io.reactivex.internal.operators.observable.ObservableGroupJoin$LeftRightEndObserver;
import io.reactivex.internal.operators.observable.ObservableGroupJoin$LeftRightObserver;
/* renamed from: d.c.b0.e.d.k */
/* loaded from: classes2-dex2jar.jar:d/c/b0/e/d/k.class */
public interface AbstractC9748k {
    void innerClose(boolean z, ObservableGroupJoin$LeftRightEndObserver observableGroupJoin$LeftRightEndObserver);

    void innerCloseError(Throwable th);

    void innerComplete(ObservableGroupJoin$LeftRightObserver observableGroupJoin$LeftRightObserver);

    void innerError(Throwable th);

    void innerValue(boolean z, Object obj);
}
