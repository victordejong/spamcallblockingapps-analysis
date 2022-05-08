package org.spongycastle.math.p032ec;

import java.math.BigInteger;
import java.util.Random;
import org.spongycastle.math.raw.Mod;
import org.spongycastle.math.raw.Nat;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.BigIntegers;
/* renamed from: org.spongycastle.math.ec.ECFieldElement */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECFieldElement.class */
public abstract class ECFieldElement implements ECConstants {

    /* renamed from: org.spongycastle.math.ec.ECFieldElement$F2m */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECFieldElement$F2m.class */
    public static class F2m extends ECFieldElement {
        public static final int GNB = 1;
        public static final int PPB = 3;
        public static final int TPB = 2;

        /* renamed from: ks */
        private int[] f1545ks;

        /* renamed from: m */
        private int f1546m;
        private int representation;

        /* renamed from: x */
        private LongArray f1547x;

        public F2m(int i, int i2, int i3, int i4, BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > i) {
                throw new IllegalArgumentException("x value invalid in F2m field element");
            }
            if (i3 == 0 && i4 == 0) {
                this.representation = 2;
                this.f1545ks = new int[]{i2};
            } else if (i3 >= i4) {
                throw new IllegalArgumentException("k2 must be smaller than k3");
            } else if (i3 <= 0) {
                throw new IllegalArgumentException("k2 must be larger than 0");
            } else {
                this.representation = 3;
                this.f1545ks = new int[]{i2, i3, i4};
            }
            this.f1546m = i;
            this.f1547x = new LongArray(bigInteger);
        }

        public F2m(int i, int i2, BigInteger bigInteger) {
            this(i, i2, 0, 0, bigInteger);
        }

        private F2m(int i, int[] iArr, LongArray longArray) {
            this.f1546m = i;
            this.representation = iArr.length == 1 ? 2 : 3;
            this.f1545ks = iArr;
            this.f1547x = longArray;
        }

