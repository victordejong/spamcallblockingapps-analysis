package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeysToParams.class */
public class McElieceCCA2KeysToParams {
    public static AsymmetricKeyParameter generatePrivateKeyParameter(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof BCMcElieceCCA2PrivateKey) {
            return ((BCMcElieceCCA2PrivateKey) privateKey).getKeyParams();
        }
        throw new InvalidKeyException("can't identify McElieceCCA2 private key.");
    }

    public static AsymmetricKeyParameter generatePublicKeyParameter(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof BCMcElieceCCA2PublicKey) {
            return ((BCMcElieceCCA2PublicKey) publicKey).getKeyParams();
        }
        throw new InvalidKeyException("can't identify McElieceCCA2 public key: " + publicKey.getClass().getName());
    }
}
