package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9869b;
import p573f.p574a0.AbstractC9883k;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PropertyReference0.class */
public abstract class PropertyReference0 extends PropertyReference implements AbstractC9883k {
    public PropertyReference0() {
    }

    public PropertyReference0(Object obj) {
        super(obj);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9869b computeReflected() {
        C10062t.m1622a(this);
        return this;
    }

    @Override // p573f.p574a0.AbstractC9883k
    public Object getDelegate() {
        return ((AbstractC9883k) getReflected()).getDelegate();
    }

    @Override // p573f.p574a0.AbstractC9883k
    public AbstractC9883k.AbstractC9884a getGetter() {
        return ((AbstractC9883k) getReflected()).getGetter();
    }

    @Override // p573f.p590w.p591b.AbstractC10020a
    public Object invoke() {
        return get();
    }
}
