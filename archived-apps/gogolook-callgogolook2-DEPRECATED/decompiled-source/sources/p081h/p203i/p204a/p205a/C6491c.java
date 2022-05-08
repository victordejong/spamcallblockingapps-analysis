package p081h.p203i.p204a.p205a;

import android.os.Parcel;
import android.os.Parcelable;
/* renamed from: h.i.a.a.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/a/c.class */
public class C6491c {
    static {
        C6491c.class.getClassLoader();
    }

    /* renamed from: a */
    public static <T extends Parcelable> T m22470a(Parcel parcel, Parcelable.Creator<T> creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return creator.createFromParcel(parcel);
    }

    /* renamed from: a */
    public static void m22469a(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
