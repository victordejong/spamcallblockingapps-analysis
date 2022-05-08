package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KProperty0;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference0.class */
public abstract class MutablePropertyReference0 extends MutablePropertyReference implements KMutableProperty0 {
    public MutablePropertyReference0() {
    }

    @SinceKotlin
    public MutablePropertyReference0(Object obj) {
        super(obj);
    }

    @SinceKotlin
    public MutablePropertyReference0(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, i);
    }

    @Override // kotlin.jvm.internal.CallableReference
    protected KCallable computeReflected() {
        Reflection.m1807d(this);
        return this;
    }

    @Override // kotlin.reflect.KProperty0
    @SinceKotlin
    public Object getDelegate() {
        return ((KMutableProperty0) getReflected()).getDelegate();
    }

    @Override // kotlin.reflect.KProperty0
    public KProperty0.Getter getGetter() {
        return ((KMutableProperty0) getReflected()).getGetter();
    }

    @Override // kotlin.reflect.KMutableProperty0
    public KMutableProperty0.Setter getSetter() {
        return ((KMutableProperty0) getReflected()).getSetter();
    }

    @Override // kotlin.jvm.functions.Function0
    public Object invoke() {
        return get();
    }
}
