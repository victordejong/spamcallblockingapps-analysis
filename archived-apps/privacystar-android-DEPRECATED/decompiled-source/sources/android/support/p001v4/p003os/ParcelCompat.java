package android.support.p001v4.p003os;

import android.os.Parcel;
/* renamed from: android.support.v4.os.ParcelCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/os/ParcelCompat.class */
public final class ParcelCompat {
    private ParcelCompat() {
    }

    public static boolean readBoolean(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    public static void writeBoolean(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }
}