        public static void checkFieldElements(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            if (!(eCFieldElement instanceof F2m) || !(eCFieldElement2 instanceof F2m)) {
                throw new IllegalArgumentException("Field elements are not both instances of ECFieldElement.F2m");
            }
            F2m f2m = (F2m) eCFieldElement;
            F2m f2m2 = (F2m) eCFieldElement2;
            if (f2m.representation != f2m2.representation) {
                throw new IllegalArgumentException("One of the F2m field elements has incorrect representation");
            } else if (f2m.f1546m != f2m2.f1546m || !Arrays.areEqual(f2m.f1545ks, f2m2.f1545ks)) {
                throw new IllegalArgumentException("Field elements are not elements of the same field F2m");
            }
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement add(ECFieldElement eCFieldElement) {
            LongArray longArray = (LongArray) this.f1547x.clone();
            longArray.addShiftedByWords(((F2m) eCFieldElement).f1547x, 0);
            return new F2m(this.f1546m, this.f1545ks, longArray);
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement addOne() {
            return new F2m(this.f1546m, this.f1545ks, this.f1547x.addOne());
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public int bitLength() {
            return this.f1547x.degree();
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement divide(ECFieldElement eCFieldElement) {
            return multiply(eCFieldElement.invert());
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof F2m)) {
                return false;
            }
            F2m f2m = (F2m) obj;
            if (this.f1546m != f2m.f1546m || this.representation != f2m.representation || !Arrays.areEqual(this.f1545ks, f2m.f1545ks) || !this.f1547x.equals(f2m.f1547x)) {
                z = false;
            }
            return z;
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public String getFieldName() {
            return "F2m";
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public int getFieldSize() {
            return this.f1546m;
        }

        public int getK1() {
            return this.f1545ks[0];
        }

        public int getK2() {
            return this.f1545ks.length >= 2 ? this.f1545ks[1] : 0;
        }

        public int getK3() {
            return this.f1545ks.length >= 3 ? this.f1545ks[2] : 0;
        }

        public int getM() {
            return this.f1546m;
        }

        public int getRepresentation() {
            return this.representation;
        }

        public int hashCode() {
            return (this.f1547x.hashCode() ^ this.f1546m) ^ Arrays.hashCode(this.f1545ks);
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement invert() {
            return new F2m(this.f1546m, this.f1545ks, this.f1547x.modInverse(this.f1546m, this.f1545ks));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public boolean isOne() {
            return this.f1547x.isOne();
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public boolean isZero() {
            return this.f1547x.isZero();
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement multiply(ECFieldElement eCFieldElement) {
            return new F2m(this.f1546m, this.f1545ks, this.f1547x.modMultiply(((F2m) eCFieldElement).f1547x, this.f1546m, this.f1545ks));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            return multiplyPlusProduct(eCFieldElement, eCFieldElement2, eCFieldElement3);
        }

        /* JADX WARN: Code restructure failed: missing block: B:5:0x0048, code lost:
            if (r0 == r0) goto L_0x004b;
         */
        @Override // org.spongycastle.math.p032ec.ECFieldElement
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.spongycastle.math.p032ec.ECFieldElement multiplyPlusProduct(org.spongycastle.math.p032ec.ECFieldElement r7, org.spongycastle.math.p032ec.ECFieldElement r8, org.spongycastle.math.p032ec.ECFieldElement r9) {
            /*
                r6 = this;
                r0 = r6
                org.spongycastle.math.ec.LongArray r0 = r0.f1547x
                r10 = r0
                r0 = r7
                org.spongycastle.math.ec.ECFieldElement$F2m r0 = (org.spongycastle.math.p032ec.ECFieldElement.F2m) r0
                org.spongycastle.math.ec.LongArray r0 = r0.f1547x
                r11 = r0
                r0 = r8
                org.spongycastle.math.ec.ECFieldElement$F2m r0 = (org.spongycastle.math.p032ec.ECFieldElement.F2m) r0
                org.spongycastle.math.ec.LongArray r0 = r0.f1547x
                r7 = r0
                r0 = r9
                org.spongycastle.math.ec.ECFieldElement$F2m r0 = (org.spongycastle.math.p032ec.ECFieldElement.F2m) r0
                org.spongycastle.math.ec.LongArray r0 = r0.f1547x
                r9 = r0
                r0 = r10
                r1 = r11
                r2 = r6
                int r2 = r2.f1546m
                r3 = r6
                int[] r3 = r3.f1545ks
                org.spongycastle.math.ec.LongArray r0 = r0.multiply(r1, r2, r3)
                r8 = r0
                r0 = r7
                r1 = r9
                r2 = r6
                int r2 = r2.f1546m
                r3 = r6
                int[] r3 = r3.f1545ks
                org.spongycastle.math.ec.LongArray r0 = r0.multiply(r1, r2, r3)
                r9 = r0
                r0 = r8
                r1 = r10
                if (r0 == r1) goto L_0x004b
                r0 = r8
                r7 = r0
                r0 = r8
                r1 = r11
                if (r0 != r1) goto L_0x0053
            L_0x004b:
                r0 = r8
                java.lang.Object r0 = r0.clone()
                org.spongycastle.math.ec.LongArray r0 = (org.spongycastle.math.p032ec.LongArray) r0
                r7 = r0
            L_0x0053:
                r0 = r7
                r1 = r9
                r2 = 0
                r0.addShiftedByWords(r1, r2)
                r0 = r7
                r1 = r6
                int r1 = r1.f1546m
                r2 = r6
                int[] r2 = r2.f1545ks
                r0.reduce(r1, r2)
                org.spongycastle.math.ec.ECFieldElement$F2m r0 = new org.spongycastle.math.ec.ECFieldElement$F2m
                r1 = r0
                r2 = r6
                int r2 = r2.f1546m
                r3 = r6
                int[] r3 = r3.f1545ks
                r4 = r7
                r1.<init>(r2, r3, r4)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.math.p032ec.ECFieldElement.F2m.multiplyPlusProduct(org.spongycastle.math.ec.ECFieldElement, org.spongycastle.math.ec.ECFieldElement, org.spongycastle.math.ec.ECFieldElement):org.spongycastle.math.ec.ECFieldElement");
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement negate() {
            return this;
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement sqrt() {
            return (this.f1547x.isZero() || this.f1547x.isOne()) ? this : squarePow(this.f1546m - 1);
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement square() {
            return new F2m(this.f1546m, this.f1545ks, this.f1547x.modSquare(this.f1546m, this.f1545ks));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            return squarePlusProduct(eCFieldElement, eCFieldElement2);
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            LongArray longArray = this.f1547x;
            LongArray longArray2 = ((F2m) eCFieldElement).f1547x;
            LongArray longArray3 = ((F2m) eCFieldElement2).f1547x;
            LongArray square = longArray.square(this.f1546m, this.f1545ks);
            LongArray multiply = longArray2.multiply(longArray3, this.f1546m, this.f1545ks);
            LongArray longArray4 = square;
            if (square == longArray) {
                longArray4 = (LongArray) square.clone();
            }
            longArray4.addShiftedByWords(multiply, 0);
            longArray4.reduce(this.f1546m, this.f1545ks);
            return new F2m(this.f1546m, this.f1545ks, longArray4);
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement squarePow(int i) {
            return i < 1 ? this : new F2m(this.f1546m, this.f1545ks, this.f1547x.modSquareN(i, this.f1546m, this.f1545ks));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement subtract(ECFieldElement eCFieldElement) {
            return add(eCFieldElement);
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public boolean testBitZero() {
            return this.f1547x.testBitZero();
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public BigInteger toBigInteger() {
            return this.f1547x.toBigInteger();
        }
    }

    /* renamed from: org.spongycastle.math.ec.ECFieldElement$Fp */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ECFieldElement$Fp.class */
    public static class C2402Fp extends ECFieldElement {

        /* renamed from: q */
        BigInteger f1548q;

        /* renamed from: r */
        BigInteger f1549r;

        /* renamed from: x */
        BigInteger f1550x;

        public C2402Fp(BigInteger bigInteger, BigInteger bigInteger2) {
            this(bigInteger, calculateResidue(bigInteger), bigInteger2);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C2402Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            if (bigInteger3 == null || bigInteger3.signum() < 0 || bigInteger3.compareTo(bigInteger) >= 0) {
                throw new IllegalArgumentException("x value invalid in Fp field element");
            }
            this.f1548q = bigInteger;
            this.f1549r = bigInteger2;
            this.f1550x = bigInteger3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static BigInteger calculateResidue(BigInteger bigInteger) {
            int bitLength = bigInteger.bitLength();
            if (bitLength < 96 || bigInteger.shiftRight(bitLength - 64).longValue() != -1) {
                return null;
            }
            return ONE.shiftLeft(bitLength).subtract(bigInteger);
        }

        private ECFieldElement checkSqrt(ECFieldElement eCFieldElement) {
            if (!eCFieldElement.square().equals(this)) {
                eCFieldElement = null;
            }
            return eCFieldElement;
        }

        private BigInteger[] lucasSequence(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            int bitLength = bigInteger3.bitLength();
            int lowestSetBit = bigInteger3.getLowestSetBit();
            BigInteger bigInteger4 = ECConstants.ONE;
            BigInteger bigInteger5 = ECConstants.TWO;
            BigInteger bigInteger6 = ECConstants.ONE;
            BigInteger bigInteger7 = ECConstants.ONE;
            BigInteger bigInteger8 = bigInteger;
            for (int i = bitLength - 1; i >= lowestSetBit + 1; i--) {
                bigInteger6 = modMult(bigInteger6, bigInteger7);
                if (bigInteger3.testBit(i)) {
                    bigInteger7 = modMult(bigInteger6, bigInteger2);
                    bigInteger4 = modMult(bigInteger4, bigInteger8);
                    bigInteger5 = modReduce(bigInteger8.multiply(bigInteger5).subtract(bigInteger.multiply(bigInteger6)));
                    bigInteger8 = modReduce(bigInteger8.multiply(bigInteger8).subtract(bigInteger7.shiftLeft(1)));
                } else {
                    bigInteger4 = modReduce(bigInteger4.multiply(bigInteger5).subtract(bigInteger6));
                    bigInteger8 = modReduce(bigInteger8.multiply(bigInteger5).subtract(bigInteger.multiply(bigInteger6)));
                    bigInteger5 = modReduce(bigInteger5.multiply(bigInteger5).subtract(bigInteger6.shiftLeft(1)));
                    bigInteger7 = bigInteger6;
                }
            }
            BigInteger modMult = modMult(bigInteger6, bigInteger7);
            BigInteger modMult2 = modMult(modMult, bigInteger2);
            BigInteger modReduce = modReduce(bigInteger4.multiply(bigInteger5).subtract(modMult));
            BigInteger modReduce2 = modReduce(bigInteger8.multiply(bigInteger5).subtract(bigInteger.multiply(modMult)));
            BigInteger modMult3 = modMult(modMult, modMult2);
            for (int i2 = 1; i2 <= lowestSetBit; i2++) {
                modReduce = modMult(modReduce, modReduce2);
                modReduce2 = modReduce(modReduce2.multiply(modReduce2).subtract(modMult3.shiftLeft(1)));
                modMult3 = modMult(modMult3, modMult3);
            }
            return new BigInteger[]{modReduce, modReduce2};
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement add(ECFieldElement eCFieldElement) {
            return new C2402Fp(this.f1548q, this.f1549r, modAdd(this.f1550x, eCFieldElement.toBigInteger()));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement addOne() {
            BigInteger add = this.f1550x.add(ECConstants.ONE);
            BigInteger bigInteger = add;
            if (add.compareTo(this.f1548q) == 0) {
                bigInteger = ECConstants.ZERO;
            }
            return new C2402Fp(this.f1548q, this.f1549r, bigInteger);
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement divide(ECFieldElement eCFieldElement) {
            return new C2402Fp(this.f1548q, this.f1549r, modMult(this.f1550x, modInverse(eCFieldElement.toBigInteger())));
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C2402Fp)) {
                return false;
            }
            C2402Fp fp = (C2402Fp) obj;
            if (!this.f1548q.equals(fp.f1548q) || !this.f1550x.equals(fp.f1550x)) {
                z = false;
            }
            return z;
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public String getFieldName() {
            return "Fp";
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public int getFieldSize() {
            return this.f1548q.bitLength();
        }

        public BigInteger getQ() {
            return this.f1548q;
        }

        public int hashCode() {
            return this.f1548q.hashCode() ^ this.f1550x.hashCode();
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement invert() {
            return new C2402Fp(this.f1548q, this.f1549r, modInverse(this.f1550x));
        }

        protected BigInteger modAdd(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger add = bigInteger.add(bigInteger2);
            BigInteger bigInteger3 = add;
            if (add.compareTo(this.f1548q) >= 0) {
                bigInteger3 = add.subtract(this.f1548q);
            }
            return bigInteger3;
        }

        protected BigInteger modDouble(BigInteger bigInteger) {
            BigInteger shiftLeft = bigInteger.shiftLeft(1);
            BigInteger bigInteger2 = shiftLeft;
            if (shiftLeft.compareTo(this.f1548q) >= 0) {
                bigInteger2 = shiftLeft.subtract(this.f1548q);
            }
            return bigInteger2;
        }

        protected BigInteger modHalf(BigInteger bigInteger) {
            BigInteger bigInteger2 = bigInteger;
            if (bigInteger.testBit(0)) {
                bigInteger2 = this.f1548q.add(bigInteger);
            }
            return bigInteger2.shiftRight(1);
        }

        protected BigInteger modHalfAbs(BigInteger bigInteger) {
            BigInteger bigInteger2 = bigInteger;
            if (bigInteger.testBit(0)) {
                bigInteger2 = this.f1548q.subtract(bigInteger);
            }
            return bigInteger2.shiftRight(1);
        }

        protected BigInteger modInverse(BigInteger bigInteger) {
            int fieldSize = getFieldSize();
            int i = (fieldSize + 31) >> 5;
            int[] fromBigInteger = Nat.fromBigInteger(fieldSize, this.f1548q);
            int[] fromBigInteger2 = Nat.fromBigInteger(fieldSize, bigInteger);
            int[] create = Nat.create(i);
            Mod.invert(fromBigInteger, fromBigInteger2, create);
            return Nat.toBigInteger(i, create);
        }

        protected BigInteger modMult(BigInteger bigInteger, BigInteger bigInteger2) {
            return modReduce(bigInteger.multiply(bigInteger2));
        }

        protected BigInteger modReduce(BigInteger bigInteger) {
            BigInteger bigInteger2;
            BigInteger bigInteger3;
            if (this.f1549r != null) {
                boolean z = bigInteger.signum() < 0;
                BigInteger bigInteger4 = bigInteger;
                if (z) {
                    bigInteger4 = bigInteger.abs();
                }
                int bitLength = this.f1548q.bitLength();
                boolean equals = this.f1549r.equals(ECConstants.ONE);
                while (true) {
                    bigInteger3 = bigInteger4;
                    if (bigInteger4.bitLength() > bitLength + 1) {
                        BigInteger shiftRight = bigInteger4.shiftRight(bitLength);
                        BigInteger subtract = bigInteger4.subtract(shiftRight.shiftLeft(bitLength));
                        BigInteger bigInteger5 = shiftRight;
                        if (!equals) {
                            bigInteger5 = shiftRight.multiply(this.f1549r);
                        }
                        bigInteger4 = bigInteger5.add(subtract);
                    }
                }
                while (bigInteger3.compareTo(this.f1548q) >= 0) {
                    bigInteger3 = bigInteger3.subtract(this.f1548q);
                }
                bigInteger2 = bigInteger3;
                if (z) {
                    bigInteger2 = bigInteger3;
                    if (bigInteger3.signum() != 0) {
                        bigInteger2 = this.f1548q.subtract(bigInteger3);
                    }
                }
            } else {
                bigInteger2 = bigInteger.mod(this.f1548q);
            }
            return bigInteger2;
        }

        protected BigInteger modSubtract(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger subtract = bigInteger.subtract(bigInteger2);
            BigInteger bigInteger3 = subtract;
            if (subtract.signum() < 0) {
                bigInteger3 = subtract.add(this.f1548q);
            }
            return bigInteger3;
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement multiply(ECFieldElement eCFieldElement) {
            return new C2402Fp(this.f1548q, this.f1549r, modMult(this.f1550x, eCFieldElement.toBigInteger()));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            BigInteger bigInteger = this.f1550x;
            BigInteger bigInteger2 = eCFieldElement.toBigInteger();
            BigInteger bigInteger3 = eCFieldElement2.toBigInteger();
            BigInteger bigInteger4 = eCFieldElement3.toBigInteger();
            return new C2402Fp(this.f1548q, this.f1549r, modReduce(bigInteger.multiply(bigInteger2).subtract(bigInteger3.multiply(bigInteger4))));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
            BigInteger bigInteger = this.f1550x;
            BigInteger bigInteger2 = eCFieldElement.toBigInteger();
            BigInteger bigInteger3 = eCFieldElement2.toBigInteger();
            BigInteger bigInteger4 = eCFieldElement3.toBigInteger();
            return new C2402Fp(this.f1548q, this.f1549r, modReduce(bigInteger.multiply(bigInteger2).add(bigInteger3.multiply(bigInteger4))));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement negate() {
            return this.f1550x.signum() == 0 ? this : new C2402Fp(this.f1548q, this.f1549r, this.f1548q.subtract(this.f1550x));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement sqrt() {
            if (isZero() || isOne()) {
                return this;
            }
            if (!this.f1548q.testBit(0)) {
                throw new RuntimeException("not done yet");
            } else if (this.f1548q.testBit(1)) {
                return checkSqrt(new C2402Fp(this.f1548q, this.f1549r, this.f1550x.modPow(this.f1548q.shiftRight(2).add(ECConstants.ONE), this.f1548q)));
            } else if (this.f1548q.testBit(2)) {
                BigInteger modPow = this.f1550x.modPow(this.f1548q.shiftRight(3), this.f1548q);
                BigInteger modMult = modMult(modPow, this.f1550x);
                if (modMult(modMult, modPow).equals(ECConstants.ONE)) {
                    return checkSqrt(new C2402Fp(this.f1548q, this.f1549r, modMult));
                }
                return checkSqrt(new C2402Fp(this.f1548q, this.f1549r, modMult(modMult, ECConstants.TWO.modPow(this.f1548q.shiftRight(2), this.f1548q))));
            } else {
                BigInteger shiftRight = this.f1548q.shiftRight(1);
                if (!this.f1550x.modPow(shiftRight, this.f1548q).equals(ECConstants.ONE)) {
                    return null;
                }
                BigInteger bigInteger = this.f1550x;
                BigInteger modDouble = modDouble(modDouble(bigInteger));
                BigInteger add = shiftRight.add(ECConstants.ONE);
                BigInteger subtract = this.f1548q.subtract(ECConstants.ONE);
                Random random = new Random();
                while (true) {
                    BigInteger bigInteger2 = new BigInteger(this.f1548q.bitLength(), random);
                    if (bigInteger2.compareTo(this.f1548q) < 0 && modReduce(bigInteger2.multiply(bigInteger2).subtract(modDouble)).modPow(shiftRight, this.f1548q).equals(subtract)) {
                        BigInteger[] lucasSequence = lucasSequence(bigInteger2, bigInteger, add);
                        BigInteger bigInteger3 = lucasSequence[0];
                        BigInteger bigInteger4 = lucasSequence[1];
                        if (modMult(bigInteger4, bigInteger4).equals(modDouble)) {
                            return new C2402Fp(this.f1548q, this.f1549r, modHalfAbs(bigInteger4));
                        }
                        if (!bigInteger3.equals(ECConstants.ONE) && !bigInteger3.equals(subtract)) {
                            return null;
                        }
                    }
                }
            }
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement square() {
            return new C2402Fp(this.f1548q, this.f1549r, modMult(this.f1550x, this.f1550x));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            BigInteger bigInteger = this.f1550x;
            BigInteger bigInteger2 = eCFieldElement.toBigInteger();
            BigInteger bigInteger3 = eCFieldElement2.toBigInteger();
            return new C2402Fp(this.f1548q, this.f1549r, modReduce(bigInteger.multiply(bigInteger).subtract(bigInteger2.multiply(bigInteger3))));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            BigInteger bigInteger = this.f1550x;
            BigInteger bigInteger2 = eCFieldElement.toBigInteger();
            BigInteger bigInteger3 = eCFieldElement2.toBigInteger();
            return new C2402Fp(this.f1548q, this.f1549r, modReduce(bigInteger.multiply(bigInteger).add(bigInteger2.multiply(bigInteger3))));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public ECFieldElement subtract(ECFieldElement eCFieldElement) {
            return new C2402Fp(this.f1548q, this.f1549r, modSubtract(this.f1550x, eCFieldElement.toBigInteger()));
        }

        @Override // org.spongycastle.math.p032ec.ECFieldElement
        public BigInteger toBigInteger() {
            return this.f1550x;
        }
    }

    public abstract ECFieldElement add(ECFieldElement eCFieldElement);

    public abstract ECFieldElement addOne();

    public int bitLength() {
        return toBigInteger().bitLength();
    }

    public abstract ECFieldElement divide(ECFieldElement eCFieldElement);

    public byte[] getEncoded() {
        return BigIntegers.asUnsignedByteArray((getFieldSize() + 7) / 8, toBigInteger());
    }

    public abstract String getFieldName();

    public abstract int getFieldSize();

    public abstract ECFieldElement invert();

    public boolean isOne() {
        boolean z = true;
        if (bitLength() != 1) {
            z = false;
        }
        return z;
    }

    public boolean isZero() {
        return toBigInteger().signum() == 0;
    }

    public abstract ECFieldElement multiply(ECFieldElement eCFieldElement);

    public ECFieldElement multiplyMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return multiply(eCFieldElement).subtract(eCFieldElement2.multiply(eCFieldElement3));
    }

    public ECFieldElement multiplyPlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return multiply(eCFieldElement).add(eCFieldElement2.multiply(eCFieldElement3));
    }

    public abstract ECFieldElement negate();

    public abstract ECFieldElement sqrt();

    public abstract ECFieldElement square();

    public ECFieldElement squareMinusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return square().subtract(eCFieldElement.multiply(eCFieldElement2));
    }

    public ECFieldElement squarePlusProduct(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return square().add(eCFieldElement.multiply(eCFieldElement2));
    }

    public ECFieldElement squarePow(int i) {
        ECFieldElement eCFieldElement = this;
        for (int i2 = 0; i2 < i; i2++) {
            eCFieldElement = eCFieldElement.square();
        }
        return eCFieldElement;
    }

    public abstract ECFieldElement subtract(ECFieldElement eCFieldElement);

    public boolean testBitZero() {
        return toBigInteger().testBit(0);
    }

    public abstract BigInteger toBigInteger();

    public String toString() {
        return toBigInteger().toString(16);
    }
}
