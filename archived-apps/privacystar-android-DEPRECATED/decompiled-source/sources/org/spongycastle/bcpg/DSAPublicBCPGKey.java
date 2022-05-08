package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/DSAPublicBCPGKey.class */
public class DSAPublicBCPGKey extends BCPGObject implements BCPGKey {

    /* renamed from: g */
    MPInteger f971g;

    /* renamed from: p */
    MPInteger f972p;

    /* renamed from: q */
    MPInteger f973q;

    /* renamed from: y */
    MPInteger f974y;

    public DSAPublicBCPGKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f972p = new MPInteger(bigInteger);
        this.f973q = new MPInteger(bigInteger2);
        this.f971g = new MPInteger(bigInteger3);
        this.f974y = new MPInteger(bigInteger4);
    }

    public DSAPublicBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.f972p = new MPInteger(bCPGInputStream);
        this.f973q = new MPInteger(bCPGInputStream);
        this.f971g = new MPInteger(bCPGInputStream);
        this.f974y = new MPInteger(bCPGInputStream);
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writeObject(this.f972p);
        bCPGOutputStream.writeObject(this.f973q);
        bCPGOutputStream.writeObject(this.f971g);
        bCPGOutputStream.writeObject(this.f974y);
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

    public BigInteger getG() {
        return this.f971g.getValue();
    }

    public BigInteger getP() {
        return this.f972p.getValue();
    }

    public BigInteger getQ() {
        return this.f973q.getValue();
    }

    public BigInteger getY() {
        return this.f974y.getValue();
    }
}
