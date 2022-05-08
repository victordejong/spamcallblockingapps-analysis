package p081h.p203i.p204a.p224e.p259j.p265f;

import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.e.j.f.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/f/c.class */
public class C7531c {
    static {
        C7531c.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m20389a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m20390a(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: a */
    public static void m20388a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }

    /* renamed from: a */
    public static void m20387a(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }
}
