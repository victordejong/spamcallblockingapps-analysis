package kotlin.jvm.internal;

import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty1;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference1.class */
public abstract class MutablePropertyReference1 extends MutablePropertyReference implements KMutableProperty1 {
    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        Reflection.m1806e(this);
        return this;
    }

    @Override // kotlin.reflect.KProperty1
    public KProperty1.Getter getGetter() {
        return ((KMutableProperty1) getReflected()).getGetter();
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        return get(obj);
    }
}
