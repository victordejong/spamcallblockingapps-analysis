package org.spongycastle.openpgp.operator;

import org.spongycastle.openpgp.PGPException;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/PGPDataDecryptorFactory.class */
public interface PGPDataDecryptorFactory {
    PGPDataDecryptor createDataDecryptor(boolean z, int i, byte[] bArr) throws PGPException;
}
