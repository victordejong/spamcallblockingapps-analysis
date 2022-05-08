package org.spongycastle.openpgp.operator.p035bc;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.crypto.Digest;
import org.spongycastle.openpgp.PGPException;
import org.spongycastle.openpgp.operator.PGPDigestCalculator;
import org.spongycastle.openpgp.operator.PGPDigestCalculatorProvider;
/* renamed from: org.spongycastle.openpgp.operator.bc.BcPGPDigestCalculatorProvider */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider.class */
public class BcPGPDigestCalculatorProvider implements PGPDigestCalculatorProvider {

    /* renamed from: org.spongycastle.openpgp.operator.bc.BcPGPDigestCalculatorProvider$DigestOutputStream */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider$DigestOutputStream.class */
    private class DigestOutputStream extends OutputStream {
        private Digest dig;

        DigestOutputStream(Digest digest) {
            this.dig = digest;
        }

        byte[] getDigest() {
            byte[] bArr = new byte[this.dig.getDigestSize()];
            this.dig.doFinal(bArr, 0);
            return bArr;
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            this.dig.update((byte) i);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.dig.update(bArr, 0, bArr.length);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            this.dig.update(bArr, i, i2);
        }
    }

    @Override // org.spongycastle.openpgp.operator.PGPDigestCalculatorProvider
    public PGPDigestCalculator get(final int i) throws PGPException {
        final Digest createDigest = BcImplProvider.createDigest(i);
        final DigestOutputStream digestOutputStream = new DigestOutputStream(createDigest);
        return new PGPDigestCalculator() { // from class: org.spongycastle.openpgp.operator.bc.BcPGPDigestCalculatorProvider.1
            @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
            public int getAlgorithm() {
                return i;
            }

            @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
            public byte[] getDigest() {
                return digestOutputStream.getDigest();
            }

            @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
            public OutputStream getOutputStream() {
                return digestOutputStream;
            }

            @Override // org.spongycastle.openpgp.operator.PGPDigestCalculator
            public void reset() {
                createDigest.reset();
            }
        };
    }
}
