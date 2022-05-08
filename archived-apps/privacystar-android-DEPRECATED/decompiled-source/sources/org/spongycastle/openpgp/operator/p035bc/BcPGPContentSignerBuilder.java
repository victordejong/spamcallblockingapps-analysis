package org.spongycastle.openpgp.operator.p035bc;

import java.io.OutputStream;
import java.security.SecureRandom;
import org.spongycastle.crypto.CryptoException;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPrivateKey;
import org.spongycastle.openpgp.operator.PGPContentSigner;
import org.spongycastle.openpgp.operator.PGPContentSignerBuilder;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.util.p039io.TeeOutputStream;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcPGPContentSignerBuilder */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPGPContentSignerBuilder.class */
public class BcPGPContentSignerBuilder implements PGPContentSignerBuilder {
    private int hashAlgorithm;
    private int keyAlgorithm;
    private SecureRandom random;
    private BcPGPDigestCalculatorProvider digestCalculatorProvider = new BcPGPDigestCalculatorProvider();
    private BcPGPKeyConverter keyConverter = new BcPGPKeyConverter();

    public BcPGPContentSignerBuilder(int i, int i2) {
        this.keyAlgorithm = i;
        this.hashAlgorithm = i2;
    }

    @Override // org.spongycastle.openpgp.operator.PGPContentSignerBuilder
    public PGPContentSigner build(final int i, final PGPPrivateKey pGPPrivateKey) throws PGPException {
        final PGPDigestCalculator pGPDigestCalculator = this.digestCalculatorProvider.get(this.hashAlgorithm);
        final Signer createSigner = BcImplProvider.createSigner(this.keyAlgorithm, this.hashAlgorithm);
        if (this.random != null) {
            createSigner.init(true, new ParametersWithRandom(this.keyConverter.getPrivateKey(pGPPrivateKey), this.random));
        } else {
            createSigner.init(true, this.keyConverter.getPrivateKey(pGPPrivateKey));
        }
        return new PGPContentSigner() { // from class: org.spongycastle.openpgp.operator.bc.BcPGPContentSignerBuilder.1
            @Override // org.spongycastle.openpgp.operator.PGPContentSigner
            public byte[] getDigest() {
                return pGPDigestCalculator.getDigest();
            }

            @Override // org.spongycastle.openpgp.operator.PGPContentSigner
            public int getHashAlgorithm() {
                return BcPGPContentSignerBuilder.this.hashAlgorithm;
            }

            @Override // org.spongycastle.openpgp.operator.PGPContentSigner
            public int getKeyAlgorithm() {
                return BcPGPContentSignerBuilder.this.keyAlgorithm;
            }

            @Override // org.spongycastle.openpgp.operator.PGPContentSigner
            public long getKeyID() {
                return pGPPrivateKey.getKeyID();
            }

            @Override // org.spongycastle.openpgp.operator.PGPContentSigner
            public OutputStream getOutputStream() {
                return new TeeOutputStream(new SignerOutputStream(createSigner), pGPDigestCalculator.getOutputStream());
            }

            @Override // org.spongycastle.openpgp.operator.PGPContentSigner
            public byte[] getSignature() {
                try {
                    return createSigner.generateSignature();
                } catch (CryptoException e) {
                    throw new IllegalStateException("unable to create signature");
                }
            }

            @Override // org.spongycastle.openpgp.operator.PGPContentSigner
            public int getType() {
                return i;
            }
        };
    }

    public BcPGPContentSignerBuilder setSecureRandom(SecureRandom secureRandom) {
        this.random = secureRandom;
        return this;
    }
}
