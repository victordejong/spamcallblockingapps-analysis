package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/SafeParcelWriter.class */
public class SafeParcelWriter {
    private SafeParcelWriter() {
    }

    /* renamed from: a */
    public static int m14463a(Parcel parcel) {
        return m14442v(parcel, 20293);
    }

    /* renamed from: b */
    public static void m14462b(Parcel parcel, int i) {
        m14440x(parcel, i);
    }

    /* renamed from: c */
    public static void m14461c(Parcel parcel, int i, boolean z) {
        m14439y(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: d */
    public static void m14460d(Parcel parcel, int i, Boolean bool, boolean z) {
        if (bool != null) {
            m14439y(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: e */
    public static void m14459e(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle != null) {
            int v = m14442v(parcel, i);
            parcel.writeBundle(bundle);
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: f */
    public static void m14458f(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr != null) {
            int v = m14442v(parcel, i);
            parcel.writeByteArray(bArr);
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: g */
    public static void m14457g(Parcel parcel, int i, Double d, boolean z) {
        if (d != null) {
            m14439y(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: h */
    public static void m14456h(Parcel parcel, int i, float f) {
        m14439y(parcel, i, 4);
        parcel.writeFloat(f);
    }

    /* renamed from: i */
    public static void m14455i(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            m14439y(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: j */
    public static void m14454j(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder != null) {
            int v = m14442v(parcel, i);
            parcel.writeStrongBinder(iBinder);
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: k */
    public static void m14453k(Parcel parcel, int i, int i2) {
        m14439y(parcel, i, 4);
        parcel.writeInt(i2);
    }

    /* renamed from: l */
    public static void m14452l(Parcel parcel, int i, Integer num, boolean z) {
        if (num != null) {
            m14439y(parcel, i, 4);
            parcel.writeInt(num.intValue());
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: m */
    public static void m14451m(Parcel parcel, int i, long j) {
        m14439y(parcel, i, 8);
        parcel.writeLong(j);
    }

    /* renamed from: n */
    public static void m14450n(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            m14439y(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: o */
    public static void m14449o(Parcel parcel, int i, Parcel parcel2, boolean z) {
        if (parcel2 != null) {
            int v = m14442v(parcel, i);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: p */
    public static void m14448p(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable != null) {
            int v = m14442v(parcel, i);
            parcelable.writeToParcel(parcel, i2);
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: q */
    public static void m14447q(Parcel parcel, int i, String str, boolean z) {
        if (str != null) {
            int v = m14442v(parcel, i);
            parcel.writeString(str);
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: r */
    public static void m14446r(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr != null) {
            int v = m14442v(parcel, i);
            parcel.writeStringArray(strArr);
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: s */
    public static void m14445s(Parcel parcel, int i, List<String> list, boolean z) {
        if (list != null) {
            int v = m14442v(parcel, i);
            parcel.writeStringList(list);
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: t */
    public static <T extends Parcelable> void m14444t(Parcel parcel, int i, T[] tArr, int i2, boolean z) {
        if (tArr != null) {
            int v = m14442v(parcel, i);
            parcel.writeInt(tArr.length);
            for (T t : tArr) {
                if (t == null) {
                    parcel.writeInt(0);
                } else {
                    m14441w(parcel, t, i2);
                }
            }
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: u */
    public static <T extends Parcelable> void m14443u(Parcel parcel, int i, List<T> list, boolean z) {
        if (list != null) {
            int v = m14442v(parcel, i);
            int size = list.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                T t = list.get(i2);
                if (t == null) {
                    parcel.writeInt(0);
                } else {
                    m14441w(parcel, t, 0);
                }
            }
            m14440x(parcel, v);
        } else if (z) {
            m14439y(parcel, i, 0);
        }
    }

    /* renamed from: v */
    private static int m14442v(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: w */
    private static <T extends Parcelable> void m14441w(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    /* renamed from: x */
    private static void m14440x(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    /* renamed from: y */
    private static void m14439y(Parcel parcel, int i, int i2) {
        if (i2 >= 65535) {
            parcel.writeInt(i | (-65536));
            parcel.writeInt(i2);
            return;
        }
        parcel.writeInt(i | (i2 << 16));
    }
}
