package org.spongycastle.openpgp.operator.p035bc;

import java.io.OutputStream;
import org.spongycastle.crypto.Signer;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.PGPPublicKey;
import org.spongycastle.openpgp.operator.PGPContentVerifier;
import org.spongycastle.openpgp.operator.PGPContentVerifierBuilder;
import org.spongycastle.openpgp.operator.PGPContentVerifierBuilderProvider;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcPGPContentVerifierBuilderProvider */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider.class */
public class BcPGPContentVerifierBuilderProvider implements PGPContentVerifierBuilderProvider {
    private BcPGPKeyConverter keyConverter = new BcPGPKeyConverter();

    /* renamed from: org.spongycastle.openpgp.operator.bc.BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder.class */
    private class BcPGPContentVerifierBuilder implements PGPContentVerifierBuilder {
        private int hashAlgorithm;
        private int keyAlgorithm;

        public BcPGPContentVerifierBuilder(int i, int i2) {
            this.keyAlgorithm = i;
            this.hashAlgorithm = i2;
        }

        @Override // org.spongycastle.openpgp.operator.PGPContentVerifierBuilder
        public PGPContentVerifier build(final PGPPublicKey pGPPublicKey) throws PGPException {
            final Signer createSigner = BcImplProvider.createSigner(this.keyAlgorithm, this.hashAlgorithm);
            createSigner.init(false, BcPGPContentVerifierBuilderProvider.this.keyConverter.getPublicKey(pGPPublicKey));
            return new PGPContentVerifier() { // from class: org.spongycastle.openpgp.operator.bc.BcPGPContentVerifierBuilderProvider.BcPGPContentVerifierBuilder.1
                @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                public int getHashAlgorithm() {
                    return BcPGPContentVerifierBuilder.this.hashAlgorithm;
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                public int getKeyAlgorithm() {
                    return BcPGPContentVerifierBuilder.this.keyAlgorithm;
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                public long getKeyID() {
                    return pGPPublicKey.getKeyID();
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                public OutputStream getOutputStream() {
                    return new SignerOutputStream(createSigner);
                }

                @Override // org.spongycastle.openpgp.operator.PGPContentVerifier
                public boolean verify(byte[] bArr) {
                    return createSigner.verifySignature(bArr);
                }
            };
        }
    }

    @Override // org.spongycastle.openpgp.operator.PGPContentVerifierBuilderProvider
    public PGPContentVerifierBuilder get(int i, int i2) throws PGPException {
        return new BcPGPContentVerifierBuilder(i, i2);
    }
}
