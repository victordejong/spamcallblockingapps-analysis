package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacv.class */
public abstract class zzacv extends zzgb implements zzacw {
    public zzacv() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        IInterface iInterface;
        String str;
        switch (i) {
            case 2:
                iInterface = zzrf();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 3:
                str = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 4:
                List images = getImages();
                parcel2.writeNoException();
                parcel2.writeList(images);
                return true;
            case 5:
                str = getBody();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 6:
                iInterface = zzrg();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 7:
                str = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 8:
                double starRating = getStarRating();
                parcel2.writeNoException();
                parcel2.writeDouble(starRating);
                return true;
            case 9:
                str = getStore();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 10:
                str = getPrice();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 11:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzge.zzb(parcel2, extras);
                return true;
            case 12:
                destroy();
                parcel2.writeNoException();
                return true;
            case 13:
                iInterface = getVideoController();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 14:
                performClick((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean recordImpression = recordImpression((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, recordImpression);
                return true;
            case 16:
                reportTouchEvent((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                iInterface = zzrh();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 18:
                iInterface = zzri();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 19:
                str = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            default:
                return false;
        }
    }
}
