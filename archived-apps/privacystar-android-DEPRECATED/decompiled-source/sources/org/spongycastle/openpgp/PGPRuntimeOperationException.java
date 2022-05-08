package org.spongycastle.openpgp;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPRuntimeOperationException.class */
public class PGPRuntimeOperationException extends RuntimeException {
    private final Throwable cause;

    public PGPRuntimeOperationException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
