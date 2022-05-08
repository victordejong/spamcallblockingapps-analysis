package org.spongycastle.jce.exception;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jce/exception/ExtIOException.class */
public class ExtIOException extends IOException implements ExtException {
    private Throwable cause;

    public ExtIOException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable, org.spongycastle.jce.exception.ExtException
    public Throwable getCause() {
        return this.cause;
    }
}
