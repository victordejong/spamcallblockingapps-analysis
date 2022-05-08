package org.spongycastle.crypto;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/BlockCipher.class */
public interface BlockCipher {
    String getAlgorithmName();

    int getBlockSize();

    void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

    int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException;

    void reset();
}
