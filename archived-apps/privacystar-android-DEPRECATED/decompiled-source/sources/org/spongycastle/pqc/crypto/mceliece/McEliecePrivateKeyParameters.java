package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.GoppaCode;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;
import org.spongycastle.pqc.math.linearalgebra.PolynomialRingGF2m;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters.class */
public class McEliecePrivateKeyParameters extends McElieceKeyParameters {
    private GF2mField field;
    private PolynomialGF2mSmallM goppaPoly;

    /* renamed from: h */
    private GF2Matrix f1716h;

    /* renamed from: k */
    private int f1717k;

    /* renamed from: n */
    private int f1718n;
    private String oid;

    /* renamed from: p1 */
    private Permutation f1719p1;

    /* renamed from: p2 */
    private Permutation f1720p2;
    private PolynomialGF2mSmallM[] qInv;
    private GF2Matrix sInv;

    public McEliecePrivateKeyParameters(int i, int i2, GF2mField gF2mField, PolynomialGF2mSmallM polynomialGF2mSmallM, Permutation permutation, Permutation permutation2, GF2Matrix gF2Matrix) {
        super(true, null);
        this.f1717k = i2;
        this.f1718n = i;
        this.field = gF2mField;
        this.goppaPoly = polynomialGF2mSmallM;
        this.sInv = gF2Matrix;
        this.f1719p1 = permutation;
        this.f1720p2 = permutation2;
        this.f1716h = GoppaCode.createCanonicalCheckMatrix(gF2mField, polynomialGF2mSmallM);
        this.qInv = new PolynomialRingGF2m(gF2mField, polynomialGF2mSmallM).getSquareRootMatrix();
    }

    public McEliecePrivateKeyParameters(int i, int i2, byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4, byte[] bArr5, byte[] bArr6, byte[][] bArr7) {
        super(true, null);
        this.f1718n = i;
        this.f1717k = i2;
        this.field = new GF2mField(bArr);
        this.goppaPoly = new PolynomialGF2mSmallM(this.field, bArr2);
        this.sInv = new GF2Matrix(bArr3);
        this.f1719p1 = new Permutation(bArr4);
        this.f1720p2 = new Permutation(bArr5);
        this.f1716h = new GF2Matrix(bArr6);
        this.qInv = new PolynomialGF2mSmallM[bArr7.length];
        for (int i3 = 0; i3 < bArr7.length; i3++) {
            this.qInv[i3] = new PolynomialGF2mSmallM(this.field, bArr7[i3]);
        }
    }

    public GF2mField getField() {
        return this.field;
    }

    public PolynomialGF2mSmallM getGoppaPoly() {
        return this.goppaPoly;
    }

    public GF2Matrix getH() {
        return this.f1716h;
    }

    public int getK() {
        return this.f1717k;
    }

    public int getN() {
        return this.f1718n;
    }

    public Permutation getP1() {
        return this.f1719p1;
    }

    public Permutation getP2() {
        return this.f1720p2;
    }

    public PolynomialGF2mSmallM[] getQInv() {
        return this.qInv;
    }

    public GF2Matrix getSInv() {
        return this.sInv;
    }
}
