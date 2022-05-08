package org.spongycastle.crypto.generators;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.PBEParametersGenerator;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.util.DigestFactory;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/PKCS5S2ParametersGenerator.class */
public class PKCS5S2ParametersGenerator extends PBEParametersGenerator {
    private Mac hMac;
    private byte[] state;

    public PKCS5S2ParametersGenerator() {
        this(DigestFactory.createSHA1());
    }

    public PKCS5S2ParametersGenerator(Digest digest) {
        this.hMac = new HMac(digest);
        this.state = new byte[this.hMac.getMacSize()];
    }

    /* renamed from: F */
    private void m109F(byte[] bArr, int i, byte[] bArr2, byte[] bArr3, int i2) {
        if (i == 0) {
            throw new IllegalArgumentException("iteration count must be at least 1.");
        }
        if (bArr != null) {
            this.hMac.update(bArr, 0, bArr.length);
        }
        this.hMac.update(bArr2, 0, bArr2.length);
        this.hMac.doFinal(this.state, 0);
        System.arraycopy(this.state, 0, bArr3, i2, this.state.length);
        for (int i3 = 1; i3 < i; i3++) {
            this.hMac.update(this.state, 0, this.state.length);
            this.hMac.doFinal(this.state, 0);
            for (int i4 = 0; i4 != this.state.length; i4++) {
                int i5 = i2 + i4;
                bArr3[i5] = (byte) (bArr3[i5] ^ this.state[i4]);
            }
        }
    }

    private byte[] generateDerivedKey(int i) {
        int macSize = this.hMac.getMacSize();
        int i2 = ((i + macSize) - 1) / macSize;
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[i2 * macSize];
        this.hMac.init(new KeyParameter(this.password));
        int i3 = 0;
        for (int i4 = 1; i4 <= i2; i4++) {
            int i5 = 3;
            while (true) {
                byte b = (byte) (bArr[i5] + 1);
                bArr[i5] = b;
                if (b == 0) {
                    i5--;
                }
            }
            m109F(this.salt, this.iterationCount, bArr, bArr2, i3);
            i3 += macSize;
        }
        return bArr2;
    }

    @Override // org.spongycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedMacParameters(int i) {
        return generateDerivedParameters(i);
    }

    @Override // org.spongycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i) {
        int i2 = i / 8;
        return new KeyParameter(Arrays.copyOfRange(generateDerivedKey(i2), 0, i2), 0, i2);
    }

    @Override // org.spongycastle.crypto.PBEParametersGenerator
    public CipherParameters generateDerivedParameters(int i, int i2) {
        int i3 = i / 8;
        int i4 = i2 / 8;
        byte[] generateDerivedKey = generateDerivedKey(i3 + i4);
        return new ParametersWithIV(new KeyParameter(generateDerivedKey, 0, i3), generateDerivedKey, i3, i4);
    }
}
