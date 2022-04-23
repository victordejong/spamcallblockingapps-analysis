package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacz.class */
public abstract class zzacz extends zzgb implements zzada {
    public zzacz() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
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
                iInterface = zzrj();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 7:
                str = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 8:
                str = getAdvertiser();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 9:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzge.zzb(parcel2, extras);
                return true;
            case 10:
                destroy();
                parcel2.writeNoException();
                return true;
            case 11:
                iInterface = getVideoController();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 12:
                performClick((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean recordImpression = recordImpression((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, recordImpression);
                return true;
            case 14:
                reportTouchEvent((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                iInterface = zzrh();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 16:
                iInterface = zzri();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 17:
                str = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            default:
                return false;
        }
    }
}
