package org.spongycastle.crypto.macs;

import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/macs/VMPCMac.class */
public class VMPCMac implements Mac {

    /* renamed from: T */
    private byte[] f1341T;

    /* renamed from: g */
    private byte f1342g;
    private byte[] workingIV;
    private byte[] workingKey;

    /* renamed from: x1 */
    private byte f1345x1;

    /* renamed from: x2 */
    private byte f1346x2;

    /* renamed from: x3 */
    private byte f1347x3;

    /* renamed from: x4 */
    private byte f1348x4;

    /* renamed from: n */
    private byte f1343n = (byte) 0;

    /* renamed from: P */
    private byte[] f1340P = null;

    /* renamed from: s */
    private byte f1344s = (byte) 0;

    private void initKey(byte[] bArr, byte[] bArr2) {
        this.f1344s = (byte) 0;
        this.f1340P = new byte[256];
        for (int i = 0; i < 256; i++) {
            this.f1340P[i] = (byte) i;
        }
        for (int i2 = 0; i2 < 768; i2++) {
            int i3 = i2 & 255;
            this.f1344s = this.f1340P[(this.f1344s + this.f1340P[i3] + bArr[i2 % bArr.length]) & 255];
            byte b = this.f1340P[i3];
            this.f1340P[i3] = this.f1340P[this.f1344s & 255];
            this.f1340P[this.f1344s & 255] = b;
        }
        for (int i4 = 0; i4 < 768; i4++) {
            int i5 = i4 & 255;
            this.f1344s = this.f1340P[(this.f1344s + this.f1340P[i5] + bArr2[i4 % bArr2.length]) & 255];
            byte b2 = this.f1340P[i5];
            this.f1340P[i5] = this.f1340P[this.f1344s & 255];
            this.f1340P[this.f1344s & 255] = b2;
        }
        this.f1343n = (byte) 0;
    }

