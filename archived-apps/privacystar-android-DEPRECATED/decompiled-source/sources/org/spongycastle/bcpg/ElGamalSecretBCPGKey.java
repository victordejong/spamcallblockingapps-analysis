package org.spongycastle.bcpg;

import java.io.IOException;
import java.math.BigInteger;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/bcpg/ElGamalSecretBCPGKey.class */
public class ElGamalSecretBCPGKey extends BCPGObject implements BCPGKey {

    /* renamed from: x */
    MPInteger f980x;

    public ElGamalSecretBCPGKey(BigInteger bigInteger) {
        this.f980x = new MPInteger(bigInteger);
    }

    public ElGamalSecretBCPGKey(BCPGInputStream bCPGInputStream) throws IOException {
        this.f980x = new MPInteger(bCPGInputStream);
    }

    @Override // org.spongycastle.bcpg.BCPGObject
    public void encode(BCPGOutputStream bCPGOutputStream) throws IOException {
        bCPGOutputStream.writeObject(this.f980x);
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

    public BigInteger getX() {
        return this.f980x.getValue();
    }
}
