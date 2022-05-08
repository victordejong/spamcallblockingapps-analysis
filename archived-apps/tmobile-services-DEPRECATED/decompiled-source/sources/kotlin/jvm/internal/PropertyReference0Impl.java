package kotlin.jvm.internal;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/PropertyReference0Impl.class */
public class PropertyReference0Impl extends PropertyReference0 {
    @Override // kotlin.reflect.KProperty0
    public Object get() {
        return getGetter().call(new Object[0]);
    }
}
