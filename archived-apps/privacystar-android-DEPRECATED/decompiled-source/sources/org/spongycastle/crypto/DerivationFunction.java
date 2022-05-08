package org.spongycastle.crypto;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/DerivationFunction.class */
public interface DerivationFunction {
    int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException;

    void init(DerivationParameters derivationParameters);
}
