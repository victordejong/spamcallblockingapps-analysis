package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.modes.GCFBBlockCipher;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.ParametersWithSBox;
import org.spongycastle.crypto.params.ParametersWithUKM;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/CryptoProWrapEngine.class */
public class CryptoProWrapEngine extends GOST28147WrapEngine {
    private static boolean bitSet(byte b, int i) {
        boolean z = true;
        if ((b & (1 << i)) == 0) {
            z = false;
        }
        return z;
    }

    private static byte[] cryptoProDiversify(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        for (int i = 0; i != 8; i++) {
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 != 8; i4++) {
                int littleEndianToInt = Pack.littleEndianToInt(bArr, i4 * 4);
                if (bitSet(bArr2[i], i4)) {
                    i2 += littleEndianToInt;
                } else {
                    i3 += littleEndianToInt;
                }
            }
            byte[] bArr4 = new byte[8];
            Pack.intToLittleEndian(i2, bArr4, 0);
            Pack.intToLittleEndian(i3, bArr4, 4);
            GCFBBlockCipher gCFBBlockCipher = new GCFBBlockCipher(new GOST28147Engine());
            gCFBBlockCipher.init(true, new ParametersWithIV(new ParametersWithSBox(new KeyParameter(bArr), bArr3), bArr4));
            gCFBBlockCipher.processBlock(bArr, 0, bArr, 0);
            gCFBBlockCipher.processBlock(bArr, 8, bArr, 8);
            gCFBBlockCipher.processBlock(bArr, 16, bArr, 16);
            gCFBBlockCipher.processBlock(bArr, 24, bArr, 24);
        }
        return bArr;
    }

    @Override // org.spongycastle.crypto.engines.GOST28147WrapEngine, org.spongycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) {
        KeyParameter keyParameter;
        byte[] bArr;
        CipherParameters cipherParameters2 = cipherParameters;
        if (cipherParameters instanceof ParametersWithRandom) {
            cipherParameters2 = ((ParametersWithRandom) cipherParameters).getParameters();
        }
        ParametersWithUKM parametersWithUKM = (ParametersWithUKM) cipherParameters2;
        if (parametersWithUKM.getParameters() instanceof ParametersWithSBox) {
            keyParameter = (KeyParameter) ((ParametersWithSBox) parametersWithUKM.getParameters()).getParameters();
            bArr = ((ParametersWithSBox) parametersWithUKM.getParameters()).getSBox();
        } else {
            keyParameter = (KeyParameter) parametersWithUKM.getParameters();
            bArr = null;
        }
        KeyParameter keyParameter2 = new KeyParameter(cryptoProDiversify(keyParameter.getKey(), parametersWithUKM.getUKM(), bArr));
        if (bArr != null) {
            super.init(z, new ParametersWithUKM(new ParametersWithSBox(keyParameter2, bArr), parametersWithUKM.getUKM()));
        } else {
            super.init(z, new ParametersWithUKM(keyParameter2, parametersWithUKM.getUKM()));
        }
    }
}
