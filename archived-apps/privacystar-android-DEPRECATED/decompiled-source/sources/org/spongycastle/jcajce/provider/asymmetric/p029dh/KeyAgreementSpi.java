package org.spongycastle.jcajce.provider.asymmetric.p029dh;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.agreement.kdf.DHKEKGenerator;
import org.spongycastle.crypto.util.DigestFactory;
import org.spongycastle.jcajce.provider.asymmetric.util.BaseAgreementSpi;
import org.spongycastle.jcajce.spec.UserKeyingMaterialSpec;
/* renamed from: org.spongycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi.class */
public class KeyAgreementSpi extends BaseAgreementSpi {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    /* renamed from: g */
    private BigInteger f1474g;

    /* renamed from: p */
    private BigInteger f1475p;
    private BigInteger result;

    /* renamed from: x */
    private BigInteger f1476x;

    /* renamed from: org.spongycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi$DHwithRFC2631KDF */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/asymmetric/dh/KeyAgreementSpi$DHwithRFC2631KDF.class */
    public static class DHwithRFC2631KDF extends KeyAgreementSpi {
        public DHwithRFC2631KDF() {
            super("DHwithRFC2631KDF", new DHKEKGenerator(DigestFactory.createSHA1()));
        }
    }

    public KeyAgreementSpi() {
        super("Diffie-Hellman", null);
    }

    public KeyAgreementSpi(String str, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
    }

    protected byte[] bigIntToBytes(BigInteger bigInteger) {
        int bitLength = (this.f1475p.bitLength() + 7) / 8;
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == bitLength) {
            return byteArray;
        }
        if (byteArray[0] == 0 && byteArray.length == bitLength + 1) {
            byte[] bArr = new byte[byteArray.length - 1];
            System.arraycopy(byteArray, 1, bArr, 0, bArr.length);
            return bArr;
        }
        byte[] bArr2 = new byte[bitLength];
        System.arraycopy(byteArray, 0, bArr2, bArr2.length - byteArray.length, byteArray.length);
        return bArr2;
    }

    @Override // org.spongycastle.jcajce.provider.asymmetric.util.BaseAgreementSpi
    protected byte[] calcSecret() {
        return bigIntToBytes(this.result);
    }

    @Override // javax.crypto.KeyAgreementSpi
    protected Key engineDoPhase(Key key, boolean z) throws InvalidKeyException, IllegalStateException {
        if (this.f1476x == null) {
            throw new IllegalStateException("Diffie-Hellman not initialised.");
        } else if (!(key instanceof DHPublicKey)) {
            throw new InvalidKeyException("DHKeyAgreement doPhase requires DHPublicKey");
        } else {
            DHPublicKey dHPublicKey = (DHPublicKey) key;
            if (!dHPublicKey.getParams().getG().equals(this.f1474g) || !dHPublicKey.getParams().getP().equals(this.f1475p)) {
                throw new InvalidKeyException("DHPublicKey not for this KeyAgreement!");
            }
            BigInteger y = dHPublicKey.getY();
            if (y == null || y.compareTo(TWO) < 0 || y.compareTo(this.f1475p.subtract(ONE)) >= 0) {
                throw new InvalidKeyException("Invalid DH PublicKey");
            }
            this.result = y.modPow(this.f1476x, this.f1475p);
            if (this.result.compareTo(ONE) == 0) {
                throw new InvalidKeyException("Shared key can't be 1");
            } else if (z) {
                return null;
            } else {
                return new BCDHPublicKey(this.result, dHPublicKey.getParams());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.jcajce.provider.asymmetric.util.BaseAgreementSpi, javax.crypto.KeyAgreementSpi
    public int engineGenerateSecret(byte[] bArr, int i) throws IllegalStateException, ShortBufferException {
        if (this.f1476x != null) {
            return super.engineGenerateSecret(bArr, i);
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.jcajce.provider.asymmetric.util.BaseAgreementSpi, javax.crypto.KeyAgreementSpi
    public SecretKey engineGenerateSecret(String str) throws NoSuchAlgorithmException {
        if (this.f1476x == null) {
            throw new IllegalStateException("Diffie-Hellman not initialised.");
        }
        return str.equals("TlsPremasterSecret") ? new SecretKeySpec(trimZeroes(bigIntToBytes(this.result)), str) : super.engineGenerateSecret(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.spongycastle.jcajce.provider.asymmetric.util.BaseAgreementSpi, javax.crypto.KeyAgreementSpi
    public byte[] engineGenerateSecret() throws IllegalStateException {
        if (this.f1476x != null) {
            return super.engineGenerateSecret();
        }
        throw new IllegalStateException("Diffie-Hellman not initialised.");
    }

    @Override // javax.crypto.KeyAgreementSpi
    protected void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        if (!(key instanceof DHPrivateKey)) {
            throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
        this.f1475p = dHPrivateKey.getParams().getP();
        this.f1474g = dHPrivateKey.getParams().getG();
        BigInteger x = dHPrivateKey.getX();
        this.result = x;
        this.f1476x = x;
    }

    @Override // javax.crypto.KeyAgreementSpi
    protected void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (!(key instanceof DHPrivateKey)) {
            throw new InvalidKeyException("DHKeyAgreement requires DHPrivateKey for initialisation");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) key;
        if (algorithmParameterSpec == null) {
            this.f1475p = dHPrivateKey.getParams().getP();
            this.f1474g = dHPrivateKey.getParams().getG();
        } else if (algorithmParameterSpec instanceof DHParameterSpec) {
            DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
            this.f1475p = dHParameterSpec.getP();
            this.f1474g = dHParameterSpec.getG();
        } else if (algorithmParameterSpec instanceof UserKeyingMaterialSpec) {
            this.f1475p = dHPrivateKey.getParams().getP();
            this.f1474g = dHPrivateKey.getParams().getG();
            this.ukmParameters = ((UserKeyingMaterialSpec) algorithmParameterSpec).getUserKeyingMaterial();
        } else {
            throw new InvalidAlgorithmParameterException("DHKeyAgreement only accepts DHParameterSpec");
        }
        BigInteger x = dHPrivateKey.getX();
        this.result = x;
        this.f1476x = x;
    }
}
