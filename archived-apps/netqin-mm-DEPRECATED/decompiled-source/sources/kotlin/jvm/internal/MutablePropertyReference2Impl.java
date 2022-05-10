package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9871d;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/MutablePropertyReference2Impl.class */
public class MutablePropertyReference2Impl extends MutablePropertyReference2 {
    public final String name;
    public final AbstractC9871d owner;
    public final String signature;

    public MutablePropertyReference2Impl(AbstractC9871d dVar, String str, String str2) {
        this.owner = dVar;
        this.name = str;
        this.signature = str2;
    }

    @Override // p573f.p574a0.AbstractC9887m
    public Object get(Object obj, Object obj2) {
        return getGetter().call(obj, obj2);
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

    public void set(Object obj, Object obj2, Object obj3) {
        getSetter().call(obj, obj2, obj3);
    }
}
