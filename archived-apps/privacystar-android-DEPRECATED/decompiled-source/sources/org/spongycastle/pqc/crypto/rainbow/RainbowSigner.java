package org.spongycastle.pqc.crypto.rainbow;

import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.pqc.crypto.MessageSigner;
import org.spongycastle.pqc.crypto.rainbow.util.ComputeInField;
import org.spongycastle.pqc.crypto.rainbow.util.GF2Field;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/rainbow/RainbowSigner.class */
public class RainbowSigner implements MessageSigner {
    private static final int MAXITS = 65536;

    /* renamed from: cf */
    private ComputeInField f1778cf = new ComputeInField();
    RainbowKeyParameters key;
    private SecureRandom random;
    int signableDocumentLength;

    /* renamed from: x */
    private short[] f1779x;

    private short[] initSign(Layer[] layerArr, short[] sArr) {
        short[] sArr2 = new short[sArr.length];
        short[] multiplyMatrix = this.f1778cf.multiplyMatrix(((RainbowPrivateKeyParameters) this.key).getInvA1(), this.f1778cf.addVect(((RainbowPrivateKeyParameters) this.key).getB1(), sArr));
        for (int i = 0; i < layerArr[0].getVi(); i++) {
            this.f1779x[i] = (short) this.random.nextInt();
            this.f1779x[i] = (short) (this.f1779x[i] & 255);
        }
        return multiplyMatrix;
    }

    private short[] makeMessageRepresentative(byte[] bArr) {
        short[] sArr = new short[this.signableDocumentLength];
        int i = 0;
        int i2 = 0;
        while (i < bArr.length) {
            sArr[i] = bArr[i2];
            sArr[i] = (short) (sArr[i] & 255);
            i2++;
            int i3 = i + 1;
            i = i3;
            if (i3 >= sArr.length) {
                break;
            }
        }
        return sArr;
    }

    private short[] verifySignatureIntern(short[] sArr) {
        short[][] coeffQuadratic = ((RainbowPublicKeyParameters) this.key).getCoeffQuadratic();
        short[][] coeffSingular = ((RainbowPublicKeyParameters) this.key).getCoeffSingular();
        short[] coeffScalar = ((RainbowPublicKeyParameters) this.key).getCoeffScalar();
        short[] sArr2 = new short[coeffQuadratic.length];
        int length = coeffSingular[0].length;
        for (int i = 0; i < coeffQuadratic.length; i++) {
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                for (int i4 = i3; i4 < length; i4++) {
                    sArr2[i] = GF2Field.addElem(sArr2[i], GF2Field.multElem(coeffQuadratic[i][i2], GF2Field.multElem(sArr[i3], sArr[i4])));
                    i2++;
                }
                sArr2[i] = GF2Field.addElem(sArr2[i], GF2Field.multElem(coeffSingular[i][i3], sArr[i3]));
            }
            sArr2[i] = GF2Field.addElem(sArr2[i], coeffScalar[i]);
        }
        return sArr2;
    }

    @Override // org.spongycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        boolean z;
        int i;
        Layer[] layers = ((RainbowPrivateKeyParameters) this.key).getLayers();
        int length = layers.length;
        this.f1779x = new short[((RainbowPrivateKeyParameters) this.key).getInvA2().length];
        byte[] bArr2 = new byte[layers[length - 1].getViNext()];
        short[] makeMessageRepresentative = makeMessageRepresentative(bArr);
        int i2 = 0;
        do {
            try {
                short[] initSign = initSign(layers, makeMessageRepresentative);
                int i3 = 0;
                for (int i4 = 0; i4 < length; i4++) {
                    short[] sArr = new short[layers[i4].getOi()];
                    short[] sArr2 = new short[layers[i4].getOi()];
                    for (int i5 = 0; i5 < layers[i4].getOi(); i5++) {
                        sArr[i5] = initSign[i3];
                        i3++;
                    }
                    short[] solveEquation = this.f1778cf.solveEquation(layers[i4].plugInVinegars(this.f1779x), sArr);
                    if (solveEquation == null) {
                        throw new Exception("LES is not solveable!");
                        break;
                    }
                    for (int i6 = 0; i6 < solveEquation.length; i6++) {
                        this.f1779x[layers[i4].getVi() + i6] = solveEquation[i6];
                    }
                }
                short[] multiplyMatrix = this.f1778cf.multiplyMatrix(((RainbowPrivateKeyParameters) this.key).getInvA2(), this.f1778cf.addVect(((RainbowPrivateKeyParameters) this.key).getB2(), this.f1779x));
                for (int i7 = 0; i7 < bArr2.length; i7++) {
                    bArr2[i7] = (byte) multiplyMatrix[i7];
                }
                z = true;
            } catch (Exception e) {
                z = false;
            }
            i = i2;
            if (z) {
                break;
            }
            i = i2 + 1;
            i2 = i;
        } while (i < 65536);
        if (i != 65536) {
            return bArr2;
        }
        throw new IllegalStateException("unable to generate signature - LES not solvable");
    }

    @Override // org.spongycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!z) {
            this.key = (RainbowPublicKeyParameters) cipherParameters;
        } else if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            this.key = (RainbowPrivateKeyParameters) parametersWithRandom.getParameters();
        } else {
            this.random = new SecureRandom();
            this.key = (RainbowPrivateKeyParameters) cipherParameters;
        }
        this.signableDocumentLength = this.key.getDocLength();
    }

    @Override // org.spongycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        short[] sArr = new short[bArr2.length];
        for (int i = 0; i < bArr2.length; i++) {
            sArr[i] = (short) (bArr2[i] & 255);
        }
        short[] makeMessageRepresentative = makeMessageRepresentative(bArr);
        short[] verifySignatureIntern = verifySignatureIntern(sArr);
        if (makeMessageRepresentative.length != verifySignatureIntern.length) {
            return false;
        }
        boolean z = true;
        for (int i2 = 0; i2 < makeMessageRepresentative.length; i2++) {
            z = z && makeMessageRepresentative[i2] == verifySignatureIntern[i2];
        }
        return z;
    }
}
