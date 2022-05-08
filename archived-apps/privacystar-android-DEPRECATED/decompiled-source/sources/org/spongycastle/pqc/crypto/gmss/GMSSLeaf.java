package org.spongycastle.pqc.crypto.gmss;

import org.spongycastle.crypto.Digest;
import org.spongycastle.pqc.crypto.gmss.util.GMSSRandom;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/gmss/GMSSLeaf.class */
public class GMSSLeaf {
    private byte[] concHashs;
    private GMSSRandom gmssRandom;

    /* renamed from: i */
    private int f1673i;

    /* renamed from: j */
    private int f1674j;
    private int keysize;
    private byte[] leaf;
    private int mdsize;
    private Digest messDigestOTS;
    byte[] privateKeyOTS;
    private byte[] seed;
    private int steps;
    private int two_power_w;

    /* renamed from: w */
    private int f1675w;

    /* JADX INFO: Access modifiers changed from: package-private */
    public GMSSLeaf(Digest digest, int i, int i2) {
        int ceil;
        int i3;
        this.f1675w = i;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(this.messDigestOTS);
        this.mdsize = this.messDigestOTS.getDigestSize();
        double d = i;
        this.keysize = ((int) Math.ceil((this.mdsize << 3) / d)) + ((int) Math.ceil(getLog((ceil << i) + 1) / d));
        this.two_power_w = 1 << i;
        this.steps = (int) Math.ceil(((((i3 - 1) * this.keysize) + 1) + this.keysize) / i2);
        this.seed = new byte[this.mdsize];
        this.leaf = new byte[this.mdsize];
        this.privateKeyOTS = new byte[this.mdsize];
        this.concHashs = new byte[this.mdsize * this.keysize];
    }

    public GMSSLeaf(Digest digest, int i, int i2, byte[] bArr) {
        int ceil;
        int i3;
        this.f1675w = i;
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(this.messDigestOTS);
        this.mdsize = this.messDigestOTS.getDigestSize();
        double d = i;
        this.keysize = ((int) Math.ceil((this.mdsize << 3) / d)) + ((int) Math.ceil(getLog((ceil << i) + 1) / d));
        this.two_power_w = 1 << i;
        this.steps = (int) Math.ceil(((((i3 - 1) * this.keysize) + 1) + this.keysize) / i2);
        this.seed = new byte[this.mdsize];
        this.leaf = new byte[this.mdsize];
        this.privateKeyOTS = new byte[this.mdsize];
        this.concHashs = new byte[this.mdsize * this.keysize];
        initLeafCalc(bArr);
    }

    public GMSSLeaf(Digest digest, byte[][] bArr, int[] iArr) {
        this.f1673i = iArr[0];
        this.f1674j = iArr[1];
        this.steps = iArr[2];
        this.f1675w = iArr[3];
        this.messDigestOTS = digest;
        this.gmssRandom = new GMSSRandom(this.messDigestOTS);
        this.mdsize = this.messDigestOTS.getDigestSize();
        int ceil = (int) Math.ceil((this.mdsize << 3) / this.f1675w);
        this.keysize = ceil + ((int) Math.ceil(getLog((ceil << this.f1675w) + 1) / this.f1675w));
        this.two_power_w = 1 << this.f1675w;
        this.privateKeyOTS = bArr[0];
        this.seed = bArr[1];
        this.concHashs = bArr[2];
        this.leaf = bArr[3];
    }

    private GMSSLeaf(GMSSLeaf gMSSLeaf) {
        this.messDigestOTS = gMSSLeaf.messDigestOTS;
        this.mdsize = gMSSLeaf.mdsize;
        this.keysize = gMSSLeaf.keysize;
        this.gmssRandom = gMSSLeaf.gmssRandom;
        this.leaf = Arrays.clone(gMSSLeaf.leaf);
        this.concHashs = Arrays.clone(gMSSLeaf.concHashs);
        this.f1673i = gMSSLeaf.f1673i;
        this.f1674j = gMSSLeaf.f1674j;
        this.two_power_w = gMSSLeaf.two_power_w;
        this.f1675w = gMSSLeaf.f1675w;
        this.steps = gMSSLeaf.steps;
        this.seed = Arrays.clone(gMSSLeaf.seed);
        this.privateKeyOTS = Arrays.clone(gMSSLeaf.privateKeyOTS);
    }

