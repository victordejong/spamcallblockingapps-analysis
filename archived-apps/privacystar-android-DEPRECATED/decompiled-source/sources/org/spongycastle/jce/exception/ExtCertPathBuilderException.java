package org.spongycastle.jce.exception;

import java.security.cert.CertPath;
import java.security.cert.CertPathBuilderException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/exception/ExtCertPathBuilderException.class */
public class ExtCertPathBuilderException extends CertPathBuilderException implements ExtException {
    private Throwable cause;

    public ExtCertPathBuilderException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    public ExtCertPathBuilderException(String str, Throwable th, CertPath certPath, int i) {
        super(str, th);
        this.cause = th;
    }

    @Override // java.lang.Throwable, org.spongycastle.jce.exception.ExtException
    public Throwable getCause() {
        return this.cause;
    }
}
