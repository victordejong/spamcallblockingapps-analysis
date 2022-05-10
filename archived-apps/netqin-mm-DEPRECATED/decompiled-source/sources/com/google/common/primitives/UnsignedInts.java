package com.google.common.primitives;

import java.util.Comparator;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedInts.class */
public final class UnsignedInts {

    /* loaded from: classes2-dex2jar.jar:com/google/common/primitives/UnsignedInts$LexicographicalComparator.class */
    public enum LexicographicalComparator implements Comparator<int[]> {
        INSTANCE;

        public int compare(int[] iArr, int[] iArr2) {
            int min = Math.min(iArr.length, iArr2.length);
            for (int i = 0; i < min; i++) {
                if (iArr[i] != iArr2[i]) {
                    return UnsignedInts.m7787a(iArr[i], iArr2[i]);
                }
            }
            return iArr.length - iArr2.length;
        }

        @Override // java.lang.Enum
        public String toString() {
            return "UnsignedInts.lexicographicalComparator()";
        }
    }

    /* renamed from: a */
    public static int m7788a(int i) {
        return i ^ Integer.MIN_VALUE;
    }

    /* renamed from: a */
    public static int m7787a(int i, int i2) {
        return Ints.m7813a(m7788a(i), m7788a(i2));
    }

    /* renamed from: a */
    public static int m7786a(String str, int i) {
        C4933n.m24795a(str);
        long parseLong = Long.parseLong(str, i);
        if ((4294967295L & parseLong) == parseLong) {
            return (int) parseLong;
        }
        throw new NumberFormatException("Input " + str + " in base " + i + " is not in the range of an unsigned integer");
    }

    /* renamed from: b */
    public static int m7784b(int i, int i2) {
        return (int) (m7785b(i) / m7785b(i2));
    }

    /* renamed from: b */
    public static long m7785b(int i) {
        return i & 4294967295L;
    }

    /* renamed from: c */
    public static int m7783c(int i, int i2) {
        return (int) (m7785b(i) % m7785b(i2));
    }

    /* renamed from: d */
    public static String m7782d(int i, int i2) {
        return Long.toString(i & 4294967295L, i2);
    }
}
