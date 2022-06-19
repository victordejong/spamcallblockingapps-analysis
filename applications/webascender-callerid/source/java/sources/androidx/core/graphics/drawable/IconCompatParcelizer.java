package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/drawable/IconCompatParcelizer.class */
public class IconCompatParcelizer {
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.a = versionedParcel.m4657p(iconCompat.a, 1);
        iconCompat.c = versionedParcel.m4663j(iconCompat.c, 2);
        iconCompat.d = versionedParcel.m4655r(iconCompat.d, 3);
        iconCompat.e = versionedParcel.m4657p(iconCompat.e, 4);
        iconCompat.f = versionedParcel.m4657p(iconCompat.f, 5);
        iconCompat.g = (ColorStateList) versionedParcel.m4655r(iconCompat.g, 6);
        iconCompat.i = versionedParcel.m4653t(iconCompat.i, 7);
        iconCompat.l();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.m4649x(true, true);
        iconCompat.m(versionedParcel.m4667f());
        int i = iconCompat.a;
        if (-1 != i) {
            versionedParcel.m4681F(i, 1);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            versionedParcel.m4685B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            versionedParcel.m4679H(parcelable, 3);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            versionedParcel.m4681F(i2, 4);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            versionedParcel.m4681F(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            versionedParcel.m4679H(colorStateList, 6);
        }
        String str = iconCompat.i;
        if (str != null) {
            versionedParcel.m4677J(str, 7);
        }
    }
}
