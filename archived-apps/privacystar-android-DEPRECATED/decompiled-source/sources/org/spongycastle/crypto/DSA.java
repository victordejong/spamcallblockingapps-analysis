package org.spongycastle.crypto;

import java.math.BigInteger;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/DSA.class */
public interface DSA {
    BigInteger[] generateSignature(byte[] bArr);

    void init(boolean z, CipherParameters cipherParameters);

    boolean verifySignature(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2);
}
