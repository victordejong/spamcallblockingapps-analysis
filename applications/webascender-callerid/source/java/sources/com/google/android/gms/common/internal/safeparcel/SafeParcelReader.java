package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
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
    private static void m3301A(Parcel parcel, int i, int i2, int i3) {
        if (i2 == i3) {
            return;
        }
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

    /* renamed from: a */
    public static Bundle m3300a(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m3278w == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + m3278w);
        return readBundle;
    }

    /* renamed from: b */
    public static byte[] m3299b(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m3278w == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + m3278w);
        return createByteArray;
    }

    /* renamed from: c */
    public static <T extends Parcelable> T m3298c(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m3278w = m3278w(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m3278w == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + m3278w);
        return createFromParcel;
    }

    /* renamed from: d */
    public static String m3297d(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m3278w == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + m3278w);
        return readString;
    }

    /* renamed from: e */
    public static String[] m3296e(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m3278w == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + m3278w);
        return createStringArray;
    }

    /* renamed from: f */
    public static ArrayList<String> m3295f(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m3278w == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + m3278w);
        return createStringArrayList;
    }

    /* renamed from: g */
    public static <T> T[] m3294g(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m3278w = m3278w(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m3278w == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + m3278w);
        return tArr;
    }

    /* renamed from: h */
    public static <T> ArrayList<T> m3293h(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        int m3278w = m3278w(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m3278w == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + m3278w);
        return createTypedArrayList;
    }

    /* renamed from: i */
    public static void m3292i(Parcel parcel, int i) {
        if (parcel.dataPosition() == i) {
            return;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(i);
        throw new ParseException(sb.toString(), parcel);
    }

    /* renamed from: j */
    public static int m3291j(int i) {
        return i & 65535;
    }

    /* renamed from: k */
    public static boolean m3290k(Parcel parcel, int i) {
        m3275z(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    /* renamed from: l */
    public static Boolean m3289l(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        if (m3278w == 0) {
            return null;
        }
        m3301A(parcel, i, m3278w, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    /* renamed from: m */
    public static byte m3288m(Parcel parcel, int i) {
        m3275z(parcel, i, 4);
        return (byte) parcel.readInt();
    }

    /* renamed from: n */
    public static double m3287n(Parcel parcel, int i) {
        m3275z(parcel, i, 8);
        return parcel.readDouble();
    }

    /* renamed from: o */
    public static Double m3286o(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        if (m3278w == 0) {
            return null;
        }
        m3301A(parcel, i, m3278w, 8);
        return Double.valueOf(parcel.readDouble());
    }

    /* renamed from: p */
    public static float m3285p(Parcel parcel, int i) {
        m3275z(parcel, i, 4);
        return parcel.readFloat();
    }

    /* renamed from: q */
    public static Float m3284q(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        if (m3278w == 0) {
            return null;
        }
        m3301A(parcel, i, m3278w, 4);
        return Float.valueOf(parcel.readFloat());
    }

    /* renamed from: r */
    public static int m3283r(Parcel parcel) {
        return parcel.readInt();
    }

    /* renamed from: s */
    public static IBinder m3282s(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (m3278w == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + m3278w);
        return readStrongBinder;
    }

    /* renamed from: t */
    public static int m3281t(Parcel parcel, int i) {
        m3275z(parcel, i, 4);
        return parcel.readInt();
    }

    /* renamed from: u */
    public static long m3280u(Parcel parcel, int i) {
        m3275z(parcel, i, 8);
        return parcel.readLong();
    }

    /* renamed from: v */
    public static Long m3279v(Parcel parcel, int i) {
        int m3278w = m3278w(parcel, i);
        if (m3278w == 0) {
            return null;
        }
        m3301A(parcel, i, m3278w, 8);
        return Long.valueOf(parcel.readLong());
    }

    /* renamed from: w */
    public static int m3278w(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & 65535 : parcel.readInt();
    }

    /* renamed from: x */
    public static void m3277x(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + m3278w(parcel, i));
    }

    /* renamed from: y */
    public static int m3276y(Parcel parcel) {
        int m3283r = m3283r(parcel);
        int m3278w = m3278w(parcel, m3283r);
        int dataPosition = parcel.dataPosition();
        if (m3291j(m3283r) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(m3283r));
            throw new ParseException(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = m3278w + dataPosition;
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

    /* renamed from: z */
    private static void m3275z(Parcel parcel, int i, int i2) {
        int m3278w = m3278w(parcel, i);
        if (m3278w == i2) {
            return;
        }
        String hexString = Integer.toHexString(m3278w);
        StringBuilder sb = new StringBuilder(String.valueOf(hexString).length() + 46);
        sb.append("Expected size ");
        sb.append(i2);
        sb.append(" got ");
        sb.append(m3278w);
        sb.append(" (0x");
        sb.append(hexString);
        sb.append(")");
        throw new ParseException(sb.toString(), parcel);
    }
}
