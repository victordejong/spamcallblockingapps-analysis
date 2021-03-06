package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KMutableProperty;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference.class */
public abstract class MutablePropertyReference extends PropertyReference implements KMutableProperty {
    public MutablePropertyReference() {
    }

    @SinceKotlin(version = "1.1")
    public MutablePropertyReference(Object obj) {
        super(obj);
    }
}
