package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.common.collect.RegularImmutableMap;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader.class */
public class SafeParcelReader {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException.class */
    public static class ParseException extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ParseException(java.lang.String r6, android.os.Parcel r7) {
            /*
                r5 = this;
                r0 = r7
                int r0 = r0.dataPosition()
                r8 = r0
                r0 = r7
                int r0 = r0.dataSize()
                r9 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r6
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 41
                int r2 = r2 + r3
                r1.<init>(r2)
                r7 = r0
                r0 = r7
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                java.lang.String r1 = " Parcel: pos="
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                java.lang.String r1 = " size="
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r9
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r7
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.SafeParcelReader.ParseException.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    /* renamed from: A */
    public static int m17275A(Parcel parcel, int i) {
        m17266a(parcel, i, 4);
        return parcel.readInt();
    }

    /* renamed from: B */
    public static long m17274B(Parcel parcel, int i) {
        m17266a(parcel, i, 8);
        return parcel.readLong();
    }

    /* renamed from: C */
    public static Long m17273C(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        if (E == 0) {
            return null;
        }
        m17265a(parcel, i, E, 8);
        return Long.valueOf(parcel.readLong());
    }

    /* renamed from: D */
    public static short m17272D(Parcel parcel, int i) {
        m17266a(parcel, i, 4);
        return (short) parcel.readInt();
    }

    /* renamed from: E */
    public static int m17271E(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & RegularImmutableMap.SHORT_MASK : parcel.readInt();
    }

    /* renamed from: F */
    public static void m17270F(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + m17271E(parcel, i));
    }

    /* renamed from: a */
    public static int m17269a(int i) {
        return i & RegularImmutableMap.SHORT_MASK;
    }

    /* renamed from: a */
    public static int m17268a(Parcel parcel) {
        return parcel.readInt();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m17264a(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + E);
        return createFromParcel;
    }

    /* renamed from: a */
    public static BigDecimal m17267a(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + E);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    /* renamed from: a */
    public static void m17266a(Parcel parcel, int i, int i2) {
        int E = m17271E(parcel, i);
        if (E != i2) {
            String hexString = Integer.toHexString(E);
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
            sb.append("Expected size ");
            sb.append(i2);
            sb.append(" got ");
            sb.append(E);
            sb.append(" (0x");
            sb.append(hexString);
            sb.append(")");
            throw new ParseException(sb.toString(), parcel);
        }
    }

    /* renamed from: a */
    public static void m17265a(Parcel parcel, int i, int i2, int i3) {
        if (i2 != i3) {
            String hexString = Integer.toHexString(i2);
            StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
            sb.append("Expected size ");
            sb.append(i3);
            sb.append(" got ");
            sb.append(i2);
            sb.append(" (0x");
            sb.append(hexString);
            sb.append(")");
            throw new ParseException(sb.toString(), parcel);
        }
    }

