package org.spongycastle.math.p032ec.custom.sec;

import java.math.BigInteger;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat256;
import org.spongycastle.util.Arrays;
/* renamed from: org.spongycastle.math.ec.custom.sec.SecP256R1FieldElement */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/custom/sec/SecP256R1FieldElement.class */
public class SecP256R1FieldElement extends ECFieldElement {

    /* renamed from: Q */
    public static final BigInteger f1615Q = SecP256R1Curve.f1611q;

    /* renamed from: x */
    protected int[] f1616x;

    public SecP256R1FieldElement() {
        this.f1616x = Nat256.create();
    }

    public SecP256R1FieldElement(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.compareTo(f1615Q) >= 0) {
            throw new IllegalArgumentException("x value invalid for SecP256R1FieldElement");
        }
        this.f1616x = SecP256R1Field.fromBigInteger(bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SecP256R1FieldElement(int[] iArr) {
        this.f1616x = iArr;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement add(ECFieldElement eCFieldElement) {
        int[] create = Nat256.create();
        SecP256R1Field.add(this.f1616x, ((SecP256R1FieldElement) eCFieldElement).f1616x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement addOne() {
        int[] create = Nat256.create();
        SecP256R1Field.addOne(this.f1616x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement divide(ECFieldElement eCFieldElement) {
        int[] create = Nat256.create();
        Mod.invert(SecP256R1Field.f1613P, ((SecP256R1FieldElement) eCFieldElement).f1616x, create);
        SecP256R1Field.multiply(create, this.f1616x, create);
        return new SecP256R1FieldElement(create);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SecP256R1FieldElement)) {
            return false;
        }
        return Nat256.m99eq(this.f1616x, ((SecP256R1FieldElement) obj).f1616x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public String getFieldName() {
        return "SecP256R1Field";
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public int getFieldSize() {
        return f1615Q.bitLength();
    }

    public int hashCode() {
        return f1615Q.hashCode() ^ Arrays.hashCode(this.f1616x, 0, 8);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement invert() {
        int[] create = Nat256.create();
        Mod.invert(SecP256R1Field.f1613P, this.f1616x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isOne() {
        return Nat256.isOne(this.f1616x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean isZero() {
        return Nat256.isZero(this.f1616x);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement multiply(ECFieldElement eCFieldElement) {
        int[] create = Nat256.create();
        SecP256R1Field.multiply(this.f1616x, ((SecP256R1FieldElement) eCFieldElement).f1616x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement negate() {
        int[] create = Nat256.create();
        SecP256R1Field.negate(this.f1616x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement sqrt() {
        int[] iArr = this.f1616x;
        if (Nat256.isZero(iArr) || Nat256.isOne(iArr)) {
            return this;
        }
        int[] create = Nat256.create();
        int[] create2 = Nat256.create();
        SecP256R1Field.square(iArr, create);
        SecP256R1Field.multiply(create, iArr, create);
        SecP256R1Field.squareN(create, 2, create2);
        SecP256R1Field.multiply(create2, create, create2);
        SecP256R1Field.squareN(create2, 4, create);
        SecP256R1Field.multiply(create, create2, create);
        SecP256R1Field.squareN(create, 8, create2);
        SecP256R1Field.multiply(create2, create, create2);
        SecP256R1Field.squareN(create2, 16, create);
        SecP256R1Field.multiply(create, create2, create);
        SecP256R1Field.squareN(create, 32, create);
        SecP256R1Field.multiply(create, iArr, create);
        SecP256R1Field.squareN(create, 96, create);
        SecP256R1Field.multiply(create, iArr, create);
        SecP256R1Field.squareN(create, 94, create);
        SecP256R1Field.square(create, create2);
        return Nat256.m99eq(iArr, create2) ? new SecP256R1FieldElement(create) : null;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement square() {
        int[] create = Nat256.create();
        SecP256R1Field.square(this.f1616x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public ECFieldElement subtract(ECFieldElement eCFieldElement) {
        int[] create = Nat256.create();
        SecP256R1Field.subtract(this.f1616x, ((SecP256R1FieldElement) eCFieldElement).f1616x, create);
        return new SecP256R1FieldElement(create);
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public boolean testBitZero() {
        boolean z = false;
        if (Nat256.getBit(this.f1616x, 0) == 1) {
            z = true;
        }
        return z;
    }

    @Override // org.spongycastle.math.p032ec.ECFieldElement
    public BigInteger toBigInteger() {
        return Nat256.toBigInteger(this.f1616x);
    }
}
