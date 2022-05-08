package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.security.SecureRandom;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.util.Arrays;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/TlsBlockCipher.class */
public class TlsBlockCipher implements TlsCipher {
    protected TlsContext context;
    protected BlockCipher decryptCipher;
    protected BlockCipher encryptCipher;
    protected boolean encryptThenMAC;
    protected byte[] randomData = new byte[256];
    protected TlsMac readMac;
    protected boolean useExplicitIV;
    protected TlsMac writeMac;

    public TlsBlockCipher(TlsContext tlsContext, BlockCipher blockCipher, BlockCipher blockCipher2, Digest digest, Digest digest2, int i) throws IOException {
        byte[] bArr;
        byte[] bArr2;
        ParametersWithIV parametersWithIV;
        ParametersWithIV parametersWithIV2;
        this.context = tlsContext;
        tlsContext.getNonceRandomGenerator().nextBytes(this.randomData);
        this.useExplicitIV = TlsUtils.isTLSv11(tlsContext);
        this.encryptThenMAC = tlsContext.getSecurityParameters().encryptThenMAC;
        int digestSize = (i * 2) + digest.getDigestSize() + digest2.getDigestSize();
        int blockSize = !this.useExplicitIV ? digestSize + blockCipher.getBlockSize() + blockCipher2.getBlockSize() : digestSize;
        byte[] calculateKeyBlock = TlsUtils.calculateKeyBlock(tlsContext, blockSize);
        TlsMac tlsMac = new TlsMac(tlsContext, digest, calculateKeyBlock, 0, digest.getDigestSize());
        int digestSize2 = digest.getDigestSize() + 0;
        TlsMac tlsMac2 = new TlsMac(tlsContext, digest2, calculateKeyBlock, digestSize2, digest2.getDigestSize());
        int digestSize3 = digestSize2 + digest2.getDigestSize();
        KeyParameter keyParameter = new KeyParameter(calculateKeyBlock, digestSize3, i);
        int i2 = digestSize3 + i;
        KeyParameter keyParameter2 = new KeyParameter(calculateKeyBlock, i2, i);
        int i3 = i2 + i;
        if (this.useExplicitIV) {
            bArr2 = new byte[blockCipher.getBlockSize()];
            bArr = new byte[blockCipher2.getBlockSize()];
        } else {
            bArr2 = Arrays.copyOfRange(calculateKeyBlock, i3, blockCipher.getBlockSize() + i3);
            int blockSize2 = i3 + blockCipher.getBlockSize();
            bArr = Arrays.copyOfRange(calculateKeyBlock, blockSize2, blockCipher2.getBlockSize() + blockSize2);
            i3 = blockSize2 + blockCipher2.getBlockSize();
        }
        if (i3 != blockSize) {
            throw new TlsFatalAlert((short) 80);
        }
        if (tlsContext.isServer()) {
            this.writeMac = tlsMac2;
            this.readMac = tlsMac;
            this.encryptCipher = blockCipher2;
            this.decryptCipher = blockCipher;
            parametersWithIV2 = new ParametersWithIV(keyParameter2, bArr);
            parametersWithIV = new ParametersWithIV(keyParameter, bArr2);
        } else {
            this.writeMac = tlsMac;
            this.readMac = tlsMac2;
            this.encryptCipher = blockCipher;
            this.decryptCipher = blockCipher2;
            parametersWithIV2 = new ParametersWithIV(keyParameter, bArr2);
            parametersWithIV = new ParametersWithIV(keyParameter2, bArr);
        }
        this.encryptCipher.init(true, parametersWithIV2);
        this.decryptCipher.init(false, parametersWithIV);
    }

    protected int checkPaddingConstantTime(byte[] bArr, int i, int i2, int i3, int i4) {
        byte b;
        int i5;
        int i6;
        int i7 = i + i2;
        byte b2 = bArr[i7 - 1];
        int i8 = (b2 & 255) + 1;
        if ((!TlsUtils.isSSL(this.context) || i8 <= i3) && i4 + i8 <= i2) {
            int i9 = i7 - i8;
            b = 0;
            while (true) {
                int i10 = i9 + 1;
                b = (byte) (b | (bArr[i9] ^ b2));
                if (i10 >= i7) {
                    break;
                }
                i9 = i10;
            }
            if (b != 0) {
                i6 = 0;
                i5 = i8;
            } else {
                i6 = i8;
                i5 = i8;
            }
        } else {
            i6 = 0;
            b = 0;
            i5 = 0;
        }
        byte[] bArr2 = this.randomData;
        while (i5 < 256) {
            b = (byte) (b | (bArr2[i5] ^ b2));
            i5++;
        }
        bArr2[0] = (byte) (b ^ bArr2[0]);
        return i6;
    }

