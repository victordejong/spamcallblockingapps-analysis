package org.spongycastle.eac;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/eac/EACIOException.class */
public class EACIOException extends IOException {
    private Throwable cause;

    public EACIOException(String str) {
        super(str);
    }

    public EACIOException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