    /* renamed from: b */
    public static int m17263b(Parcel parcel) {
        int a = m17268a(parcel);
        int E = m17271E(parcel, a);
        int dataPosition = parcel.dataPosition();
        if (m17269a(a) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(a));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = E + dataPosition;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("Size read is invalid start=");
        sb.append(dataPosition);
        sb.append(" end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }

    /* renamed from: b */
    public static <T> T[] m17261b(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + E);
        return tArr;
    }

    /* renamed from: b */
    public static BigDecimal[] m17262b(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i2] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + E);
        return bigDecimalArr;
    }

    /* renamed from: c */
    public static BigInteger m17260c(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + E);
        return new BigInteger(createByteArray);
    }

    /* renamed from: c */
    public static <T> ArrayList<T> m17259c(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + E);
        return createTypedArrayList;
    }

    /* renamed from: d */
    public static BigInteger[] m17258d(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            bigIntegerArr[i2] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + E);
        return bigIntegerArr;
    }

    /* renamed from: e */
    public static boolean[] m17257e(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + E);
        return createBooleanArray;
    }

    /* renamed from: f */
    public static Bundle m17256f(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + E);
        return readBundle;
    }

    /* renamed from: g */
    public static byte[] m17255g(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + E);
        return createByteArray;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [byte[], byte[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[][] m17254h(android.os.Parcel r4, int r5) {
        /*
            r0 = r4
            r1 = r5
            int r0 = m17271E(r0, r1)
            r6 = r0
            r0 = r4
            int r0 = r0.dataPosition()
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0011
            r0 = 0
            return r0
        L_0x0011:
            r0 = r4
            int r0 = r0.readInt()
            r8 = r0
            r0 = r8
            byte[] r0 = new byte[r0]
            r9 = r0
            r0 = 0
            r5 = r0
        L_0x0020:
            r0 = r5
            r1 = r8
            if (r0 >= r1) goto L_0x0034
            r0 = r9
            r1 = r5
            r2 = r4
            byte[] r2 = r2.createByteArray()
            r0[r1] = r2
            int r5 = r5 + 1
            goto L_0x0020
        L_0x0034:
            r0 = r4
            r1 = r7
            r2 = r6
            int r1 = r1 + r2
            r0.setDataPosition(r1)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.SafeParcelReader.m17254h(android.os.Parcel, int):byte[][]");
    }

    /* renamed from: i */
    public static double[] m17253i(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(dataPosition + E);
        return createDoubleArray;
    }

    /* renamed from: j */
    public static float[] m17252j(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(dataPosition + E);
        return createFloatArray;
    }

    /* renamed from: k */
    public static int[] m17251k(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + E);
        return createIntArray;
    }

    /* renamed from: l */
    public static ArrayList<Integer> m17250l(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        int readInt = parcel.readInt();
        for (int i2 = 0; i2 < readInt; i2++) {
            arrayList.add(Integer.valueOf(parcel.readInt()));
        }
        parcel.setDataPosition(dataPosition + E);
        return arrayList;
    }

    /* renamed from: m */
    public static long[] m17249m(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(dataPosition + E);
        return createLongArray;
    }

    /* renamed from: n */
    public static Parcel m17248n(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, E);
        parcel.setDataPosition(dataPosition + E);
        return obtain;
    }

    /* renamed from: o */
    public static Parcel[] m17247o(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        Parcel[] parcelArr = new Parcel[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                parcelArr[i2] = obtain;
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                parcelArr[i2] = null;
            }
        }
        parcel.setDataPosition(dataPosition + E);
        return parcelArr;
    }

    /* renamed from: p */
    public static String m17246p(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + E);
        return readString;
    }

    /* renamed from: q */
    public static String[] m17245q(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + E);
        return createStringArray;
    }

    /* renamed from: r */
    public static ArrayList<String> m17244r(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + E);
        return createStringArrayList;
    }

    /* renamed from: s */
    public static void m17243s(Parcel parcel, int i) {
        if (parcel.dataPosition() != i) {
            StringBuilder sb = new StringBuilder(37);
            sb.append("Overread allowed size end=");
            sb.append(i);
            throw new ParseException(sb.toString(), parcel);
        }
    }

    /* renamed from: t */
    public static boolean m17242t(Parcel parcel, int i) {
        m17266a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    /* renamed from: u */
    public static Boolean m17241u(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        if (E == 0) {
            return null;
        }
        m17265a(parcel, i, E, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    /* renamed from: v */
    public static double m17240v(Parcel parcel, int i) {
        m17266a(parcel, i, 8);
        return parcel.readDouble();
    }

    /* renamed from: w */
    public static Double m17239w(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        if (E == 0) {
            return null;
        }
        m17265a(parcel, i, E, 8);
        return Double.valueOf(parcel.readDouble());
    }

    /* renamed from: x */
    public static float m17238x(Parcel parcel, int i) {
        m17266a(parcel, i, 4);
        return parcel.readFloat();
    }

    /* renamed from: y */
    public static Float m17237y(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        if (E == 0) {
            return null;
        }
        m17265a(parcel, i, E, 4);
        return Float.valueOf(parcel.readFloat());
    }

    /* renamed from: z */
    public static IBinder m17236z(Parcel parcel, int i) {
        int E = m17271E(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (E == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + E);
        return readStrongBinder;
    }
}
