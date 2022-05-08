package org.spongycastle.cert.path;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/path/CertPathValidationException.class */
public class CertPathValidationException extends Exception {
    private final Exception cause;

    public CertPathValidationException(String str) {
        this(str, null);
    }

    public CertPathValidationException(String str, Exception exc) {
        super(str);
        this.cause = exc;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
