package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.pqc.crypto.StateAwareMessageSigner;
import org.spongycastle.pqc.crypto.xmss.OTSHashAddress;
import org.spongycastle.pqc.crypto.xmss.XMSSMTSignature;
import org.spongycastle.pqc.crypto.xmss.XMSSReducedSignature;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSMTSigner.class */
public class XMSSMTSigner implements StateAwareMessageSigner {
    private boolean hasGenerated;
    private boolean initSign;
    private XMSSMTPrivateKeyParameters nextKeyGenerator;
    private XMSSMTParameters params;
    private XMSSMTPrivateKeyParameters privateKey;
    private XMSSMTPublicKeyParameters publicKey;
    private WOTSPlus wotsPlus;
    private XMSSParameters xmssParams;

    private WOTSPlusSignature wotsSign(byte[] bArr, OTSHashAddress oTSHashAddress) {
        if (bArr.length != this.params.getDigestSize()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        } else if (oTSHashAddress == null) {
            throw new NullPointerException("otsHashAddress == null");
        } else {
            this.wotsPlus.importKeys(this.wotsPlus.getWOTSPlusSecretKey(this.privateKey.getSecretKeySeed(), oTSHashAddress), this.privateKey.getPublicSeed());
            return this.wotsPlus.sign(bArr, oTSHashAddress);
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
        } else if (this.privateKey.getBDSState().isEmpty()) {
            throw new IllegalStateException("not initialized");
        } else {
            BDSStateMap bDSState = this.privateKey.getBDSState();
            long index = this.privateKey.getIndex();
            int height = this.params.getHeight();
            int height2 = this.xmssParams.getHeight();
            if (!XMSSUtil.isIndexValid(height, index)) {
                throw new IllegalStateException("index out of bounds");
            }
            byte[] PRF = this.wotsPlus.getKhf().PRF(this.privateKey.getSecretKeyPRF(), XMSSUtil.toBytesBigEndian(index, 32));
            byte[] HMsg = this.wotsPlus.getKhf().HMsg(Arrays.concatenate(PRF, this.privateKey.getRoot(), XMSSUtil.toBytesBigEndian(index, this.params.getDigestSize())), bArr);
            XMSSMTSignature build = new XMSSMTSignature.Builder(this.params).withIndex(index).withRandom(PRF).build();
            long treeIndex = XMSSUtil.getTreeIndex(index, height2);
            int leafIndex = XMSSUtil.getLeafIndex(index, height2);
            this.wotsPlus.importKeys(new byte[this.params.getDigestSize()], this.privateKey.getPublicSeed());
            OTSHashAddress oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withTreeAddress(treeIndex).withOTSAddress(leafIndex).build();
            if (bDSState.get(0) == null || leafIndex == 0) {
                bDSState.put(0, new BDS(this.xmssParams, this.privateKey.getPublicSeed(), this.privateKey.getSecretKeySeed(), oTSHashAddress));
            }
            build.getReducedSignatures().add(new XMSSReducedSignature.Builder(this.xmssParams).withWOTSPlusSignature(wotsSign(HMsg, oTSHashAddress)).withAuthPath(bDSState.get(0).getAuthenticationPath()).build());
            for (int i = 1; i < this.params.getLayers(); i++) {
                XMSSNode root = bDSState.get(i - 1).getRoot();
                int leafIndex2 = XMSSUtil.getLeafIndex(treeIndex, height2);
                treeIndex = XMSSUtil.getTreeIndex(treeIndex, height2);
                OTSHashAddress oTSHashAddress2 = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(i).withTreeAddress(treeIndex).withOTSAddress(leafIndex2).build();
                WOTSPlusSignature wotsSign = wotsSign(root.getValue(), oTSHashAddress2);
                if (bDSState.get(i) == null || XMSSUtil.isNewBDSInitNeeded(index, height2, i)) {
                    bDSState.put(i, new BDS(this.xmssParams, this.privateKey.getPublicSeed(), this.privateKey.getSecretKeySeed(), oTSHashAddress2));
                }
                build.getReducedSignatures().add(new XMSSReducedSignature.Builder(this.xmssParams).withWOTSPlusSignature(wotsSign).withAuthPath(bDSState.get(i).getAuthenticationPath()).build());
            }
            this.hasGenerated = true;
            if (this.nextKeyGenerator != null) {
                this.privateKey = this.nextKeyGenerator.getNextKey();
                this.nextKeyGenerator = this.privateKey;
            } else {
                this.privateKey = null;
            }
            return build.toByteArray();
        }
    }

