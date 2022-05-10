package io.reactivex.internal.operators.maybe;

import p530d.p541c.AbstractC9838m;
import p530d.p541c.p542a0.AbstractC9645h;
import p611j.p612a.AbstractC10432b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeToPublisher.class */
public enum MaybeToPublisher implements AbstractC9645h<AbstractC9838m<Object>, AbstractC10432b<Object>> {
    INSTANCE;

    public static <T> AbstractC9645h<AbstractC9838m<T>, AbstractC10432b<T>> instance() {
        return INSTANCE;
    }

    public AbstractC10432b<Object> apply(AbstractC9838m<Object> mVar) throws Exception {
        return new MaybeToFlowable(mVar);
    }
}
