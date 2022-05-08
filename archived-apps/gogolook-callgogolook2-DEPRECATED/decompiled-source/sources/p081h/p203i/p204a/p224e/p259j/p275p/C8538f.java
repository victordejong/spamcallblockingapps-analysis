package p081h.p203i.p204a.p224e.p259j.p275p;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.e.j.p.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/p/f.class */
public class C8538f {
    static {
        C8538f.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m17857a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m17858a(Parcel parcel, IInterface iInterface) {
        parcel.writeStrongBinder(iInterface == null ? null : iInterface.asBinder());
    }

    /* renamed from: a */
    public static void m17856a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m17855a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static boolean m17859a(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
