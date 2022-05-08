package org.spongycastle.math.p032ec.custom.sec;

import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.p032ec.ECPoint;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.math.raw.Nat160;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP160K1Point */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP160K1Point.class */
public class SecP160K1Point extends ECPoint.AbstractFp {
    public SecP160K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, false);
    }

    public SecP160K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2);
        if ((eCFieldElement == null) != (eCFieldElement2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.withCompression = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SecP160K1Point(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
        super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        this.withCompression = z;
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint add(ECPoint eCPoint) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (isInfinity()) {
            return eCPoint;
        }
        if (eCPoint.isInfinity()) {
            return this;
        }
        if (this == eCPoint) {
            return twice();
        }
        ECCurve curve = getCurve();
        SecP160R2FieldElement secP160R2FieldElement = (SecP160R2FieldElement) this.f1551x;
        SecP160R2FieldElement secP160R2FieldElement2 = (SecP160R2FieldElement) this.f1552y;
        SecP160R2FieldElement secP160R2FieldElement3 = (SecP160R2FieldElement) eCPoint.getXCoord();
        SecP160R2FieldElement secP160R2FieldElement4 = (SecP160R2FieldElement) eCPoint.getYCoord();
        SecP160R2FieldElement secP160R2FieldElement5 = (SecP160R2FieldElement) this.f1553zs[0];
        SecP160R2FieldElement secP160R2FieldElement6 = (SecP160R2FieldElement) eCPoint.getZCoord(0);
        int[] createExt = Nat160.createExt();
        int[] create = Nat160.create();
        int[] create2 = Nat160.create();
        int[] create3 = Nat160.create();
        boolean isOne = secP160R2FieldElement5.isOne();
        if (isOne) {
            iArr2 = secP160R2FieldElement3.f1583x;
            iArr = secP160R2FieldElement4.f1583x;
        } else {
            SecP160R2Field.square(secP160R2FieldElement5.f1583x, create2);
            SecP160R2Field.multiply(create2, secP160R2FieldElement3.f1583x, create);
            SecP160R2Field.multiply(create2, secP160R2FieldElement5.f1583x, create2);
            SecP160R2Field.multiply(create2, secP160R2FieldElement4.f1583x, create2);
            iArr2 = create;
            iArr = create2;
        }
        boolean isOne2 = secP160R2FieldElement6.isOne();
        if (isOne2) {
            iArr4 = secP160R2FieldElement.f1583x;
            iArr3 = secP160R2FieldElement2.f1583x;
        } else {
            SecP160R2Field.square(secP160R2FieldElement6.f1583x, create3);
            SecP160R2Field.multiply(create3, secP160R2FieldElement.f1583x, createExt);
            SecP160R2Field.multiply(create3, secP160R2FieldElement6.f1583x, create3);
            SecP160R2Field.multiply(create3, secP160R2FieldElement2.f1583x, create3);
            iArr4 = createExt;
            iArr3 = create3;
        }
        int[] create4 = Nat160.create();
        SecP160R2Field.subtract(iArr4, iArr2, create4);
        SecP160R2Field.subtract(iArr3, iArr, create);
        if (Nat160.isZero(create4)) {
            return Nat160.isZero(create) ? twice() : curve.getInfinity();
        }
        SecP160R2Field.square(create4, create2);
        int[] create5 = Nat160.create();
        SecP160R2Field.multiply(create2, create4, create5);
        SecP160R2Field.multiply(create2, iArr4, create2);
        SecP160R2Field.negate(create5, create5);
        Nat160.mul(iArr3, create5, createExt);
        SecP160R2Field.reduce32(Nat160.addBothTo(create2, create2, create5), create5);
        SecP160R2FieldElement secP160R2FieldElement7 = new SecP160R2FieldElement(create3);
        SecP160R2Field.square(create, secP160R2FieldElement7.f1583x);
        SecP160R2Field.subtract(secP160R2FieldElement7.f1583x, create5, secP160R2FieldElement7.f1583x);
        SecP160R2FieldElement secP160R2FieldElement8 = new SecP160R2FieldElement(create5);
        SecP160R2Field.subtract(create2, secP160R2FieldElement7.f1583x, secP160R2FieldElement8.f1583x);
        SecP160R2Field.multiplyAddToExt(secP160R2FieldElement8.f1583x, create, createExt);
        SecP160R2Field.reduce(createExt, secP160R2FieldElement8.f1583x);
        SecP160R2FieldElement secP160R2FieldElement9 = new SecP160R2FieldElement(create4);
        if (!isOne) {
            SecP160R2Field.multiply(secP160R2FieldElement9.f1583x, secP160R2FieldElement5.f1583x, secP160R2FieldElement9.f1583x);
        }
        if (!isOne2) {
            SecP160R2Field.multiply(secP160R2FieldElement9.f1583x, secP160R2FieldElement6.f1583x, secP160R2FieldElement9.f1583x);
        }
        return new SecP160K1Point(curve, secP160R2FieldElement7, secP160R2FieldElement8, new ECFieldElement[]{secP160R2FieldElement9}, this.withCompression);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    protected ECPoint detach() {
        return new SecP160K1Point(null, getAffineXCoord(), getAffineYCoord());
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint negate() {
        return isInfinity() ? this : new SecP160K1Point(this.curve, this.f1551x, this.f1552y.negate(), this.f1553zs, this.withCompression);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint threeTimes() {
        return (isInfinity() || this.f1552y.isZero()) ? this : twice().add(this);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint twice() {
        if (isInfinity()) {
            return this;
        }
        ECCurve curve = getCurve();
        SecP160R2FieldElement secP160R2FieldElement = (SecP160R2FieldElement) this.f1552y;
        if (secP160R2FieldElement.isZero()) {
            return curve.getInfinity();
        }
        SecP160R2FieldElement secP160R2FieldElement2 = (SecP160R2FieldElement) this.f1551x;
        SecP160R2FieldElement secP160R2FieldElement3 = (SecP160R2FieldElement) this.f1553zs[0];
        int[] create = Nat160.create();
        SecP160R2Field.square(secP160R2FieldElement.f1583x, create);
        int[] create2 = Nat160.create();
        SecP160R2Field.square(create, create2);
        int[] create3 = Nat160.create();
        SecP160R2Field.square(secP160R2FieldElement2.f1583x, create3);
        SecP160R2Field.reduce32(Nat160.addBothTo(create3, create3, create3), create3);
        SecP160R2Field.multiply(create, secP160R2FieldElement2.f1583x, create);
        SecP160R2Field.reduce32(Nat.shiftUpBits(5, create, 2, 0), create);
        int[] create4 = Nat160.create();
        SecP160R2Field.reduce32(Nat.shiftUpBits(5, create2, 3, 0, create4), create4);
        SecP160R2FieldElement secP160R2FieldElement4 = new SecP160R2FieldElement(create2);
        SecP160R2Field.square(create3, secP160R2FieldElement4.f1583x);
        SecP160R2Field.subtract(secP160R2FieldElement4.f1583x, create, secP160R2FieldElement4.f1583x);
        SecP160R2Field.subtract(secP160R2FieldElement4.f1583x, create, secP160R2FieldElement4.f1583x);
        SecP160R2FieldElement secP160R2FieldElement5 = new SecP160R2FieldElement(create);
        SecP160R2Field.subtract(create, secP160R2FieldElement4.f1583x, secP160R2FieldElement5.f1583x);
        SecP160R2Field.multiply(secP160R2FieldElement5.f1583x, create3, secP160R2FieldElement5.f1583x);
        SecP160R2Field.subtract(secP160R2FieldElement5.f1583x, create4, secP160R2FieldElement5.f1583x);
        SecP160R2FieldElement secP160R2FieldElement6 = new SecP160R2FieldElement(create3);
        SecP160R2Field.twice(secP160R2FieldElement.f1583x, secP160R2FieldElement6.f1583x);
        if (!secP160R2FieldElement3.isOne()) {
            SecP160R2Field.multiply(secP160R2FieldElement6.f1583x, secP160R2FieldElement3.f1583x, secP160R2FieldElement6.f1583x);
        }
        return new SecP160K1Point(curve, secP160R2FieldElement4, secP160R2FieldElement5, new ECFieldElement[]{secP160R2FieldElement6}, this.withCompression);
    }

    @Override // org.spongycastle.math.p032ec.ECPoint
    public ECPoint twicePlus(ECPoint eCPoint) {
        return this == eCPoint ? threeTimes() : isInfinity() ? eCPoint : eCPoint.isInfinity() ? twice() : this.f1552y.isZero() ? eCPoint : twice().add(eCPoint);
    }
}
