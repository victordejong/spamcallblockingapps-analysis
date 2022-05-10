package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9869b;
import p573f.p574a0.AbstractC9879i;
import p573f.p574a0.AbstractC9887m;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference2.class */
public abstract class MutablePropertyReference2 extends MutablePropertyReference implements AbstractC9879i {
    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9869b computeReflected() {
        C10062t.m1623a(this);
        return this;
    }

    @Override // p573f.p574a0.AbstractC9887m
    public Object getDelegate(Object obj, Object obj2) {
        return ((AbstractC9879i) getReflected()).getDelegate(obj, obj2);
    }

    @Override // p573f.p574a0.AbstractC9887m
    public AbstractC9887m.AbstractC9888a getGetter() {
        return ((AbstractC9879i) getReflected()).getGetter();
    }

    @Override // p573f.p574a0.AbstractC9879i
    public AbstractC9879i.AbstractC9880a getSetter() {
        return ((AbstractC9879i) getReflected()).getSetter();
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public Object invoke(Object obj, Object obj2) {
        return get(obj, obj2);
    }
}
