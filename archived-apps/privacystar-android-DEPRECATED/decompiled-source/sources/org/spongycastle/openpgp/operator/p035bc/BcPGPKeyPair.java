package org.spongycastle.openpgp.operator.p035bc;

import java.util.Date;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.openpgp.PGPAlgorithmParameters;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPKeyPair;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.PGPPublicKey;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcPGPKeyPair */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPGPKeyPair.class */
public class BcPGPKeyPair extends PGPKeyPair {
    public BcPGPKeyPair(int i, AsymmetricCipherKeyPair asymmetricCipherKeyPair, Date date) throws PGPException {
        this.pub = getPublicKey(i, null, asymmetricCipherKeyPair.getPublic(), date);
        this.priv = getPrivateKey(this.pub, asymmetricCipherKeyPair.getPrivate());
    }

    public BcPGPKeyPair(int i, PGPAlgorithmParameters pGPAlgorithmParameters, AsymmetricCipherKeyPair asymmetricCipherKeyPair, Date date) throws PGPException {
        this.pub = getPublicKey(i, pGPAlgorithmParameters, asymmetricCipherKeyPair.getPublic(), date);
        this.priv = getPrivateKey(this.pub, asymmetricCipherKeyPair.getPrivate());
    }

    private static PGPPrivateKey getPrivateKey(PGPPublicKey pGPPublicKey, AsymmetricKeyParameter asymmetricKeyParameter) throws PGPException {
        return new BcPGPKeyConverter().getPGPPrivateKey(pGPPublicKey, asymmetricKeyParameter);
    }

    private static PGPPublicKey getPublicKey(int i, PGPAlgorithmParameters pGPAlgorithmParameters, AsymmetricKeyParameter asymmetricKeyParameter, Date date) throws PGPException {
        return new BcPGPKeyConverter().getPGPPublicKey(i, pGPAlgorithmParameters, asymmetricKeyParameter, date);
    }
}
