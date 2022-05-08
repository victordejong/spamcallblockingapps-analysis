package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.crypto.StateAwareMessageSigner;
import org.spongycastle.pqc.crypto.xmss.OTSHashAddress;
import org.spongycastle.pqc.crypto.xmss.XMSSSignature;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSSigner.class */
public class XMSSSigner implements StateAwareMessageSigner {
    private boolean hasGenerated;
    private boolean initSign;
    private KeyedHashFunctions khf;
    private XMSSPrivateKeyParameters nextKeyGenerator;
    private XMSSParameters params;
    private XMSSPrivateKeyParameters privateKey;
    private XMSSPublicKeyParameters publicKey;

    private WOTSPlusSignature wotsSign(byte[] bArr, OTSHashAddress oTSHashAddress) {
        if (bArr.length != this.params.getDigestSize()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        } else if (oTSHashAddress == null) {
            throw new NullPointerException("otsHashAddress == null");
        } else {
            this.params.getWOTSPlus().importKeys(this.params.getWOTSPlus().getWOTSPlusSecretKey(this.privateKey.getSecretKeySeed(), oTSHashAddress), this.privateKey.getPublicSeed());
            return this.params.getWOTSPlus().sign(bArr, oTSHashAddress);
        }
    }

    @Override // org.spongycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("message == null");
        } else if (!this.initSign) {
            throw new IllegalStateException("signer not initialized for signature generation");
        } else if (this.privateKey == null) {
            throw new IllegalStateException("signing key no longer usable");
        } else if (this.privateKey.getBDSState().getAuthenticationPath().isEmpty()) {
            throw new IllegalStateException("not initialized");
        } else {
            int index = this.privateKey.getIndex();
            long j = index;
            if (!XMSSUtil.isIndexValid(this.params.getHeight(), j)) {
                throw new IllegalStateException("index out of bounds");
            }
            byte[] PRF = this.khf.PRF(this.privateKey.getSecretKeyPRF(), XMSSUtil.toBytesBigEndian(j, 32));
            XMSSSignature xMSSSignature = (XMSSSignature) new XMSSSignature.Builder(this.params).withIndex(index).withRandom(PRF).withWOTSPlusSignature(wotsSign(this.khf.HMsg(Arrays.concatenate(PRF, this.privateKey.getRoot(), XMSSUtil.toBytesBigEndian(j, this.params.getDigestSize())), bArr), (OTSHashAddress) new OTSHashAddress.Builder().withOTSAddress(index).build())).withAuthPath(this.privateKey.getBDSState().getAuthenticationPath()).build();
            this.hasGenerated = true;
            if (this.nextKeyGenerator != null) {
                this.privateKey = this.nextKeyGenerator.getNextKey();
                this.nextKeyGenerator = this.privateKey;
            } else {
                this.privateKey = null;
            }
            return xMSSSignature.toByteArray();
        }
    }

    @Override // org.spongycastle.pqc.crypto.StateAwareMessageSigner
    public AsymmetricKeyParameter getUpdatedPrivateKey() {
        if (this.hasGenerated) {
            XMSSPrivateKeyParameters xMSSPrivateKeyParameters = this.privateKey;
            this.privateKey = null;
            this.nextKeyGenerator = null;
            return xMSSPrivateKeyParameters;
        }
        XMSSPrivateKeyParameters nextKey = this.nextKeyGenerator.getNextKey();
        this.nextKeyGenerator = null;
        return nextKey;
    }

    @Override // org.spongycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        if (z) {
            this.initSign = true;
            this.hasGenerated = false;
            this.privateKey = (XMSSPrivateKeyParameters) cipherParameters;
            this.nextKeyGenerator = this.privateKey;
            this.params = this.privateKey.getParameters();
            this.khf = this.params.getWOTSPlus().getKhf();
            return;
        }
        this.initSign = false;
        this.publicKey = (XMSSPublicKeyParameters) cipherParameters;
        this.params = this.publicKey.getParameters();
        this.khf = this.params.getWOTSPlus().getKhf();
    }

    @Override // org.spongycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        XMSSSignature build = new XMSSSignature.Builder(this.params).withSignature(bArr2).build();
        int index = build.getIndex();
        this.params.getWOTSPlus().importKeys(new byte[this.params.getDigestSize()], this.publicKey.getPublicSeed());
        long j = index;
        byte[] HMsg = this.khf.HMsg(Arrays.concatenate(build.getRandom(), this.publicKey.getRoot(), XMSSUtil.toBytesBigEndian(j, this.params.getDigestSize())), bArr);
        int height = this.params.getHeight();
        return Arrays.constantTimeAreEqual(XMSSVerifierUtil.getRootNodeFromSignature(this.params.getWOTSPlus(), height, HMsg, build, (OTSHashAddress) new OTSHashAddress.Builder().withOTSAddress(index).build(), XMSSUtil.getLeafIndex(j, height)).getValue(), this.publicKey.getRoot());
    }
}
