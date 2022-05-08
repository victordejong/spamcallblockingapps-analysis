package org.spongycastle.math.raw;

import java.util.Random;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/raw/Mod.class */
public abstract class Mod {
    public static void add(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int length = iArr.length;
        if (Nat.add(length, iArr2, iArr3, iArr4) != 0) {
            Nat.subFrom(length, iArr, iArr4);
        }
    }

    private static int getTrailingZeroes(int i) {
        int i2 = 0;
        int i3 = i;
        while ((i3 & 1) == 0) {
            i3 >>>= 1;
            i2++;
        }
        return i2;
    }

    public static int inverse32(int i) {
        int i2 = (2 - (i * i)) * i;
        int i3 = i2 * (2 - (i * i2));
        int i4 = i3 * (2 - (i * i3));
        return i4 * (2 - (i * i4));
    }

    private static void inversionResult(int[] iArr, int i, int[] iArr2, int[] iArr3) {
        if (i < 0) {
            Nat.add(iArr.length, iArr2, iArr, iArr3);
        } else {
            System.arraycopy(iArr2, 0, iArr3, 0, iArr.length);
        }
    }

    private static int inversionStep(int[] iArr, int[] iArr2, int i, int[] iArr3, int i2) {
        int length = iArr.length;
        int i3 = 0;
        while (iArr2[0] == 0) {
            Nat.shiftDownWord(i, iArr2, 0);
            i3 += 32;
        }
        int trailingZeroes = getTrailingZeroes(iArr2[0]);
        int i4 = i3;
        if (trailingZeroes > 0) {
            Nat.shiftDownBits(i, iArr2, trailingZeroes, 0);
            i4 = i3 + trailingZeroes;
        }
        int i5 = 0;
        int i6 = i2;
        while (i5 < i4) {
            int i7 = i6;
            if ((iArr3[0] & 1) != 0) {
                i7 = i6 < 0 ? i6 + Nat.addTo(length, iArr, iArr3) : i6 + Nat.subFrom(length, iArr, iArr3);
            }
            Nat.shiftDownBit(length, iArr3, i7);
            i5++;
            i6 = i7;
        }
        return i6;
    }

    public static void invert(int[] iArr, int[] iArr2, int[] iArr3) {
        int length = iArr.length;
        if (Nat.isZero(length, iArr2)) {
            throw new IllegalArgumentException("'x' cannot be 0");
        } else if (Nat.isOne(length, iArr2)) {
            System.arraycopy(iArr2, 0, iArr3, 0, length);
        } else {
            int[] copy = Nat.copy(length, iArr2);
            int[] create = Nat.create(length);
            create[0] = 1;
            int inversionStep = (1 & copy[0]) == 0 ? inversionStep(iArr, copy, length, create, 0) : 0;
            if (Nat.isOne(length, copy)) {
                inversionResult(iArr, inversionStep, create, iArr3);
                return;
            }
            int[] copy2 = Nat.copy(length, iArr);
            int[] create2 = Nat.create(length);
            int i = length;
            int i2 = 0;
            while (true) {
                int i3 = i - 1;
                if (copy[i3] == 0 && copy2[i3] == 0) {
                    i--;
                } else if (Nat.gte(i, copy, copy2)) {
                    Nat.subFrom(i, copy2, copy);
                    int inversionStep2 = inversionStep(iArr, copy, i, create, inversionStep + (Nat.subFrom(length, create2, create) - i2));
                    inversionStep = inversionStep2;
                    if (Nat.isOne(i, copy)) {
                        inversionResult(iArr, inversionStep2, create, iArr3);
                        return;
                    }
                } else {
                    Nat.subFrom(i, copy, copy2);
                    int inversionStep3 = inversionStep(iArr, copy2, i, create2, i2 + (Nat.subFrom(length, create, create2) - inversionStep));
                    i2 = inversionStep3;
                    if (Nat.isOne(i, copy2)) {
                        inversionResult(iArr, inversionStep3, create2, iArr3);
                        return;
                    }
                }
            }
        }
    }

    public static int[] random(int[] iArr) {
        int length = iArr.length;
        Random random = new Random();
        int[] create = Nat.create(length);
        int i = length - 1;
        int i2 = iArr[i];
        int i3 = i2 | (i2 >>> 1);
        int i4 = i3 | (i3 >>> 2);
        int i5 = i4 | (i4 >>> 4);
        int i6 = i5 | (i5 >>> 8);
        do {
            for (int i7 = 0; i7 != length; i7++) {
                create[i7] = random.nextInt();
            }
            create[i] = create[i] & (i6 | (i6 >>> 16));
        } while (Nat.gte(length, create, iArr));
        return create;
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int length = iArr.length;
        if (Nat.sub(length, iArr2, iArr3, iArr4) != 0) {
            Nat.addTo(length, iArr, iArr4);
        }
    }
}
