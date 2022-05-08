package p081h.p203i.p204a.p224e.p259j.p278s;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.e.j.s.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/s/f.class */
public class C8810f {
    static {
        C8810f.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m16896a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m16895a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
