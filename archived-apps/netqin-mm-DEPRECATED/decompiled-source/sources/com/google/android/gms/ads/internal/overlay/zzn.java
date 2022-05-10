package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzi;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbbx;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzn.class */
public final class zzn implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        zzb zzbVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        String str2 = null;
        IBinder iBinder5 = null;
        String str3 = null;
        zzbbx zzbbxVar = null;
        String str4 = null;
        zzi zziVar = null;
        IBinder iBinder6 = null;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 2:
                    zzbVar = (zzb) SafeParcelReader.m17264a(parcel, a, zzb.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.m17236z(parcel, a);
                    break;
                case 4:
                    iBinder2 = SafeParcelReader.m17236z(parcel, a);
                    break;
                case 5:
                    iBinder3 = SafeParcelReader.m17236z(parcel, a);
                    break;
                case 6:
                    iBinder4 = SafeParcelReader.m17236z(parcel, a);
                    break;
                case 7:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 8:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 9:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 10:
                    iBinder5 = SafeParcelReader.m17236z(parcel, a);
                    break;
                case 11:
                    i = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 12:
                    i2 = SafeParcelReader.m17275A(parcel, a);
                    break;
                case 13:
                    str3 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 14:
                    zzbbxVar = (zzbbx) SafeParcelReader.m17264a(parcel, a, zzbbx.CREATOR);
                    break;
                case 15:
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
                case 16:
                    str4 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 17:
                    zziVar = (zzi) SafeParcelReader.m17264a(parcel, a, zzi.CREATOR);
                    break;
                case 18:
                    iBinder6 = SafeParcelReader.m17236z(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new AdOverlayInfoParcel(zzbVar, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, zzbbxVar, str4, zziVar, iBinder6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
