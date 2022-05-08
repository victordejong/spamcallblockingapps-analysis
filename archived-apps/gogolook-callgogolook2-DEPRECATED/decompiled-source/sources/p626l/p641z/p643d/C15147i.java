package p626l.p641z.p643d;

import p626l.p629c0.AbstractC14899b;
import p626l.p629c0.AbstractC14903f;
/* renamed from: l.z.d.i */
/* loaded from: classes3-dex2jar.jar:l/z/d/i.class */
public class C15147i extends AbstractC15134c implements AbstractC15146h, AbstractC14903f {
    public final int arity;

    public C15147i(int i) {
        this.arity = i;
    }

    public C15147i(int i, Object obj) {
        super(obj);
        this.arity = i;
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public AbstractC14899b computeReflected() {
        C15131a0.m416a(this);
        return this;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x005b, code lost:
        if (p626l.p641z.p643d.C15149k.m384a(getBoundReceiver(), r0.getBoundReceiver()) != false) goto L_0x0063;
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
            boolean r0 = r0 instanceof p626l.p641z.p643d.C15147i
            if (r0 == 0) goto L_0x0065
            r0 = r4
            l.z.d.i r0 = (p626l.p641z.p643d.C15147i) r0
            r4 = r0
            r0 = r3
            l.c0.e r0 = r0.getOwner()
            if (r0 != 0) goto L_0x0026
            r0 = r4
            l.c0.e r0 = r0.getOwner()
            if (r0 != 0) goto L_0x0061
            goto L_0x0034
        L_0x0026:
            r0 = r3
            l.c0.e r0 = r0.getOwner()
            r1 = r4
            l.c0.e r1 = r1.getOwner()
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
            boolean r0 = p626l.p641z.p643d.C15149k.m384a(r0, r1)
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
            boolean r0 = r0 instanceof p626l.p629c0.AbstractC14903f
            if (r0 == 0) goto L_0x0075
            r0 = r4
            r1 = r3
            l.c0.b r1 = r1.compute()
            boolean r0 = r0.equals(r1)
            return r0
        L_0x0075:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p626l.p641z.p643d.C15147i.equals(java.lang.Object):boolean");
    }

    @Override // p626l.p641z.p643d.AbstractC15146h
    public int getArity() {
        return this.arity;
    }

    @Override // p626l.p641z.p643d.AbstractC15134c
    public AbstractC14903f getReflected() {
        return (AbstractC14903f) super.getReflected();
    }

    public int hashCode() {
        return (((getOwner() == null ? 0 : getOwner().hashCode() * 31) + getName().hashCode()) * 31) + getSignature().hashCode();
    }

    @Override // p626l.p629c0.AbstractC14903f
    public boolean isExternal() {
        return getReflected().isExternal();
    }

    @Override // p626l.p629c0.AbstractC14903f
    public boolean isInfix() {
        return getReflected().isInfix();
    }

    @Override // p626l.p629c0.AbstractC14903f
    public boolean isInline() {
        return getReflected().isInline();
    }

    @Override // p626l.p629c0.AbstractC14903f
    public boolean isOperator() {
        return getReflected().isOperator();
    }

    @Override // p626l.p641z.p643d.AbstractC15134c, p626l.p629c0.AbstractC14899b
    public boolean isSuspend() {
        return getReflected().isSuspend();
    }

    public String toString() {
        String str;
        AbstractC14899b compute = compute();
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
