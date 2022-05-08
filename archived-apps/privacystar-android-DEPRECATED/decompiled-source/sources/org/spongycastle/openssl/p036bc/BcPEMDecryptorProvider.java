package org.spongycastle.openssl.p036bc;

import org.spongycastle.openssl.PEMDecryptor;
import org.spongycastle.openssl.PEMDecryptorProvider;
import org.spongycastle.openssl.PEMException;
import org.spongycastle.openssl.PasswordException;
/* renamed from: org.spongycastle.openssl.bc.BcPEMDecryptorProvider */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/bc/BcPEMDecryptorProvider.class */
public class BcPEMDecryptorProvider implements PEMDecryptorProvider {
    private final char[] password;

    public BcPEMDecryptorProvider(char[] cArr) {
        this.password = cArr;
    }

    @Override // org.spongycastle.openssl.PEMDecryptorProvider
    public PEMDecryptor get(final String str) {
        return new PEMDecryptor() { // from class: org.spongycastle.openssl.bc.BcPEMDecryptorProvider.1
            @Override // org.spongycastle.openssl.PEMDecryptor
            public byte[] decrypt(byte[] bArr, byte[] bArr2) throws PEMException {
                if (BcPEMDecryptorProvider.this.password != null) {
                    return PEMUtilities.crypt(false, bArr, BcPEMDecryptorProvider.this.password, str, bArr2);
                }
                throw new PasswordException("Password is null, but a password is required");
            }
        };
    }
}
