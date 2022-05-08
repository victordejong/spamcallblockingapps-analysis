package org.spongycastle.jce.exception;

import java.security.cert.CertPath;
import java.security.cert.CertPathValidatorException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/exception/ExtCertPathValidatorException.class */
public class ExtCertPathValidatorException extends CertPathValidatorException implements ExtException {
    private Throwable cause;

    public ExtCertPathValidatorException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    public ExtCertPathValidatorException(String str, Throwable th, CertPath certPath, int i) {
        super(str, th, certPath, i);
        this.cause = th;
    }

    @Override // java.lang.Throwable, org.spongycastle.jce.exception.ExtException
    public Throwable getCause() {
        return this.cause;
    }
}
