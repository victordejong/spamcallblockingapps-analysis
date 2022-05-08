package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.pqc.crypto.xmss.OTSHashAddress;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/WOTSPlus.class */
final class WOTSPlus {
    private final KeyedHashFunctions khf;
    private final WOTSPlusParameters params;
    private byte[] publicSeed;
    private byte[] secretKeySeed;

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlus(WOTSPlusParameters wOTSPlusParameters) {
        if (wOTSPlusParameters == null) {
            throw new NullPointerException("params == null");
        }
        this.params = wOTSPlusParameters;
        int digestSize = wOTSPlusParameters.getDigestSize();
        this.khf = new KeyedHashFunctions(wOTSPlusParameters.getDigest(), digestSize);
        this.secretKeySeed = new byte[digestSize];
        this.publicSeed = new byte[digestSize];
    }

    private byte[] chain(byte[] bArr, int i, int i2, OTSHashAddress oTSHashAddress) {
        int digestSize = this.params.getDigestSize();
        if (bArr == null) {
            throw new NullPointerException("startHash == null");
        } else if (bArr.length != digestSize) {
            throw new IllegalArgumentException("startHash needs to be " + digestSize + "bytes");
        } else if (oTSHashAddress == null) {
            throw new NullPointerException("otsHashAddress == null");
        } else if (oTSHashAddress.toByteArray() == null) {
            throw new NullPointerException("otsHashAddress byte array == null");
        } else {
            int i3 = i + i2;
            if (i3 > this.params.getWinternitzParameter() - 1) {
                throw new IllegalArgumentException("max chain length must not be greater than w");
            } else if (i2 == 0) {
                return bArr;
            } else {
                byte[] chain = chain(bArr, i, i2 - 1, oTSHashAddress);
                OTSHashAddress oTSHashAddress2 = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).withChainAddress(oTSHashAddress.getChainAddress()).withHashAddress(i3 - 1).withKeyAndMask(0).build();
                byte[] PRF = this.khf.PRF(this.publicSeed, oTSHashAddress2.toByteArray());
                byte[] PRF2 = this.khf.PRF(this.publicSeed, ((OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress2.getLayerAddress()).withTreeAddress(oTSHashAddress2.getTreeAddress()).withOTSAddress(oTSHashAddress2.getOTSAddress()).withChainAddress(oTSHashAddress2.getChainAddress()).withHashAddress(oTSHashAddress2.getHashAddress()).withKeyAndMask(1).build()).toByteArray());
                byte[] bArr2 = new byte[digestSize];
                for (int i4 = 0; i4 < digestSize; i4++) {
                    bArr2[i4] = (byte) (chain[i4] ^ PRF2[i4]);
                }
                return this.khf.m96F(PRF, bArr2);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
        r11 = r11 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.List<java.lang.Integer> convertToBaseW(byte[] r6, int r7, int r8) {
        /*
            r5 = this;
            r0 = r6
            if (r0 != 0) goto L_0x000e
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "msg == null"
            r1.<init>(r2)
            throw r0
        L_0x000e:
            r0 = r7
            r1 = 4
            if (r0 == r1) goto L_0x0023
            r0 = r7
            r1 = 16
            if (r0 == r1) goto L_0x0023
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "w needs to be 4 or 16"
            r1.<init>(r2)
            throw r0
        L_0x0023:
            r0 = r7
            int r0 = org.spongycastle.pqc.crypto.xmss.XMSSUtil.log2(r0)
            r9 = r0
            r0 = r8
            r1 = r6
            int r1 = r1.length
            r2 = 8
            int r1 = r1 * r2
            r2 = r9
            int r1 = r1 / r2
            if (r0 <= r1) goto L_0x003f
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "outLength too big"
            r1.<init>(r2)
            throw r0
        L_0x003f:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x004b:
            r0 = r11
            r1 = r6
            int r1 = r1.length
            if (r0 >= r1) goto L_0x008e
            r0 = 8
            r1 = r9
            int r0 = r0 - r1
            r12 = r0
        L_0x0059:
            r0 = r12
            if (r0 < 0) goto L_0x0088
            r0 = r10
            r1 = r6
            r2 = r11
            r1 = r1[r2]
            r2 = r12
            int r1 = r1 >> r2
            r2 = r7
            r3 = 1
            int r2 = r2 - r3
            r1 = r1 & r2
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            boolean r0 = r0.add(r1)
            r0 = r10
            int r0 = r0.size()
            r1 = r8
            if (r0 != r1) goto L_0x007e
            r0 = r10
            return r0
        L_0x007e:
            r0 = r12
            r1 = r9
            int r0 = r0 - r1
            r12 = r0
            goto L_0x0059
        L_0x0088:
            int r11 = r11 + 1
            goto L_0x004b
        L_0x008e:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.xmss.WOTSPlus.convertToBaseW(byte[], int, int):java.util.List");
    }

    private byte[] expandSecretKeySeed(int i) {
        if (i >= 0 && i < this.params.getLen()) {
            return this.khf.PRF(this.secretKeySeed, XMSSUtil.toBytesBigEndian(i, 32));
        }
        throw new IllegalArgumentException("index out of bounds");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public KeyedHashFunctions getKhf() {
        return this.khf;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WOTSPlusParameters getParams() {
        return this.params;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected org.spongycastle.pqc.crypto.xmss.WOTSPlusPrivateKeyParameters getPrivateKey() {
        /*
            r5 = this;
            r0 = r5
            org.spongycastle.pqc.crypto.xmss.WOTSPlusParameters r0 = r0.params
            int r0 = r0.getLen()
            byte[] r0 = new byte[r0]
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x000d:
            r0 = r7
            r1 = r6
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0021
            r0 = r6
            r1 = r7
            r2 = r5
            r3 = r7
            byte[] r2 = r2.expandSecretKeySeed(r3)
            r0[r1] = r2
            int r7 = r7 + 1
            goto L_0x000d
        L_0x0021:
            org.spongycastle.pqc.crypto.xmss.WOTSPlusPrivateKeyParameters r0 = new org.spongycastle.pqc.crypto.xmss.WOTSPlusPrivateKeyParameters
            r1 = r0
            r2 = r5
            org.spongycastle.pqc.crypto.xmss.WOTSPlusParameters r2 = r2.params
            r3 = r6
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.xmss.WOTSPlus.getPrivateKey():org.spongycastle.pqc.crypto.xmss.WOTSPlusPrivateKeyParameters");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v4, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.pqc.crypto.xmss.WOTSPlusPublicKeyParameters getPublicKey(org.spongycastle.pqc.crypto.xmss.OTSHashAddress r9) {
        /*
            r8 = this;
            r0 = r9
            if (r0 != 0) goto L_0x000e
            java.lang.NullPointerException r0 = new java.lang.NullPointerException
            r1 = r0
            java.lang.String r2 = "otsHashAddress == null"
            r1.<init>(r2)
            throw r0
        L_0x000e:
            r0 = r8
            org.spongycastle.pqc.crypto.xmss.WOTSPlusParameters r0 = r0.params
            int r0 = r0.getLen()
            byte[] r0 = new byte[r0]
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x001b:
            r0 = r11
            r1 = r8
            org.spongycastle.pqc.crypto.xmss.WOTSPlusParameters r1 = r1.params
            int r1 = r1.getLen()
            if (r0 >= r1) goto L_0x0081
            org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder r0 = new org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder
            r1 = r0
            r1.<init>()
            r1 = r9
            int r1 = r1.getLayerAddress()
            org.spongycastle.pqc.crypto.xmss.XMSSAddress$Builder r0 = r0.withLayerAddress(r1)
            org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder r0 = (org.spongycastle.pqc.crypto.xmss.OTSHashAddress.Builder) r0
            r1 = r9
            long r1 = r1.getTreeAddress()
            org.spongycastle.pqc.crypto.xmss.XMSSAddress$Builder r0 = r0.withTreeAddress(r1)
            org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder r0 = (org.spongycastle.pqc.crypto.xmss.OTSHashAddress.Builder) r0
            r1 = r9
            int r1 = r1.getOTSAddress()
            org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder r0 = r0.withOTSAddress(r1)
            r1 = r11
            org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder r0 = r0.withChainAddress(r1)
            r1 = r9
            int r1 = r1.getHashAddress()
            org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder r0 = r0.withHashAddress(r1)
            r1 = r9
            int r1 = r1.getKeyAndMask()
            org.spongycastle.pqc.crypto.xmss.XMSSAddress$Builder r0 = r0.withKeyAndMask(r1)
            org.spongycastle.pqc.crypto.xmss.OTSHashAddress$Builder r0 = (org.spongycastle.pqc.crypto.xmss.OTSHashAddress.Builder) r0
            org.spongycastle.pqc.crypto.xmss.XMSSAddress r0 = r0.build()
            org.spongycastle.pqc.crypto.xmss.OTSHashAddress r0 = (org.spongycastle.pqc.crypto.xmss.OTSHashAddress) r0
            r9 = r0
            r0 = r10
            r1 = r11
            r2 = r8
            r3 = r8
            r4 = r11
            byte[] r3 = r3.expandSecretKeySeed(r4)
            r4 = 0
            r5 = r8
            org.spongycastle.pqc.crypto.xmss.WOTSPlusParameters r5 = r5.params
            int r5 = r5.getWinternitzParameter()
            r6 = 1
            int r5 = r5 - r6
            r6 = r9
            byte[] r2 = r2.chain(r3, r4, r5, r6)
            r0[r1] = r2
            int r11 = r11 + 1
            goto L_0x001b
        L_0x0081:
            org.spongycastle.pqc.crypto.xmss.WOTSPlusPublicKeyParameters r0 = new org.spongycastle.pqc.crypto.xmss.WOTSPlusPublicKeyParameters
            r1 = r0
            r2 = r8
            org.spongycastle.pqc.crypto.xmss.WOTSPlusParameters r2 = r2.params
            r3 = r10
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.xmss.WOTSPlus.getPublicKey(org.spongycastle.pqc.crypto.xmss.OTSHashAddress):org.spongycastle.pqc.crypto.xmss.WOTSPlusPublicKeyParameters");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v31, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.pqc.crypto.xmss.WOTSPlusPublicKeyParameters getPublicKeyFromSignature(byte[] r10, org.spongycastle.pqc.crypto.xmss.WOTSPlusSignature r11, org.spongycastle.pqc.crypto.xmss.OTSHashAddress r12) {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.xmss.WOTSPlus.getPublicKeyFromSignature(byte[], org.spongycastle.pqc.crypto.xmss.WOTSPlusSignature, org.spongycastle.pqc.crypto.xmss.OTSHashAddress):org.spongycastle.pqc.crypto.xmss.WOTSPlusPublicKeyParameters");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getPublicSeed() {
        return XMSSUtil.cloneArray(this.publicSeed);
    }

    protected byte[] getSecretKeySeed() {
        return XMSSUtil.cloneArray(getSecretKeySeed());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getWOTSPlusSecretKey(byte[] bArr, OTSHashAddress oTSHashAddress) {
        return this.khf.PRF(bArr, ((OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(oTSHashAddress.getOTSAddress()).build()).toByteArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void importKeys(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            throw new NullPointerException("secretKeySeed == null");
        } else if (bArr.length != this.params.getDigestSize()) {
            throw new IllegalArgumentException("size of secretKeySeed needs to be equal to size of digest");
        } else if (bArr2 == null) {
            throw new NullPointerException("publicSeed == null");
        } else if (bArr2.length != this.params.getDigestSize()) {
            throw new IllegalArgumentException("size of publicSeed needs to be equal to size of digest");
        } else {
            this.secretKeySeed = bArr;
            this.publicSeed = bArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Type inference failed for: r0v29, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.pqc.crypto.xmss.WOTSPlusSignature sign(byte[] r9, org.spongycastle.pqc.crypto.xmss.OTSHashAddress r10) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.xmss.WOTSPlus.sign(byte[], org.spongycastle.pqc.crypto.xmss.OTSHashAddress):org.spongycastle.pqc.crypto.xmss.WOTSPlusSignature");
    }

    protected boolean verifySignature(byte[] bArr, WOTSPlusSignature wOTSPlusSignature, OTSHashAddress oTSHashAddress) {
        if (bArr == null) {
            throw new NullPointerException("messageDigest == null");
        } else if (bArr.length != this.params.getDigestSize()) {
            throw new IllegalArgumentException("size of messageDigest needs to be equal to size of digest");
        } else if (wOTSPlusSignature == null) {
            throw new NullPointerException("signature == null");
        } else if (oTSHashAddress != null) {
            return XMSSUtil.areEqual(getPublicKeyFromSignature(bArr, wOTSPlusSignature, oTSHashAddress).toByteArray(), getPublicKey(oTSHashAddress).toByteArray());
        } else {
            throw new NullPointerException("otsHashAddress == null");
        }
    }
}
