package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.MacDerivationFunction;
import org.spongycastle.crypto.params.KDFDoublePipelineIterationParameters;
import org.spongycastle.crypto.params.KeyParameter;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/KDFDoublePipelineIterationBytesGenerator.class */
public class KDFDoublePipelineIterationBytesGenerator implements MacDerivationFunction {
    private static final BigInteger INTEGER_MAX = BigInteger.valueOf(2147483647L);
    private static final BigInteger TWO = BigInteger.valueOf(2);

    /* renamed from: a */
    private byte[] f1301a;
    private byte[] fixedInputData;
    private int generatedBytes;

    /* renamed from: h */
    private final int f1302h;
    private byte[] ios;

    /* renamed from: k */
    private byte[] f1303k;
    private int maxSizeExcl;
    private final Mac prf;
    private boolean useCounter;

    public KDFDoublePipelineIterationBytesGenerator(Mac mac) {
        this.prf = mac;
        this.f1302h = mac.getMacSize();
        this.f1301a = new byte[this.f1302h];
        this.f1303k = new byte[this.f1302h];
    }

    private void generateNext() {
        if (this.generatedBytes == 0) {
            this.prf.update(this.fixedInputData, 0, this.fixedInputData.length);
            this.prf.doFinal(this.f1301a, 0);
        } else {
            this.prf.update(this.f1301a, 0, this.f1301a.length);
            this.prf.doFinal(this.f1301a, 0);
        }
        this.prf.update(this.f1301a, 0, this.f1301a.length);
        if (this.useCounter) {
            int i = (this.generatedBytes / this.f1302h) + 1;
            switch (this.ios.length) {
                case 1:
                    break;
                case 4:
                    this.ios[0] = (byte) (i >>> 24);
                case 3:
                    this.ios[this.ios.length - 3] = (byte) (i >>> 16);
                case 2:
                    this.ios[this.ios.length - 2] = (byte) (i >>> 8);
                    break;
                default:
                    throw new IllegalStateException("Unsupported size of counter i");
            }
            this.ios[this.ios.length - 1] = (byte) i;
            this.prf.update(this.ios, 0, this.ios.length);
        }
        this.prf.update(this.fixedInputData, 0, this.fixedInputData.length);
        this.prf.doFinal(this.f1303k, 0);
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        int i3 = this.generatedBytes + i2;
        if (i3 < 0 || i3 >= this.maxSizeExcl) {
            throw new DataLengthException("Current KDFCTR may only be used for " + this.maxSizeExcl + " bytes");
        }
        if (this.generatedBytes % this.f1302h == 0) {
            generateNext();
        }
        int i4 = this.generatedBytes;
        int i5 = this.f1302h;
        int min = Math.min(this.f1302h - (this.generatedBytes % this.f1302h), i2);
        System.arraycopy(this.f1303k, i4 % i5, bArr, i, min);
        this.generatedBytes += min;
        int i6 = i2;
        while (true) {
            int i7 = i6 - min;
            i += min;
            if (i7 <= 0) {
                return i2;
            }
            generateNext();
            min = Math.min(this.f1302h, i7);
            System.arraycopy(this.f1303k, 0, bArr, i, min);
            this.generatedBytes += min;
            i6 = i7;
        }
    }

    @Override // org.spongycastle.crypto.MacDerivationFunction
    public Mac getMac() {
        return this.prf;
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (!(derivationParameters instanceof KDFDoublePipelineIterationParameters)) {
            throw new IllegalArgumentException("Wrong type of arguments given");
        }
        KDFDoublePipelineIterationParameters kDFDoublePipelineIterationParameters = (KDFDoublePipelineIterationParameters) derivationParameters;
        this.prf.init(new KeyParameter(kDFDoublePipelineIterationParameters.getKI()));
        this.fixedInputData = kDFDoublePipelineIterationParameters.getFixedInputData();
        int r = kDFDoublePipelineIterationParameters.getR();
        this.ios = new byte[r / 8];
        int i = Integer.MAX_VALUE;
        if (kDFDoublePipelineIterationParameters.useCounter()) {
            BigInteger multiply = TWO.pow(r).multiply(BigInteger.valueOf(this.f1302h));
            if (multiply.compareTo(INTEGER_MAX) != 1) {
                i = multiply.intValue();
            }
            this.maxSizeExcl = i;
        } else {
            this.maxSizeExcl = Integer.MAX_VALUE;
        }
        this.useCounter = kDFDoublePipelineIterationParameters.useCounter();
        this.generatedBytes = 0;
    }
}