    @Override // org.spongycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        for (int i2 = 1; i2 < 25; i2++) {
            this.f1344s = this.f1340P[(this.f1344s + this.f1340P[this.f1343n & 255]) & 255];
            this.f1348x4 = this.f1340P[(this.f1348x4 + this.f1347x3 + i2) & 255];
            this.f1347x3 = this.f1340P[(this.f1347x3 + this.f1346x2 + i2) & 255];
            this.f1346x2 = this.f1340P[(this.f1346x2 + this.f1345x1 + i2) & 255];
            this.f1345x1 = this.f1340P[(this.f1345x1 + this.f1344s + i2) & 255];
            this.f1341T[this.f1342g & 31] = (byte) (this.f1341T[this.f1342g & 31] ^ this.f1345x1);
            this.f1341T[(this.f1342g + 1) & 31] = (byte) (this.f1341T[(this.f1342g + 1) & 31] ^ this.f1346x2);
            this.f1341T[(this.f1342g + 2) & 31] = (byte) (this.f1341T[(this.f1342g + 2) & 31] ^ this.f1347x3);
            this.f1341T[(this.f1342g + 3) & 31] = (byte) (this.f1341T[(this.f1342g + 3) & 31] ^ this.f1348x4);
            this.f1342g = (byte) ((this.f1342g + 4) & 31);
            byte b = this.f1340P[this.f1343n & 255];
            this.f1340P[this.f1343n & 255] = this.f1340P[this.f1344s & 255];
            this.f1340P[this.f1344s & 255] = b;
            this.f1343n = (byte) ((this.f1343n + 1) & 255);
        }
        for (int i3 = 0; i3 < 768; i3++) {
            int i4 = i3 & 255;
            this.f1344s = this.f1340P[(this.f1344s + this.f1340P[i4] + this.f1341T[i3 & 31]) & 255];
            byte b2 = this.f1340P[i4];
            this.f1340P[i4] = this.f1340P[this.f1344s & 255];
            this.f1340P[this.f1344s & 255] = b2;
        }
        byte[] bArr2 = new byte[20];
        for (int i5 = 0; i5 < 20; i5++) {
            int i6 = i5 & 255;
            this.f1344s = this.f1340P[(this.f1344s + this.f1340P[i6]) & 255];
            bArr2[i5] = this.f1340P[(this.f1340P[this.f1340P[this.f1344s & 255] & 255] + 1) & 255];
            byte b3 = this.f1340P[i6];
            this.f1340P[i6] = this.f1340P[this.f1344s & 255];
            this.f1340P[this.f1344s & 255] = b3;
        }
        System.arraycopy(bArr2, 0, bArr, i, bArr2.length);
        reset();
        return bArr2.length;
    }

    @Override // org.spongycastle.crypto.Mac
    public String getAlgorithmName() {
        return "VMPC-MAC";
    }

    @Override // org.spongycastle.crypto.Mac
    public int getMacSize() {
        return 20;
    }

    @Override // org.spongycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof ParametersWithIV)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include an IV");
        }
        ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
        KeyParameter keyParameter = (KeyParameter) parametersWithIV.getParameters();
        if (!(parametersWithIV.getParameters() instanceof KeyParameter)) {
            throw new IllegalArgumentException("VMPC-MAC Init parameters must include a key");
        }
        this.workingIV = parametersWithIV.getIV();
        if (this.workingIV == null || this.workingIV.length < 1 || this.workingIV.length > 768) {
            throw new IllegalArgumentException("VMPC-MAC requires 1 to 768 bytes of IV");
        }
        this.workingKey = keyParameter.getKey();
        reset();
    }

    @Override // org.spongycastle.crypto.Mac
    public void reset() {
        initKey(this.workingKey, this.workingIV);
        this.f1343n = (byte) 0;
        this.f1348x4 = (byte) 0;
        this.f1347x3 = (byte) 0;
        this.f1346x2 = (byte) 0;
        this.f1345x1 = (byte) 0;
        this.f1342g = (byte) 0;
        this.f1341T = new byte[32];
        for (int i = 0; i < 32; i++) {
            this.f1341T[i] = (byte) 0;
        }
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        this.f1344s = this.f1340P[(this.f1344s + this.f1340P[this.f1343n & 255]) & 255];
        this.f1348x4 = this.f1340P[(this.f1348x4 + this.f1347x3) & 255];
        this.f1347x3 = this.f1340P[(this.f1347x3 + this.f1346x2) & 255];
        this.f1346x2 = this.f1340P[(this.f1346x2 + this.f1345x1) & 255];
        this.f1345x1 = this.f1340P[(this.f1345x1 + this.f1344s + ((byte) (b ^ this.f1340P[(this.f1340P[this.f1340P[this.f1344s & 255] & 255] + 1) & 255]))) & 255];
        this.f1341T[this.f1342g & 31] = (byte) (this.f1341T[this.f1342g & 31] ^ this.f1345x1);
        this.f1341T[(this.f1342g + 1) & 31] = (byte) (this.f1341T[(this.f1342g + 1) & 31] ^ this.f1346x2);
        this.f1341T[(this.f1342g + 2) & 31] = (byte) (this.f1341T[(this.f1342g + 2) & 31] ^ this.f1347x3);
        this.f1341T[(this.f1342g + 3) & 31] = (byte) (this.f1341T[(this.f1342g + 3) & 31] ^ this.f1348x4);
        this.f1342g = (byte) ((this.f1342g + 4) & 31);
        byte b2 = this.f1340P[this.f1343n & 255];
        this.f1340P[this.f1343n & 255] = this.f1340P[this.f1344s & 255];
        this.f1340P[this.f1344s & 255] = b2;
        this.f1343n = (byte) ((this.f1343n + 1) & 255);
    }

    @Override // org.spongycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws DataLengthException, IllegalStateException {
        if (i + i2 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        }
        for (int i3 = 0; i3 < i2; i3++) {
            update(bArr[i + i3]);
        }
    }
}
