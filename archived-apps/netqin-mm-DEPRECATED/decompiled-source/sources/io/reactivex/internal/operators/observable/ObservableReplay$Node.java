package io.reactivex.internal.operators.observable;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReplay$Node.class */
public final class ObservableReplay$Node extends AtomicReference<ObservableReplay$Node> {
    public static final long serialVersionUID = 245354315435971818L;
    public final Object value;

    public ObservableReplay$Node(Object obj) {
        this.value = obj;
    }
}
