package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9871d;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference1Impl.class */
public class MutablePropertyReference1Impl extends MutablePropertyReference1 {
    public final String name;
    public final AbstractC9871d owner;
    public final String signature;

    public MutablePropertyReference1Impl(AbstractC9871d dVar, String str, String str2) {
        this.owner = dVar;
        this.name = str;
        this.signature = str2;
    }

    @Override // p573f.p574a0.AbstractC9885l
    public Object get(Object obj) {
        return getGetter().call(obj);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getName() {
        return this.name;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9871d getOwner() {
        return this.owner;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return this.signature;
    }

    public void set(Object obj, Object obj2) {
        getSetter().call(obj, obj2);
    }
}
