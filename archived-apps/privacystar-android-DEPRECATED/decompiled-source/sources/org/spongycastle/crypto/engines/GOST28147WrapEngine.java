package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.Wrapper;
import org.spongycastle.crypto.macs.GOST28147Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.ParametersWithSBox;
import org.spongycastle.crypto.params.ParametersWithUKM;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/GOST28147WrapEngine.class */
public class GOST28147WrapEngine implements Wrapper {
    private GOST28147Engine cipher = new GOST28147Engine();
    private GOST28147Mac mac = new GOST28147Mac();

    @Override // org.spongycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return "GOST28147Wrap";
    }

    @Override // org.spongycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        CipherParameters cipherParameters2 = cipherParameters;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters2 = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        ParametersWithUKM parametersWithUKM = (ParametersWithUKM) cipherParameters2;
        this.cipher.init(z, parametersWithUKM.getParameters());
        this.mac.init(new ParametersWithIV(parametersWithUKM.getParameters() instanceof ParametersWithSBox ? (KeyParameter) ((ParametersWithSBox) parametersWithUKM.getParameters()).getParameters() : (KeyParameter) parametersWithUKM.getParameters(), parametersWithUKM.getUKM()));
    }

    @Override // org.spongycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        byte[] bArr2 = new byte[i2 - this.mac.getMacSize()];
        this.cipher.processBlock(bArr, i, bArr2, 0);
        this.cipher.processBlock(bArr, i + 8, bArr2, 8);
        this.cipher.processBlock(bArr, i + 16, bArr2, 16);
        this.cipher.processBlock(bArr, i + 24, bArr2, 24);
        byte[] bArr3 = new byte[this.mac.getMacSize()];
        this.mac.update(bArr2, 0, bArr2.length);
        this.mac.doFinal(bArr3, 0);
        byte[] bArr4 = new byte[this.mac.getMacSize()];
        System.arraycopy(bArr, (i + i2) - 4, bArr4, 0, this.mac.getMacSize());
        if (Arrays.constantTimeAreEqual(bArr3, bArr4)) {
            return bArr2;
        }
        throw new IllegalStateException("mac mismatch");
    }

    @Override // org.spongycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) {
        this.mac.update(bArr, i, i2);
        byte[] bArr2 = new byte[this.mac.getMacSize() + i2];
        this.cipher.processBlock(bArr, i, bArr2, 0);
        this.cipher.processBlock(bArr, i + 8, bArr2, 8);
        this.cipher.processBlock(bArr, i + 16, bArr2, 16);
        this.cipher.processBlock(bArr, i + 24, bArr2, 24);
        this.mac.doFinal(bArr2, i2);
        return bArr2;
    }
}