    protected int chooseExtraPadBlocks(SecureRandom secureRandom, int i) {
        return Math.min(lowestBitSet(secureRandom.nextInt()), i);
    }

    @Override // org.spongycastle.crypto.tls.TlsCipher
    public byte[] decodeCiphertext(long j, short s, byte[] bArr, int i, int i2) throws IOException {
        boolean z;
        int i3;
        int blockSize = this.decryptCipher.getBlockSize();
        int size = this.readMac.getSize();
        int max = this.encryptThenMAC ? blockSize + size : Math.max(blockSize, size + 1);
        int i4 = max;
        if (this.useExplicitIV) {
            i4 = max + blockSize;
        }
        if (i2 < i4) {
            throw new TlsFatalAlert((short) 50);
        }
        int i5 = this.encryptThenMAC ? i2 - size : i2;
        if (i5 % blockSize != 0) {
            throw new TlsFatalAlert((short) 21);
        }
        if (this.encryptThenMAC) {
            int i6 = i + i2;
            if (!Arrays.constantTimeAreEqual(this.readMac.calculateMac(j, s, bArr, i, i2 - size), Arrays.copyOfRange(bArr, i6 - size, i6))) {
                throw new TlsFatalAlert((short) 20);
            }
        }
        int i7 = i;
        int i8 = i5;
        if (this.useExplicitIV) {
            this.decryptCipher.init(false, new ParametersWithIV(null, bArr, i, blockSize));
            i7 = i + blockSize;
            i8 = i5 - blockSize;
        }
        for (int i9 = 0; i9 < i8; i9 += blockSize) {
            int i10 = i7 + i9;
            this.decryptCipher.processBlock(bArr, i10, bArr, i10);
        }
        int checkPaddingConstantTime = checkPaddingConstantTime(bArr, i7, i8, blockSize, this.encryptThenMAC ? 0 : size);
        boolean z2 = checkPaddingConstantTime == 0;
        int i11 = i8 - checkPaddingConstantTime;
        if (!this.encryptThenMAC) {
            int i12 = i11 - size;
            int i13 = i7 + i12;
            z = z2 | (!Arrays.constantTimeAreEqual(this.readMac.calculateMacConstantTime(j, s, bArr, i7, i12, i8 - size, this.randomData), Arrays.copyOfRange(bArr, i13, i13 + size)));
            i3 = i12;
        } else {
            z = z2;
            i3 = i11;
        }
        if (!z) {
            return Arrays.copyOfRange(bArr, i7, i7 + i3);
        }
        throw new TlsFatalAlert((short) 20);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0057, code lost:
        if (r8.context.getSecurityParameters().truncatedHMac == false) goto L_0x005a;
     */
    @Override // org.spongycastle.crypto.tls.TlsCipher
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] encodePlaintext(long r9, short r11, byte[] r12, int r13, int r14) {
        /*
            Method dump skipped, instructions count: 443
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.tls.TlsBlockCipher.encodePlaintext(long, short, byte[], int, int):byte[]");
    }

    @Override // org.spongycastle.crypto.tls.TlsCipher
    public int getPlaintextLimit(int i) {
        int i2;
        int blockSize = this.encryptCipher.getBlockSize();
        int size = this.writeMac.getSize();
        int i3 = i;
        if (this.useExplicitIV) {
            i3 = i - blockSize;
        }
        if (this.encryptThenMAC) {
            int i4 = i3 - size;
            i2 = i4 - (i4 % blockSize);
        } else {
            i2 = (i3 - (i3 % blockSize)) - size;
        }
        return i2 - 1;
    }

    public TlsMac getReadMac() {
        return this.readMac;
    }

    public TlsMac getWriteMac() {
        return this.writeMac;
    }

    protected int lowestBitSet(int i) {
        if (i == 0) {
            return 32;
        }
        int i2 = 0;
        while ((i & 1) == 0) {
            i2++;
            i >>= 1;
        }
        return i2;
    }
}
