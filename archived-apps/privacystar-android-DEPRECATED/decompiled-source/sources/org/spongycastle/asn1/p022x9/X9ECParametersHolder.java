package org.spongycastle.asn1.p022x9;
/* renamed from: org.spongycastle.asn1.x9.X9ECParametersHolder */
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x9/X9ECParametersHolder.class */
public abstract class X9ECParametersHolder {
    private X9ECParameters params;

    protected abstract X9ECParameters createParameters();

    public X9ECParameters getParameters() {
        X9ECParameters x9ECParameters;
        synchronized (this) {
            if (this.params == null) {
                this.params = createParameters();
            }
            x9ECParameters = this.params;
        }
        return x9ECParameters;
    }
}
