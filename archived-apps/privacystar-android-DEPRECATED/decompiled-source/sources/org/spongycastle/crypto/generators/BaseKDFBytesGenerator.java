package org.spongycastle.crypto.generators;

import android.support.p001v4.view.InputDeviceCompat;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.DigestDerivationFunction;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.ISO18033KDFParameters;
import org.spongycastle.crypto.params.KDFParameters;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/generators/BaseKDFBytesGenerator.class */
public class BaseKDFBytesGenerator implements DigestDerivationFunction {
    private int counterStart;
    private Digest digest;

    /* renamed from: iv */
    private byte[] f1296iv;
    private byte[] shared;

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseKDFBytesGenerator(int i, Digest digest) {
        this.counterStart = i;
        this.digest = digest;
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public int generateBytes(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException {
        if (bArr.length - i2 < i) {
            throw new OutputLengthException("output buffer too small");
        }
        long j = i2;
        int digestSize = this.digest.getDigestSize();
        if (j > 8589934591L) {
            throw new IllegalArgumentException("Output length too large");
        }
        long j2 = digestSize;
        int i3 = (int) (((j + j2) - 1) / j2);
        byte[] bArr2 = new byte[this.digest.getDigestSize()];
        byte[] bArr3 = new byte[4];
        Pack.intToBigEndian(this.counterStart, bArr3, 0);
        int i4 = this.counterStart & InputDeviceCompat.SOURCE_ANY;
        int i5 = i;
        int i6 = i2;
        for (int i7 = 0; i7 < i3; i7++) {
            this.digest.update(this.shared, 0, this.shared.length);
            this.digest.update(bArr3, 0, bArr3.length);
            if (this.f1296iv != null) {
                this.digest.update(this.f1296iv, 0, this.f1296iv.length);
            }
            this.digest.doFinal(bArr2, 0);
            if (i6 > digestSize) {
                System.arraycopy(bArr2, 0, bArr, i5, digestSize);
                i5 += digestSize;
                i6 -= digestSize;
            } else {
                System.arraycopy(bArr2, 0, bArr, i5, i6);
            }
            byte b = (byte) (bArr3[3] + 1);
            bArr3[3] = b;
            i4 = i4;
            if (b == 0) {
                i4 += 256;
                Pack.intToBigEndian(i4, bArr3, 0);
            }
        }
        this.digest.reset();
        return (int) j;
    }

    @Override // org.spongycastle.crypto.DigestDerivationFunction
    public Digest getDigest() {
        return this.digest;
    }

    @Override // org.spongycastle.crypto.DerivationFunction
    public void init(DerivationParameters derivationParameters) {
        if (derivationParameters instanceof KDFParameters) {
            KDFParameters kDFParameters = (KDFParameters) derivationParameters;
            this.shared = kDFParameters.getSharedSecret();
            this.f1296iv = kDFParameters.getIV();
        } else if (derivationParameters instanceof ISO18033KDFParameters) {
            this.shared = ((ISO18033KDFParameters) derivationParameters).getSeed();
            this.f1296iv = null;
        } else {
            throw new IllegalArgumentException("KDF parameters required for generator");
        }
    }
}
