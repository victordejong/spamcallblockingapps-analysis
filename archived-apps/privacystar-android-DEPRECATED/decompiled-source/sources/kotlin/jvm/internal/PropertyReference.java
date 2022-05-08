package kotlin.jvm.internal;

import kotlin.SinceKotlin;
import kotlin.reflect.KCallable;
import kotlin.reflect.KProperty;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PropertyReference.class */
public abstract class PropertyReference extends CallableReference implements KProperty {
    public PropertyReference() {
    }

    @SinceKotlin(version = "1.1")
    public PropertyReference(Object obj) {
        super(obj);
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (obj instanceof PropertyReference) {
            PropertyReference propertyReference = (PropertyReference) obj;
            if (!getOwner().equals(propertyReference.getOwner()) || !getName().equals(propertyReference.getName()) || !getSignature().equals(propertyReference.getSignature()) || !Intrinsics.areEqual(getBoundReceiver(), propertyReference.getBoundReceiver())) {
                z = false;
            }
            return z;
        } else if (obj instanceof KProperty) {
            return obj.equals(compute());
        } else {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.jvm.internal.CallableReference
    @SinceKotlin(version = "1.1")
    public KProperty getReflected() {
        return (KProperty) super.getReflected();
    }

    public int hashCode() {
        return (((getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // kotlin.reflect.KProperty
    @SinceKotlin(version = "1.1")
    public boolean isConst() {
        return getReflected().isConst();
    }

    @Override // kotlin.reflect.KProperty
    @SinceKotlin(version = "1.1")
    public boolean isLateinit() {
        return getReflected().isLateinit();
    }

    public String toString() {
        KCallable compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        return "property " + getName() + " (Kotlin reflection is not available)";
    }
}
