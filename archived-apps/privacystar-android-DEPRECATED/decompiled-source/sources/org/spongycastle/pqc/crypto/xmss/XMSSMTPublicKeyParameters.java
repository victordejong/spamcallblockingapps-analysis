package org.spongycastle.pqc.crypto.xmss;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters.class */
public final class XMSSMTPublicKeyParameters extends AsymmetricKeyParameter implements XMSSStoreableObjectInterface {
    private final XMSSMTParameters params;
    private final byte[] publicSeed;
    private final byte[] root;

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/XMSSMTPublicKeyParameters$Builder.class */
    public static class Builder {
        private final XMSSMTParameters params;
        private byte[] root = null;
        private byte[] publicSeed = null;
        private byte[] publicKey = null;

        public Builder(XMSSMTParameters xMSSMTParameters) {
            this.params = xMSSMTParameters;
        }

        public XMSSMTPublicKeyParameters build() {
            return new XMSSMTPublicKeyParameters(this);
        }

        public Builder withPublicKey(byte[] bArr) {
            this.publicKey = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withPublicSeed(byte[] bArr) {
            this.publicSeed = XMSSUtil.cloneArray(bArr);
            return this;
        }

        public Builder withRoot(byte[] bArr) {
            this.root = XMSSUtil.cloneArray(bArr);
            return this;
        }
    }

    private XMSSMTPublicKeyParameters(Builder builder) {
        super(false);
        this.params = builder.params;
        if (this.params == null) {
            throw new NullPointerException("params == null");
        }
        int digestSize = this.params.getDigestSize();
        byte[] bArr = builder.publicKey;
        if (bArr == null) {
            byte[] bArr2 = builder.root;
            if (bArr2 == null) {
                this.root = new byte[digestSize];
            } else if (bArr2.length != digestSize) {
                throw new IllegalArgumentException("length of root must be equal to length of digest");
            } else {
                this.root = bArr2;
            }
            byte[] bArr3 = builder.publicSeed;
            if (bArr3 == null) {
                this.publicSeed = new byte[digestSize];
            } else if (bArr3.length != digestSize) {
                throw new IllegalArgumentException("length of publicSeed must be equal to length of digest");
            } else {
                this.publicSeed = bArr3;
            }
        } else if (bArr.length != digestSize + digestSize) {
            throw new IllegalArgumentException("public key has wrong size");
        } else {
            this.root = XMSSUtil.extractBytesAtOffset(bArr, 0, digestSize);
            this.publicSeed = XMSSUtil.extractBytesAtOffset(bArr, digestSize + 0, digestSize);
        }
    }

    public XMSSMTParameters getParameters() {
        return this.params;
    }

    public byte[] getPublicSeed() {
        return XMSSUtil.cloneArray(this.publicSeed);
    }

    public byte[] getRoot() {
        return XMSSUtil.cloneArray(this.root);
    }

    @Override // org.spongycastle.pqc.crypto.xmss.XMSSStoreableObjectInterface
    public byte[] toByteArray() {
        int digestSize = this.params.getDigestSize();
        byte[] bArr = new byte[digestSize + digestSize];
        XMSSUtil.copyBytesAtOffset(bArr, this.root, 0);
        XMSSUtil.copyBytesAtOffset(bArr, this.publicSeed, digestSize + 0);
        return bArr;
    }
}
