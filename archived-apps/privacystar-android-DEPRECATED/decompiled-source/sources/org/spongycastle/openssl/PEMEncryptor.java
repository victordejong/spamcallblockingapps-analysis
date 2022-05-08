package org.spongycastle.openssl;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openssl/PEMEncryptor.class */
public interface PEMEncryptor {
    byte[] encrypt(byte[] bArr) throws PEMException;

    String getAlgorithm();

    byte[] getIV();
}
