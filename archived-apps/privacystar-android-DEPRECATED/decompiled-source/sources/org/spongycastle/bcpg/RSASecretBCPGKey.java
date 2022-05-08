package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/RSASecretBCPGKey.class */
public class RSASecretBCPGKey extends BCPGObject implements BCPGKey {
    BigInteger crt;

    /* renamed from: d */
    MPInteger f985d;
    BigInteger expP;
    BigInteger expQ;

    /* renamed from: p */
    MPInteger f986p;

    /* renamed from: q */
    MPInteger f987q;

    /* renamed from: u */
    MPInteger f988u;

    public RSASecretBCPGKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        int compareTo = bigInteger2.compareTo(bigInteger3);
        BigInteger bigInteger4 = bigInteger2;
        BigInteger bigInteger5 = bigInteger3;
        if (compareTo >= 0) {
            if (compareTo == 0) {
                throw new IllegalArgumentException("p and q cannot be equal");
            }
            bigInteger5 = bigInteger2;
            bigInteger4 = bigInteger3;
        }
        this.f985d = new MPInteger(bigInteger);
        this.f986p = new MPInteger(bigInteger4);
        this.f987q = new MPInteger(bigInteger5);
        this.f988u = new MPInteger(bigInteger4.modInverse(bigInteger5));
        this.expP = bigInteger.remainder(bigInteger4.subtract(BigInteger.valueOf(1L)));
        this.expQ = bigInteger.remainder(bigInteger5.subtract(BigInteger.valueOf(1L)));
        this.crt = bigInteger5.modInverse(bigInteger4);
    }

    public RSASecretBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.f985d = new MPInteger(bCPGInputStream);
        this.f986p = new MPInteger(bCPGInputStream);
        this.f987q = new MPInteger(bCPGInputStream);
        this.f988u = new MPInteger(bCPGInputStream);
        this.expP = this.f985d.getValue().remainder(this.f986p.getValue().subtract(BigInteger.valueOf(1L)));
        this.expQ = this.f985d.getValue().remainder(this.f987q.getValue().subtract(BigInteger.valueOf(1L)));
        this.crt = this.f987q.getValue().modInverse(this.f986p.getValue());
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writeObject(this.f985d);
        bCPGOutputStream.writeObject(this.f986p);
        bCPGOutputStream.writeObject(this.f987q);
        bCPGOutputStream.writeObject(this.f988u);
    }

    public BigInteger getCrtCoefficient() {
        return this.crt;
    }

    @Override // org.spongycastle.bcpg.BCPGObject, org.spongycastle.util.Encodable
    public byte[] getEncoded() {
        try {
            return super.getEncoded();
        } catch (IOException e) {
            return null;
        }
    }

    @Override // org.spongycastle.bcpg.BCPGKey
    public String getFormat() {
        return "PGP";
    }

    public BigInteger getModulus() {
        return this.f986p.getValue().multiply(this.f987q.getValue());
    }

    public BigInteger getPrimeExponentP() {
        return this.expP;
    }

    public BigInteger getPrimeExponentQ() {
        return this.expQ;
    }

    public BigInteger getPrimeP() {
        return this.f986p.getValue();
    }

    public BigInteger getPrimeQ() {
        return this.f987q.getValue();
    }

    public BigInteger getPrivateExponent() {
        return this.f985d.getValue();
    }
}
