package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqh.class */
public final class zzdqh implements Parcelable.Creator<zzdqg> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdqg createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 2:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 3:
                    i3 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 4:
                    i4 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 5:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 6:
                    i5 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 7:
                    i6 = SafeParcelReader.m17275A(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzdqg(i, i2, i3, i4, str, i5, i6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdqg[] newArray(int i) {
        return new zzdqg[i];
    }
}
