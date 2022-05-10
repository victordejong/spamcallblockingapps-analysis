package kotlin.jvm.internal;

import p573f.p574a0.AbstractC9869b;
import p573f.p574a0.AbstractC9872e;
import p573f.p590w.p592c.AbstractC10058p;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/FunctionReference.class */
public class FunctionReference extends CallableReference implements AbstractC10058p, AbstractC9872e {
    public final int arity;

    public FunctionReference(int i) {
        this.arity = i;
    }

    public FunctionReference(int i, Object obj) {
        super(obj);
        this.arity = i;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9869b computeReflected() {
        C10062t.m1627a(this);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
        if (p573f.p590w.p592c.C10059q.m1643a(getBoundReceiver(), r0.getBoundReceiver()) != false) goto L_0x0063;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof kotlin.jvm.internal.FunctionReference
            if (r0 == 0) goto L_0x0065
            r0 = r4
            kotlin.jvm.internal.FunctionReference r0 = (kotlin.jvm.internal.FunctionReference) r0
            r4 = r0
            r0 = r3
            f.a0.d r0 = r0.getOwner()
            if (r0 != 0) goto L_0x0026
            r0 = r4
            f.a0.d r0 = r0.getOwner()
            if (r0 != 0) goto L_0x0061
            goto L_0x0034
        L_0x0026:
            r0 = r3
            f.a0.d r0 = r0.getOwner()
            r1 = r4
            f.a0.d r1 = r1.getOwner()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0061
        L_0x0034:
            r0 = r3
            java.lang.String r0 = r0.getName()
            r1 = r4
            java.lang.String r1 = r1.getName()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0061
            r0 = r3
            java.lang.String r0 = r0.getSignature()
            r1 = r4
            java.lang.String r1 = r1.getSignature()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0061
            r0 = r3
            java.lang.Object r0 = r0.getBoundReceiver()
            r1 = r4
            java.lang.Object r1 = r1.getBoundReceiver()
            boolean r0 = p573f.p590w.p592c.C10059q.m1643a(r0, r1)
            if (r0 == 0) goto L_0x0061
            goto L_0x0063
        L_0x0061:
            r0 = 0
            r5 = r0
        L_0x0063:
            r0 = r5
            return r0
        L_0x0065:
            r0 = r4
            boolean r0 = r0 instanceof p573f.p574a0.AbstractC9872e
            if (r0 == 0) goto L_0x0075
            r0 = r4
            r1 = r3
            f.a0.b r1 = r1.compute()
            boolean r0 = r0.equals(r1)
            return r0
        L_0x0075:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.jvm.internal.FunctionReference.equals(java.lang.Object):boolean");
    }

    @Override // p573f.p590w.p592c.AbstractC10058p
    public int getArity() {
        return this.arity;
    }

    @Override // kotlin.jvm.internal.CallableReference
    public AbstractC9872e getReflected() {
        return (AbstractC9872e) super.getReflected();
    }

    public int hashCode() {
        return (((getOwner() == null ? 0 : getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // p573f.p574a0.AbstractC9872e
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // p573f.p574a0.AbstractC9872e
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // p573f.p574a0.AbstractC9872e
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // p573f.p574a0.AbstractC9872e
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // kotlin.jvm.internal.CallableReference, p573f.p574a0.AbstractC9869b
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        String str;
        AbstractC9869b compute = compute();
        if (compute != this) {
            return compute.toString();
        }
        if ("<init>".equals(getName())) {
            str = "constructor (Kotlin reflection is not available)";
        } else {
            str = "function " + getName() + " (Kotlin reflection is not available)";
        }
        return str;
    }
}