    private int getLog(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    private void updateLeafCalc() {
        byte[] bArr = new byte[this.messDigestOTS.getDigestSize()];
        for (int i = 0; i < this.steps + 10000; i++) {
            if (this.f1673i == this.keysize && this.f1674j == this.two_power_w - 1) {
                this.messDigestOTS.update(this.concHashs, 0, this.concHashs.length);
                this.leaf = new byte[this.messDigestOTS.getDigestSize()];
                this.messDigestOTS.doFinal(this.leaf, 0);
                return;
            }
            if (this.f1673i == 0 || this.f1674j == this.two_power_w - 1) {
                this.f1673i++;
                this.f1674j = 0;
                this.privateKeyOTS = this.gmssRandom.nextSeed(this.seed);
            } else {
                this.messDigestOTS.update(this.privateKeyOTS, 0, this.privateKeyOTS.length);
                this.privateKeyOTS = bArr;
                this.messDigestOTS.doFinal(this.privateKeyOTS, 0);
                this.f1674j++;
                if (this.f1674j == this.two_power_w - 1) {
                    System.arraycopy(this.privateKeyOTS, 0, this.concHashs, this.mdsize * (this.f1673i - 1), this.mdsize);
                }
            }
        }
        throw new IllegalStateException("unable to updateLeaf in steps: " + this.steps + " " + this.f1673i + " " + this.f1674j);
    }

    public byte[] getLeaf() {
        return Arrays.clone(this.leaf);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[][] getStatByte() {
        /*
            r5 = this;
            r0 = 4
            byte[] r0 = new byte[r0]
            r6 = r0
            r0 = r6
            r1 = 0
            r2 = r5
            int r2 = r2.mdsize
            byte[] r2 = new byte[r2]
            r0[r1] = r2
            r0 = r6
            r1 = 1
            r2 = r5
            int r2 = r2.mdsize
            byte[] r2 = new byte[r2]
            r0[r1] = r2
            r0 = r6
            r1 = 2
            r2 = r5
            int r2 = r2.mdsize
            r3 = r5
            int r3 = r3.keysize
            int r2 = r2 * r3
            byte[] r2 = new byte[r2]
            r0[r1] = r2
            r0 = r6
            r1 = 3
            r2 = r5
            int r2 = r2.mdsize
            byte[] r2 = new byte[r2]
            r0[r1] = r2
            r0 = r6
            r1 = 0
            r2 = r5
            byte[] r2 = r2.privateKeyOTS
            r0[r1] = r2
            r0 = r6
            r1 = 1
            r2 = r5
            byte[] r2 = r2.seed
            r0[r1] = r2
            r0 = r6
            r1 = 2
            r2 = r5
            byte[] r2 = r2.concHashs
            r0[r1] = r2
            r0 = r6
            r1 = 3
            r2 = r5
            byte[] r2 = r2.leaf
            r0[r1] = r2
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.crypto.gmss.GMSSLeaf.getStatByte():byte[][]");
    }

    public int[] getStatInt() {
        return new int[]{this.f1673i, this.f1674j, this.steps, this.f1675w};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void initLeafCalc(byte[] bArr) {
        this.f1673i = 0;
        this.f1674j = 0;
        byte[] bArr2 = new byte[this.mdsize];
        System.arraycopy(bArr, 0, bArr2, 0, this.seed.length);
        this.seed = this.gmssRandom.nextSeed(bArr2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public GMSSLeaf nextLeaf() {
        GMSSLeaf gMSSLeaf = new GMSSLeaf(this);
        gMSSLeaf.updateLeafCalc();
        return gMSSLeaf;
    }

    public String toString() {
        String str = "";
        for (int i = 0; i < 4; i++) {
            str = str + getStatInt()[i] + " ";
        }
        String str2 = str + " " + this.mdsize + " " + this.keysize + " " + this.two_power_w + " ";
        byte[][] statByte = getStatByte();
        for (int i2 = 0; i2 < 4; i2++) {
            str2 = statByte[i2] != null ? str2 + new String(Hex.encode(statByte[i2])) + " " : str2 + "null ";
        }
        return str2;
    }
}
