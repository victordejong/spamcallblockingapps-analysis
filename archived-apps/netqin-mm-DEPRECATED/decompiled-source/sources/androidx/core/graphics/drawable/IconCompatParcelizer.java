package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f1139a = versionedParcel.m37000a(iconCompat.f1139a, 1);
        iconCompat.f1141c = versionedParcel.m36979a(iconCompat.f1141c, 2);
        iconCompat.f1142d = versionedParcel.m36996a((VersionedParcel) iconCompat.f1142d, 3);
        iconCompat.f1143e = versionedParcel.m37000a(iconCompat.f1143e, 4);
        iconCompat.f1144f = versionedParcel.m37000a(iconCompat.f1144f, 5);
        iconCompat.f1145g = (ColorStateList) versionedParcel.m36996a((VersionedParcel) iconCompat.f1145g, 6);
        iconCompat.f1147i = versionedParcel.m36987a(iconCompat.f1147i, 7);
        iconCompat.mo32075f();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.m36980a(true, true);
        iconCompat.mo32076a(versionedParcel.m36962c());
        int i = iconCompat.f1139a;
        if (-1 != i) {
            versionedParcel.m36977b(i, 1);
        }
        byte[] bArr = iconCompat.f1141c;
        if (bArr != null) {
            versionedParcel.m36963b(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f1142d;
        if (parcelable != null) {
            versionedParcel.m36973b(parcelable, 3);
        }
        int i2 = iconCompat.f1143e;
        if (i2 != 0) {
            versionedParcel.m36977b(i2, 4);
        }
        int i3 = iconCompat.f1144f;
        if (i3 != 0) {
            versionedParcel.m36977b(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.f1145g;
        if (colorStateList != null) {
            versionedParcel.m36973b(colorStateList, 6);
        }
        String str = iconCompat.f1147i;
        if (str != null) {
            versionedParcel.m36968b(str, 7);
        }
    }
}
