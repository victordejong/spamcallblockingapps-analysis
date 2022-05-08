package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty1;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PropertyReference1.class */
public abstract class PropertyReference1 extends PropertyReference implements KProperty1 {
    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        Reflection.m1802i(this);
        return this;
    }

    @Override // kotlin.reflect.KProperty1
    public KProperty1.Getter getGetter() {
        return ((KProperty1) getReflected()).getGetter();
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return get(obj);
    }
}
