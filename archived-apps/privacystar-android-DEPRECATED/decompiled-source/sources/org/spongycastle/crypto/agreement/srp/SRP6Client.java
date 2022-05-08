package org.spongycastle.crypto.agreement.srp;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.SRP6GroupParameters;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/agreement/srp/SRP6Client.class */
public class SRP6Client {

    /* renamed from: A */
    protected BigInteger f1024A;

    /* renamed from: B */
    protected BigInteger f1025B;
    protected BigInteger Key;

    /* renamed from: M1 */
    protected BigInteger f1026M1;

    /* renamed from: M2 */
    protected BigInteger f1027M2;

    /* renamed from: N */
    protected BigInteger f1028N;

    /* renamed from: S */
    protected BigInteger f1029S;

    /* renamed from: a */
    protected BigInteger f1030a;
    protected Digest digest;

    /* renamed from: g */
    protected BigInteger f1031g;
    protected SecureRandom random;

    /* renamed from: u */
    protected BigInteger f1032u;

    /* renamed from: x */
    protected BigInteger f1033x;

    private BigInteger calculateS() {
        BigInteger calculateK = SRP6Util.calculateK(this.digest, this.f1028N, this.f1031g);
        return this.f1025B.subtract(this.f1031g.modPow(this.f1033x, this.f1028N).multiply(calculateK).mod(this.f1028N)).mod(this.f1028N).modPow(this.f1032u.multiply(this.f1033x).add(this.f1030a), this.f1028N);
    }

    public BigInteger calculateClientEvidenceMessage() throws CryptoException {
        if (this.f1024A == null || this.f1025B == null || this.f1029S == null) {
            throw new CryptoException("Impossible to compute M1: some data are missing from the previous operations (A,B,S)");
        }
        this.f1026M1 = SRP6Util.calculateM1(this.digest, this.f1028N, this.f1024A, this.f1025B, this.f1029S);
        return this.f1026M1;
    }

    public BigInteger calculateSecret(BigInteger bigInteger) throws CryptoException {
        this.f1025B = SRP6Util.validatePublicValue(this.f1028N, bigInteger);
        this.f1032u = SRP6Util.calculateU(this.digest, this.f1028N, this.f1024A, this.f1025B);
        this.f1029S = calculateS();
        return this.f1029S;
    }

    public BigInteger calculateSessionKey() throws CryptoException {
        if (this.f1029S == null || this.f1026M1 == null || this.f1027M2 == null) {
            throw new CryptoException("Impossible to compute Key: some data are missing from the previous operations (S,M1,M2)");
        }
        this.Key = SRP6Util.calculateKey(this.digest, this.f1028N, this.f1029S);
        return this.Key;
    }

    public BigInteger generateClientCredentials(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        this.f1033x = SRP6Util.calculateX(this.digest, this.f1028N, bArr, bArr2, bArr3);
        this.f1030a = selectPrivateValue();
        this.f1024A = this.f1031g.modPow(this.f1030a, this.f1028N);
        return this.f1024A;
    }

    public void init(BigInteger bigInteger, BigInteger bigInteger2, Digest digest, SecureRandom secureRandom) {
        this.f1028N = bigInteger;
        this.f1031g = bigInteger2;
        this.digest = digest;
        this.random = secureRandom;
    }

    public void init(SRP6GroupParameters sRP6GroupParameters, Digest digest, SecureRandom secureRandom) {
        init(sRP6GroupParameters.getN(), sRP6GroupParameters.getG(), digest, secureRandom);
    }

    protected BigInteger selectPrivateValue() {
        return SRP6Util.generatePrivateValue(this.digest, this.f1028N, this.f1031g, this.random);
    }

    public boolean verifyServerEvidenceMessage(BigInteger bigInteger) throws CryptoException {
        if (this.f1024A == null || this.f1026M1 == null || this.f1029S == null) {
            throw new CryptoException("Impossible to compute and verify M2: some data are missing from the previous operations (A,M1,S)");
        } else if (!SRP6Util.calculateM2(this.digest, this.f1028N, this.f1024A, this.f1026M1, this.f1029S).equals(bigInteger)) {
            return false;
        } else {
            this.f1027M2 = bigInteger;
            return true;
        }
    }
}
