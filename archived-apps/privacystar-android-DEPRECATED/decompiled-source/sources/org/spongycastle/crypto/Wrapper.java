package org.spongycastle.crypto;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/Wrapper.class */
public interface Wrapper {
    String getAlgorithmName();

    void init(boolean z, CipherParameters cipherParameters);

    byte[] unwrap(byte[] bArr, int i, int i2) throws InvalidCipherTextException;

    byte[] wrap(byte[] bArr, int i, int i2);
}
