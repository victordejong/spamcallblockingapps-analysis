package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadd.class */
public abstract class zzadd extends zzgb implements zzade {
    public zzadd() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    public static zzade zzp(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
        return queryLocalInterface instanceof zzade ? (zzade) queryLocalInterface : new zzadg(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        String str;
        IInterface iInterface;
        boolean z;
        switch (i) {
            case 1:
                str = zzct(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 2:
                iInterface = zzcu(parcel.readString());
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 3:
                List<String> availableAssetNames = getAvailableAssetNames();
                parcel2.writeNoException();
                parcel2.writeStringList(availableAssetNames);
                return true;
            case 4:
                str = getCustomTemplateId();
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 5:
                performClick(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 7:
                iInterface = getVideoController();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 8:
                destroy();
                parcel2.writeNoException();
                return true;
            case 9:
                iInterface = zzrk();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 10:
                z = zzp(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 11:
                iInterface = zzrf();
                parcel2.writeNoException();
                zzge.zza(parcel2, iInterface);
                return true;
            case 12:
                z = zzrl();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 13:
                z = zzrm();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, z);
                return true;
            case 14:
                zzq(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzrn();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
