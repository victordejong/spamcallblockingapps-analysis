package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.safeparcel.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/safeparcel/b.class */
public class C0934b {
    /* renamed from: a */
    public static int m3274a(Parcel parcel) {
        return m3253v(parcel, 20293);
    }

    /* renamed from: b */
    public static void m3273b(Parcel parcel, int i) {
        m3250y(parcel, i);
    }

    /* renamed from: c */
    public static void m3272c(Parcel parcel, int i, boolean z) {
        m3252w(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: d */
    public static void m3271d(Parcel parcel, int i, Boolean bool, boolean z) {
        if (bool != null) {
            m3252w(parcel, i, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (!z) {
        } else {
            m3252w(parcel, i, 0);
        }
    }

    /* renamed from: e */
    public static void m3270e(Parcel parcel, int i, Bundle bundle, boolean z) {
        if (bundle == null) {
            if (!z) {
                return;
            }
            m3252w(parcel, i, 0);
            return;
        }
        int m3253v = m3253v(parcel, i);
        parcel.writeBundle(bundle);
        m3250y(parcel, m3253v);
    }

    /* renamed from: f */
    public static void m3269f(Parcel parcel, int i, byte b) {
        m3252w(parcel, i, 4);
        parcel.writeInt(b);
    }

    /* renamed from: g */
    public static void m3268g(Parcel parcel, int i, byte[] bArr, boolean z) {
        if (bArr == null) {
            if (!z) {
                return;
            }
            m3252w(parcel, i, 0);
            return;
        }
        int m3253v = m3253v(parcel, i);
        parcel.writeByteArray(bArr);
        m3250y(parcel, m3253v);
    }

    /* renamed from: h */
    public static void m3267h(Parcel parcel, int i, double d) {
        m3252w(parcel, i, 8);
        parcel.writeDouble(d);
    }

    /* renamed from: i */
    public static void m3266i(Parcel parcel, int i, Double d, boolean z) {
        if (d != null) {
            m3252w(parcel, i, 8);
            parcel.writeDouble(d.doubleValue());
        } else if (!z) {
        } else {
            m3252w(parcel, i, 0);
        }
    }

    /* renamed from: j */
    public static void m3265j(Parcel parcel, int i, float f) {
        m3252w(parcel, i, 4);
        parcel.writeFloat(f);
    }

    /* renamed from: k */
    public static void m3264k(Parcel parcel, int i, Float f, boolean z) {
        if (f != null) {
            m3252w(parcel, i, 4);
            parcel.writeFloat(f.floatValue());
        } else if (!z) {
        } else {
            m3252w(parcel, i, 0);
        }
    }

    /* renamed from: l */
    public static void m3263l(Parcel parcel, int i, IBinder iBinder, boolean z) {
        if (iBinder == null) {
            if (!z) {
                return;
            }
            m3252w(parcel, i, 0);
            return;
        }
        int m3253v = m3253v(parcel, i);
        parcel.writeStrongBinder(iBinder);
        m3250y(parcel, m3253v);
    }

    /* renamed from: m */
    public static void m3262m(Parcel parcel, int i, int i2) {
        m3252w(parcel, i, 4);
        parcel.writeInt(i2);
    }

    /* renamed from: n */
    public static void m3261n(Parcel parcel, int i, long j) {
        m3252w(parcel, i, 8);
        parcel.writeLong(j);
    }

    /* renamed from: o */
    public static void m3260o(Parcel parcel, int i, Long l, boolean z) {
        if (l != null) {
            m3252w(parcel, i, 8);
            parcel.writeLong(l.longValue());
        } else if (!z) {
        } else {
            m3252w(parcel, i, 0);
        }
    }

    /* renamed from: p */
    public static void m3259p(Parcel parcel, int i, Parcelable parcelable, int i2, boolean z) {
        if (parcelable == null) {
            if (!z) {
                return;
            }
            m3252w(parcel, i, 0);
            return;
        }
        int m3253v = m3253v(parcel, i);
        parcelable.writeToParcel(parcel, i2);
        m3250y(parcel, m3253v);
    }

    /* renamed from: q */
    public static void m3258q(Parcel parcel, int i, String str, boolean z) {
        if (str == null) {
            if (!z) {
                return;
            }
            m3252w(parcel, i, 0);
            return;
        }
        int m3253v = m3253v(parcel, i);
        parcel.writeString(str);
        m3250y(parcel, m3253v);
    }

    /* renamed from: r */
    public static void m3257r(Parcel parcel, int i, String[] strArr, boolean z) {
        if (strArr == null) {
            if (!z) {
                return;
            }
            m3252w(parcel, i, 0);
            return;
        }
        int m3253v = m3253v(parcel, i);
        parcel.writeStringArray(strArr);
        m3250y(parcel, m3253v);
    }

    /* renamed from: s */
    public static void m3256s(Parcel parcel, int i, List<String> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m3252w(parcel, i, 0);
            return;
        }
        int m3253v = m3253v(parcel, i);
        parcel.writeStringList(list);
        m3250y(parcel, m3253v);
    }

    /* renamed from: t */
    public static <T extends Parcelable> void m3255t(Parcel parcel, int i, T[] tArr, int i2, boolean z) {
        if (tArr == null) {
            if (!z) {
                return;
            }
            m3252w(parcel, i, 0);
            return;
        }
        int m3253v = m3253v(parcel, i);
        parcel.writeInt(tArr.length);
        for (T t : tArr) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m3251x(parcel, t, i2);
            }
        }
        m3250y(parcel, m3253v);
    }

    /* renamed from: u */
    public static <T extends Parcelable> void m3254u(Parcel parcel, int i, List<T> list, boolean z) {
        if (list == null) {
            if (!z) {
                return;
            }
            m3252w(parcel, i, 0);
            return;
        }
        int m3253v = m3253v(parcel, i);
        int size = list.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            T t = list.get(i2);
            if (t == null) {
                parcel.writeInt(0);
            } else {
                m3251x(parcel, t, 0);
            }
        }
        m3250y(parcel, m3253v);
    }

    /* renamed from: v */
    private static int m3253v(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: w */
    private static void m3252w(Parcel parcel, int i, int i2) {
        if (i2 < 65535) {
            parcel.writeInt(i | (i2 << 16));
            return;
        }
        parcel.writeInt(i | (-65536));
        parcel.writeInt(i2);
    }

    /* renamed from: x */
    private static <T extends Parcelable> void m3251x(Parcel parcel, T t, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.writeInt(1);
        int dataPosition2 = parcel.dataPosition();
        t.writeToParcel(parcel, i);
        int dataPosition3 = parcel.dataPosition();
        parcel.setDataPosition(dataPosition);
        parcel.writeInt(dataPosition3 - dataPosition2);
        parcel.setDataPosition(dataPosition3);
    }

    /* renamed from: y */
    private static void m3250y(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }
}
