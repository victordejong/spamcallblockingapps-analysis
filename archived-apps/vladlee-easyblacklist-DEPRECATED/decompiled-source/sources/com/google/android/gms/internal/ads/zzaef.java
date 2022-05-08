package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaef.class */
public abstract class zzaef extends zzgb implements zzaeg {
    public zzaef() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        String str;
        List list;
        IInterface iInterface;
        boolean z;
        zzaeb zzaebVar;
        switch (i) {
            case 2:
                str = getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 3:
                list = getImages();
                parcel2.writeNoException();
                parcel2.writeList(list);
                return true;
            case 4:
                str = getBody();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 5:
                iInterface = zzrg();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 6:
                str = getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 7:
                str = getAdvertiser();
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
                iInterface = getVideoController();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 12:
                str = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 13:
                destroy();
                parcel2.writeNoException();
                return true;
            case 14:
                iInterface = zzrh();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 15:
                performClick((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                z = recordImpression((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 17:
                reportTouchEvent((Bundle) zzge.zza(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                iInterface = zzrf();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 19:
                iInterface = zzri();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 20:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                zzge.zzb(parcel2, extras);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzaebVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    zzaebVar = queryLocalInterface instanceof zzaeb ? (zzaeb) queryLocalInterface : new zzaed(readStrongBinder);
                }
                zza(zzaebVar);
                parcel2.writeNoException();
                return true;
            case 22:
                cancelUnconfirmedClick();
                parcel2.writeNoException();
                return true;
            case 23:
                list = getMuteThisAdReasons();
                parcel2.writeNoException();
                parcel2.writeList(list);
                return true;
            case 24:
                z = isCustomMuteThisAdEnabled();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 25:
                zza(zzwu.zzg(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                zza(zzwq.zzf(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 27:
                zzrp();
                parcel2.writeNoException();
                return true;
            case 28:
                recordCustomClickGesture();
                parcel2.writeNoException();
                return true;
            case 29:
                iInterface = zzrq();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 30:
                z = isCustomClickGestureEnabled();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 31:
                iInterface = zzkb();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            default:
                return false;
        }
    }
}
