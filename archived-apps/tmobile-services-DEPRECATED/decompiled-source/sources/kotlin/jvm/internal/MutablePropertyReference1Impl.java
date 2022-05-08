package kotlin.jvm.internal;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference1Impl.class */
public class MutablePropertyReference1Impl extends MutablePropertyReference1 {
    @Override // kotlin.reflect.KProperty1
    public Object get(Object obj) {
        return getGetter().call(obj);
    }
}
