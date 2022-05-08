package org.spongycastle.jce.provider;

import java.security.cert.CRLException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/provider/ExtCRLException.class */
class ExtCRLException extends CRLException {
    Throwable cause;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExtCRLException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
