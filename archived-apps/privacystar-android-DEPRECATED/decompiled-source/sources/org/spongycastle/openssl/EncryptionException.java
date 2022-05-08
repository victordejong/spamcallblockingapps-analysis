package org.spongycastle.openssl;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/EncryptionException.class */
public class EncryptionException extends PEMException {
    private Throwable cause;

    public EncryptionException(String str) {
        super(str);
    }

    public EncryptionException(String str, Throwable th) {
        super(str);
        this.cause = th;
    }

    @Override // org.spongycastle.openssl.PEMException, java.lang.Throwable
    public Throwable getCause() {
        return this.cause;
    }
}
