package org.spongycastle.crypto.digests;

import org.spongycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.spongycastle.util.Memoable;
import org.spongycastle.util.Pack;
/* loaded from: classes-dex2jar.jar:org/spongycastle/crypto/digests/SHA512Digest.class */
public class SHA512Digest extends LongDigest {
    private static final int DIGEST_LENGTH = 64;

    public SHA512Digest() {
    }

    public SHA512Digest(SHA512Digest sHA512Digest) {
        super(sHA512Digest);
    }

    public SHA512Digest(byte[] bArr) {
        restoreState(bArr);
    }

    @Override // org.spongycastle.util.Memoable
    public Memoable copy() {
        return new SHA512Digest(this);
    }

    @Override // org.spongycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.longToBigEndian(this.f1071H1, bArr, i);
        Pack.longToBigEndian(this.f1072H2, bArr, i + 8);
        Pack.longToBigEndian(this.f1073H3, bArr, i + 16);
        Pack.longToBigEndian(this.f1074H4, bArr, i + 24);
        Pack.longToBigEndian(this.f1075H5, bArr, i + 32);
        Pack.longToBigEndian(this.f1076H6, bArr, i + 40);
        Pack.longToBigEndian(this.f1077H7, bArr, i + 48);
        Pack.longToBigEndian(this.f1078H8, bArr, i + 56);
        reset();
        return 64;
    }

    @Override // org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        return McElieceCCA2KeyGenParameterSpec.SHA512;
    }

    @Override // org.spongycastle.crypto.Digest
    public int getDigestSize() {
        return 64;
    }

    @Override // org.spongycastle.crypto.digests.EncodableDigest
    public byte[] getEncodedState() {
        byte[] bArr = new byte[getEncodedStateSize()];
        super.populateState(bArr);
        return bArr;
    }

    @Override // org.spongycastle.crypto.digests.LongDigest, org.spongycastle.crypto.Digest
    public void reset() {
        super.reset();
        this.f1071H1 = 7640891576956012808L;
        this.f1072H2 = -4942790177534073029L;
        this.f1073H3 = 4354685564936845355L;
        this.f1074H4 = -6534734903238641935L;
        this.f1075H5 = 5840696475078001361L;
        this.f1076H6 = -7276294671716946913L;
        this.f1077H7 = 2270897969802886507L;
        this.f1078H8 = 6620516959819538809L;
    }

    @Override // org.spongycastle.util.Memoable
    public void reset(Memoable memoable) {
        copyIn((SHA512Digest) memoable);
    }
}
