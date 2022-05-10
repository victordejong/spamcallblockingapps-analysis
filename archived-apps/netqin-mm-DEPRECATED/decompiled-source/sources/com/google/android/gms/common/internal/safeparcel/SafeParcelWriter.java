package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelWriter.class */
public class SafeParcelWriter {
    /* renamed from: a */
    public static int m17235a(Parcel parcel) {
        return m17211b(parcel, 20293);
    }

    /* renamed from: a */
    public static void m17234a(Parcel parcel, int i) {
        m17208c(parcel, i);
    }

    /* renamed from: a */
    public static void m17233a(Parcel parcel, int i, double d) {
        m17210b(parcel, i, 8);
        parcel.writeDouble(d);
    }

    /* renamed from: a */
    public static void m17232a(Parcel parcel, int i, float f) {
        m17210b(parcel, i, 4);
        parcel.writeFloat(f);
    }

    /* renamed from: a */
    public static void m17231a(Parcel parcel, int i, int i2) {
        m17210b(parcel, i, 4);
        parcel.writeInt(i2);
    }

    /* renamed from: a */
    public static void m17230a(Parcel parcel, int i, long j) {
        m17210b(parcel, i, 8);
        parcel.writeLong(j);
    }

    /* renamed from: a */
    public static void m17229a(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle != null) {
            int b = m17211b(parcel, i);
            parcel.writeBundle(bundle);
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17228a(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder != null) {
            int b = m17211b(parcel, i);
            parcel.writeStrongBinder(iBinder);
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17227a(Parcel parcel, int i, Parcel parcel2, boolean z) {
        if (parcel2 != null) {
            int b = m17211b(parcel, i);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17226a(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable != null) {
            int b = m17211b(parcel, i);
            parcelable.writeToParcel(parcel, i2);
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17225a(Parcel parcel, int i, Boolean bool, boolean z) {
        if (bool != null) {
            m17210b(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17224a(Parcel parcel, int i, Double d, boolean z) {
        if (d != null) {
            m17210b(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17223a(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            m17210b(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17222a(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            m17210b(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17221a(Parcel parcel, int i, String str, boolean z) {
        if (str != null) {
            int b = m17211b(parcel, i);
            parcel.writeString(str);
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17220a(Parcel parcel, int i, List<Integer> list, boolean z) {
        if (list != null) {
            int b = m17211b(parcel, i);
            int size = list.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeInt(list.get(i2).intValue());
            }
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17219a(Parcel parcel, int i, short s) {
        m17210b(parcel, i, 4);
        parcel.writeInt(s);
    }

    /* renamed from: a */
    public static void m17218a(Parcel parcel, int i, boolean z) {
        m17210b(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static void m17217a(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr != null) {
            int b = m17211b(parcel, i);
            parcel.writeByteArray(bArr);
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17216a(Parcel parcel, int i, int[] iArr, boolean z) {
        if (iArr != null) {
            int b = m17211b(parcel, i);
            parcel.writeIntArray(iArr);
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static <T extends Parcelable> void m17215a(Parcel parcel, int i, T[] tArr, int i2, boolean z) {
        if (tArr != null) {
            int b = m17211b(parcel, i);
            parcel.writeInt(tArr.length);
            for (T t : tArr) {
                if (t == null) {
                    parcel.writeInt(0);
                } else {
                    m17212a(parcel, t, i2);
                }
            }
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17214a(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr != null) {
            int b = m17211b(parcel, i);
            parcel.writeStringArray(strArr);
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static void m17213a(Parcel parcel, int i, byte[][] bArr, boolean z) {
        if (bArr != null) {
            int b = m17211b(parcel, i);
            parcel.writeInt(bArr.length);
            for (byte[] bArr2 : bArr) {
                parcel.writeByteArray(bArr2);
            }
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: a */
    public static <T extends Parcelable> void m17212a(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    /* renamed from: b */
    public static int m17211b(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: b */
    public static void m17210b(Parcel parcel, int i, int i2) {
        if (i2 >= 65535) {
            parcel.writeInt(i | (-65536));
            parcel.writeInt(i2);
            return;
        }
        parcel.writeInt(i | (i2 << 16));
    }

    /* renamed from: b */
    public static void m17209b(Parcel parcel, int i, List<String> list, boolean z) {
        if (list != null) {
            int b = m17211b(parcel, i);
            parcel.writeStringList(list);
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }

    /* renamed from: c */
    public static void m17208c(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: c */
    public static <T extends Parcelable> void m17207c(Parcel parcel, int i, List<T> list, boolean z) {
        if (list != null) {
            int b = m17211b(parcel, i);
            int size = list.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                T t = list.get(i2);
                if (t == null) {
                    parcel.writeInt(0);
                } else {
                    m17212a(parcel, t, 0);
                }
            }
            m17208c(parcel, b);
        } else if (z) {
            m17210b(parcel, i, 0);
        }
    }
}
