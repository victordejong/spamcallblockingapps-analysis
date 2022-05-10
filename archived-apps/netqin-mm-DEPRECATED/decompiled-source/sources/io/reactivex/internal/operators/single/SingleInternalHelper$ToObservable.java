package io.reactivex.internal.operators.single;

import p530d.p541c.AbstractC9840o;
import p530d.p541c.AbstractC9852v;
import p530d.p541c.p542a0.AbstractC9645h;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleInternalHelper$ToObservable.class */
public enum SingleInternalHelper$ToObservable implements AbstractC9645h<AbstractC9852v, AbstractC9840o> {
    INSTANCE;

    public AbstractC9840o apply(AbstractC9852v vVar) {
        return new SingleToObservable(vVar);
    }
}
