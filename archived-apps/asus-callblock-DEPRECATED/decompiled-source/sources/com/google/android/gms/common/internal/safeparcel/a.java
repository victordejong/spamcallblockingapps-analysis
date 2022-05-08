package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/a.class */
public final class a {

    /* renamed from: com.google.android.gms.common.internal.safeparcel.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/a$a.class */
    public static final class C0116a extends RuntimeException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C0116a(java.lang.String r7, android.os.Parcel r8) {
            /*
                r6 = this;
                r0 = r8
                int r0 = r0.dataPosition()
                r9 = r0
                r0 = r8
                int r0 = r0.dataSize()
                r10 = r0
                r0 = r6
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r2 = r1
                r3 = r7
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r3 = r3.length()
                r4 = 41
                int r3 = r3 + r4
                r2.<init>(r3)
                r2 = r7
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = " Parcel: pos="
                java.lang.StringBuilder r1 = r1.append(r2)
                r2 = r9
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r2 = " size="
                java.lang.StringBuilder r1 = r1.append(r2)
                r2 = r10
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.safeparcel.a.C0116a.<init>(java.lang.String, android.os.Parcel):void");
        }
    }

    public static int a(Parcel parcel) {
        int readInt = parcel.readInt();
        int a2 = a(parcel, readInt);
        int dataPosition = parcel.dataPosition();
        if ((65535 & readInt) != 20293) {
            String valueOf = String.valueOf(Integer.toHexString(readInt));
            throw new C0116a(valueOf.length() != 0 ? "Expected object header. Got 0x".concat(valueOf) : new String("Expected object header. Got 0x"), parcel);
        }
        int i = dataPosition + a2;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        throw new C0116a(new StringBuilder(54).append("Size read is invalid start=").append(dataPosition).append(" end=").append(i).toString(), parcel);
    }

    public static int a(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & 65535 : parcel.readInt();
    }

    public static <T extends Parcelable> T a(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        T createFromParcel;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            createFromParcel = null;
        } else {
            createFromParcel = creator.createFromParcel(parcel);
            parcel.setDataPosition(a2 + dataPosition);
        }
        return createFromParcel;
    }

    private static void a(Parcel parcel, int i, int i2) {
        int a2 = a(parcel, i);
        if (a2 != i2) {
            String valueOf = String.valueOf(Integer.toHexString(a2));
            throw new C0116a(new StringBuilder(String.valueOf(valueOf).length() + 46).append("Expected size ").append(i2).append(" got ").append(a2).append(" (0x").append(valueOf).append(")").toString(), parcel);
        }
    }

    public static void b(Parcel parcel, int i) {
        parcel.setDataPosition(a(parcel, i) + parcel.dataPosition());
    }

    public static <T> T[] b(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        T[] tArr;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            tArr = null;
        } else {
            tArr = (T[]) parcel.createTypedArray(creator);
            parcel.setDataPosition(a2 + dataPosition);
        }
        return tArr;
    }

    public static <T> ArrayList<T> c(Parcel parcel, int i, Parcelable.Creator<T> creator) {
        ArrayList<T> createTypedArrayList;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            createTypedArrayList = null;
        } else {
            createTypedArrayList = parcel.createTypedArrayList(creator);
            parcel.setDataPosition(a2 + dataPosition);
        }
        return createTypedArrayList;
    }

    public static boolean c(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static int d(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt();
    }

    public static Integer e(Parcel parcel, int i) {
        Integer valueOf;
        int a2 = a(parcel, i);
        if (a2 == 0) {
            valueOf = null;
        } else if (a2 != 4) {
            String valueOf2 = String.valueOf(Integer.toHexString(a2));
            throw new C0116a(new StringBuilder(String.valueOf(valueOf2).length() + 46).append("Expected size 4 got ").append(a2).append(" (0x").append(valueOf2).append(")").toString(), parcel);
        } else {
            valueOf = Integer.valueOf(parcel.readInt());
        }
        return valueOf;
    }

    public static long f(Parcel parcel, int i) {
        a(parcel, i, 8);
        return parcel.readLong();
    }

    public static BigInteger g(Parcel parcel, int i) {
        BigInteger bigInteger;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            bigInteger = null;
        } else {
            byte[] createByteArray = parcel.createByteArray();
            parcel.setDataPosition(a2 + dataPosition);
            bigInteger = new BigInteger(createByteArray);
        }
        return bigInteger;
    }

    public static float h(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readFloat();
    }

    public static double i(Parcel parcel, int i) {
        a(parcel, i, 8);
        return parcel.readDouble();
    }

    public static BigDecimal j(Parcel parcel, int i) {
        BigDecimal bigDecimal;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            bigDecimal = null;
        } else {
            byte[] createByteArray = parcel.createByteArray();
            int readInt = parcel.readInt();
            parcel.setDataPosition(a2 + dataPosition);
            bigDecimal = new BigDecimal(new BigInteger(createByteArray), readInt);
        }
        return bigDecimal;
    }

    public static String k(Parcel parcel, int i) {
        String readString;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            readString = null;
        } else {
            readString = parcel.readString();
            parcel.setDataPosition(a2 + dataPosition);
        }
        return readString;
    }

    public static IBinder l(Parcel parcel, int i) {
        IBinder readStrongBinder;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            readStrongBinder = null;
        } else {
            readStrongBinder = parcel.readStrongBinder();
            parcel.setDataPosition(a2 + dataPosition);
        }
        return readStrongBinder;
    }

    public static Bundle m(Parcel parcel, int i) {
        Bundle readBundle;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            readBundle = null;
        } else {
            readBundle = parcel.readBundle();
            parcel.setDataPosition(a2 + dataPosition);
        }
        return readBundle;
    }

    public static byte[] n(Parcel parcel, int i) {
        byte[] createByteArray;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            createByteArray = null;
        } else {
            createByteArray = parcel.createByteArray();
            parcel.setDataPosition(a2 + dataPosition);
        }
        return createByteArray;
    }

    public static int[] o(Parcel parcel, int i) {
        int[] createIntArray;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            createIntArray = null;
        } else {
            createIntArray = parcel.createIntArray();
            parcel.setDataPosition(a2 + dataPosition);
        }
        return createIntArray;
    }

    public static BigDecimal[] p(Parcel parcel, int i) {
        BigDecimal[] bigDecimalArr;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            bigDecimalArr = null;
        } else {
            int readInt = parcel.readInt();
            BigDecimal[] bigDecimalArr2 = new BigDecimal[readInt];
            for (int i2 = 0; i2 < readInt; i2++) {
                byte[] createByteArray = parcel.createByteArray();
                bigDecimalArr2[i2] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
            }
            parcel.setDataPosition(dataPosition + a2);
            bigDecimalArr = bigDecimalArr2;
        }
        return bigDecimalArr;
    }

    public static String[] q(Parcel parcel, int i) {
        String[] createStringArray;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            createStringArray = null;
        } else {
            createStringArray = parcel.createStringArray();
            parcel.setDataPosition(a2 + dataPosition);
        }
        return createStringArray;
    }

    public static Parcel r(Parcel parcel, int i) {
        Parcel parcel2;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 == 0) {
            parcel2 = null;
        } else {
            Parcel obtain = Parcel.obtain();
            obtain.appendFrom(parcel, dataPosition, a2);
            parcel.setDataPosition(a2 + dataPosition);
            parcel2 = obtain;
        }
        return parcel2;
    }

    public static Parcel[] s(Parcel parcel, int i) {
        Parcel[] parcelArr = null;
        int a2 = a(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (a2 != 0) {
            int readInt = parcel.readInt();
            Parcel[] parcelArr2 = new Parcel[readInt];
            for (int i2 = 0; i2 < readInt; i2++) {
                int readInt2 = parcel.readInt();
                if (readInt2 != 0) {
                    int dataPosition2 = parcel.dataPosition();
                    Parcel obtain = Parcel.obtain();
                    obtain.appendFrom(parcel, dataPosition2, readInt2);
                    parcelArr2[i2] = obtain;
                    parcel.setDataPosition(readInt2 + dataPosition2);
                } else {
                    parcelArr2[i2] = null;
                }
            }
            parcel.setDataPosition(dataPosition + a2);
            parcelArr = parcelArr2;
        }
        return parcelArr;
    }
}
