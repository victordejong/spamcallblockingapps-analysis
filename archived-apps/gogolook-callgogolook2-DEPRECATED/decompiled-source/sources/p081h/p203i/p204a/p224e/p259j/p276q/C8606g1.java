package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.e.j.q.g1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/g1.class */
public class C8606g1 {
    static {
        C8606g1.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m17663a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m17664a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m17662a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m17661a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    /* renamed from: a */
    public static boolean m17665a(Parcel parcel) {
        return parcel.readInt() != 0;
    }
}
