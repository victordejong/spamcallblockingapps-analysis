package org.spongycastle.pqc.crypto;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Signer;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/DigestingMessageSigner.class */
public class DigestingMessageSigner implements Signer {
    private boolean forSigning;
    private final Digest messDigest;
    private final MessageSigner messSigner;

    public DigestingMessageSigner(MessageSigner messageSigner, Digest digest) {
        this.messSigner = messageSigner;
        this.messDigest = digest;
    }

    @Override // org.spongycastle.crypto.Signer
    public byte[] generateSignature() {
        if (!this.forSigning) {
            throw new IllegalStateException("DigestingMessageSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[this.messDigest.getDigestSize()];
        this.messDigest.doFinal(bArr, 0);
        return this.messSigner.generateSignature(bArr);
    }

    @Override // org.spongycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.forSigning = z;
        AsymmetricKeyParameter asymmetricKeyParameter = cipherParameters instanceof ParametersWithRandom ? (AsymmetricKeyParameter) ((ParametersWithRandom) cipherParameters).getParameters() : (AsymmetricKeyParameter) cipherParameters;
        if (z && !asymmetricKeyParameter.isPrivate()) {
            throw new IllegalArgumentException("Signing Requires Private Key.");
        } else if (z || !asymmetricKeyParameter.isPrivate()) {
            reset();
            this.messSigner.init(z, cipherParameters);
        } else {
            throw new IllegalArgumentException("Verification Requires Public Key.");
        }
    }

    @Override // org.spongycastle.crypto.Signer
    public void reset() {
        this.messDigest.reset();
    }

    @Override // org.spongycastle.crypto.Signer
    public void update(byte b) {
        this.messDigest.update(b);
    }

    @Override // org.spongycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.messDigest.update(bArr, i, i2);
    }

    @Override // org.spongycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        if (this.forSigning) {
            throw new IllegalStateException("DigestingMessageSigner not initialised for verification");
        }
        byte[] bArr2 = new byte[this.messDigest.getDigestSize()];
        this.messDigest.doFinal(bArr2, 0);
        return this.messSigner.verifySignature(bArr2, bArr);
    }
}
