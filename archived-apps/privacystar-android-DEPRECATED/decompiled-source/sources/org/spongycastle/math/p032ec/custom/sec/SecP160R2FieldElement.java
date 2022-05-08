package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat160;
import org.spongycastle.util.Arrays;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP160R2FieldElement */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP160R2FieldElement.class */
public class SecP160R2FieldElement extends ECFieldElement {

    /* renamed from: Q */
    public static final BigInteger f1582Q = SecP160R2Curve.f1579q;

    /* renamed from: x */
    protected int[] f1583x;

    public SecP160R2FieldElement() {
        this.f1583x = Nat160.create();
    }

    public SecP160R2FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1582Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP160R2FieldElement");
        }
        this.f1583x = SecP160R2Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecP160R2FieldElement(int[] iArr) {
        this.f1583x = iArr;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        SecP160R2Field.add(this.f1583x, ((SecP160R2FieldElement) eCFieldElement).f1583x, create);
        return new SecP160R2FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] create = Nat160.create();
        SecP160R2Field.addOne(this.f1583x, create);
        return new SecP160R2FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        Mod.invert(SecP160R2Field.f1580P, ((SecP160R2FieldElement) eCFieldElement).f1583x, create);
        SecP160R2Field.multiply(create, this.f1583x, create);
        return new SecP160R2FieldElement(create);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP160R2FieldElement)) {
            return false;
        }
        return Nat160.m102eq(this.f1583x, ((SecP160R2FieldElement) obj).f1583x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public String getFieldName() {
        return "SecP160R2Field";
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public int getFieldSize() {
        return f1582Q.bitLength();
    }

    public int hashCode() {
        return f1582Q.hashCode() ^ Arrays.hashCode(this.f1583x, 0, 5);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement invert() {
        int[] create = Nat160.create();
        Mod.invert(SecP160R2Field.f1580P, this.f1583x, create);
        return new SecP160R2FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isOne() {
        return Nat160.isOne(this.f1583x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isZero() {
        return Nat160.isZero(this.f1583x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        SecP160R2Field.multiply(this.f1583x, ((SecP160R2FieldElement) eCFieldElement).f1583x, create);
        return new SecP160R2FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement negate() {
        int[] create = Nat160.create();
        SecP160R2Field.negate(this.f1583x, create);
        return new SecP160R2FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f1583x;
        if (Nat160.isZero(iArr) || Nat160.isOne(iArr)) {
            return this;
        }
        int[] create = Nat160.create();
        SecP160R2Field.square(iArr, create);
        SecP160R2Field.multiply(create, iArr, create);
        int[] create2 = Nat160.create();
        SecP160R2Field.square(create, create2);
        SecP160R2Field.multiply(create2, iArr, create2);
        int[] create3 = Nat160.create();
        SecP160R2Field.square(create2, create3);
        SecP160R2Field.multiply(create3, iArr, create3);
        int[] create4 = Nat160.create();
        SecP160R2Field.squareN(create3, 3, create4);
        SecP160R2Field.multiply(create4, create2, create4);
        SecP160R2Field.squareN(create4, 7, create3);
        SecP160R2Field.multiply(create3, create4, create3);
        SecP160R2Field.squareN(create3, 3, create4);
        SecP160R2Field.multiply(create4, create2, create4);
        int[] create5 = Nat160.create();
        SecP160R2Field.squareN(create4, 14, create5);
        SecP160R2Field.multiply(create5, create3, create5);
        SecP160R2Field.squareN(create5, 31, create3);
        SecP160R2Field.multiply(create3, create5, create3);
        SecP160R2Field.squareN(create3, 62, create5);
        SecP160R2Field.multiply(create5, create3, create5);
        SecP160R2Field.squareN(create5, 3, create3);
        SecP160R2Field.multiply(create3, create2, create3);
        SecP160R2Field.squareN(create3, 18, create3);
        SecP160R2Field.multiply(create3, create4, create3);
        SecP160R2Field.squareN(create3, 2, create3);
        SecP160R2Field.multiply(create3, iArr, create3);
        SecP160R2Field.squareN(create3, 3, create3);
        SecP160R2Field.multiply(create3, create, create3);
        SecP160R2Field.squareN(create3, 6, create3);
        SecP160R2Field.multiply(create3, create2, create3);
        SecP160R2Field.squareN(create3, 2, create3);
        SecP160R2Field.multiply(create3, iArr, create3);
        SecP160R2Field.square(create3, create);
        return Nat160.m102eq(iArr, create) ? new SecP160R2FieldElement(create3) : null;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement square() {
        int[] create = Nat160.create();
        SecP160R2Field.square(this.f1583x, create);
        return new SecP160R2FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] create = Nat160.create();
        SecP160R2Field.subtract(this.f1583x, ((SecP160R2FieldElement) eCFieldElement).f1583x, create);
        return new SecP160R2FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean testBitZero() {
        boolean z = false;
        if (Nat160.getBit(this.f1583x, 0) == 1) {
            z = true;
        }
        return z;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat160.toBigInteger(this.f1583x);
    }
}