    @Override // org.spongycastle.pqc.crypto.StateAwareMessageSigner
    public AsymmetricKeyParameter getUpdatedPrivateKey() {
        if (this.hasGenerated) {
            XMSSMTPrivateKeyParameters xMSSMTPrivateKeyParameters = this.privateKey;
            this.privateKey = null;
            this.nextKeyGenerator = null;
            return xMSSMTPrivateKeyParameters;
        }
        XMSSMTPrivateKeyParameters nextKey = this.nextKeyGenerator.getNextKey();
        this.nextKeyGenerator = null;
        return nextKey;
    }

    @Override // org.spongycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        if (z) {
            this.initSign = true;
            this.hasGenerated = false;
            this.privateKey = (XMSSMTPrivateKeyParameters) cipherParameters;
            this.nextKeyGenerator = this.privateKey;
            this.params = this.privateKey.getParameters();
            this.xmssParams = this.params.getXMSSParameters();
        } else {
            this.initSign = false;
            this.publicKey = (XMSSMTPublicKeyParameters) cipherParameters;
            this.params = this.publicKey.getParameters();
            this.xmssParams = this.params.getXMSSParameters();
        }
        this.wotsPlus = new WOTSPlus(new WOTSPlusParameters(this.params.getDigest()));
    }

    @Override // org.spongycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("message == null");
        } else if (bArr2 == null) {
            throw new NullPointerException("signature == null");
        } else if (this.publicKey == null) {
            throw new NullPointerException("publicKey == null");
        } else {
            XMSSMTSignature build = new XMSSMTSignature.Builder(this.params).withSignature(bArr2).build();
            byte[] HMsg = this.wotsPlus.getKhf().HMsg(Arrays.concatenate(build.getRandom(), this.publicKey.getRoot(), XMSSUtil.toBytesBigEndian(build.getIndex(), this.params.getDigestSize())), bArr);
            long index = build.getIndex();
            int height = this.xmssParams.getHeight();
            long treeIndex = XMSSUtil.getTreeIndex(index, height);
            int leafIndex = XMSSUtil.getLeafIndex(index, height);
            this.wotsPlus.importKeys(new byte[this.params.getDigestSize()], this.publicKey.getPublicSeed());
            OTSHashAddress oTSHashAddress = (OTSHashAddress) new OTSHashAddress.Builder().withTreeAddress(treeIndex).withOTSAddress(leafIndex).build();
            XMSSNode rootNodeFromSignature = XMSSVerifierUtil.getRootNodeFromSignature(this.wotsPlus, height, HMsg, build.getReducedSignatures().get(0), oTSHashAddress, leafIndex);
            for (int i = 1; i < this.params.getLayers(); i++) {
                XMSSReducedSignature xMSSReducedSignature = build.getReducedSignatures().get(i);
                int leafIndex2 = XMSSUtil.getLeafIndex(treeIndex, height);
                treeIndex = XMSSUtil.getTreeIndex(treeIndex, height);
                rootNodeFromSignature = XMSSVerifierUtil.getRootNodeFromSignature(this.wotsPlus, height, rootNodeFromSignature.getValue(), xMSSReducedSignature, (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(i).withTreeAddress(treeIndex).withOTSAddress(leafIndex2).build(), leafIndex2);
            }
            return Arrays.constantTimeAreEqual(rootNodeFromSignature.getValue(), this.publicKey.getRoot());
        }
    }
}
