package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwj.class */
public abstract class zzwj extends zzgb implements zzwk {
    public zzwj() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                initialize();
                break;
            case 2:
                setAppVolume(parcel.readFloat());
                break;
            case 3:
                zzcd(parcel.readString());
                break;
            case 4:
                setAppMuted(zzge.zza(parcel));
                break;
            case 5:
                zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                break;
            case 6:
                zza(parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 7:
                float zzpe = zzpe();
                parcel2.writeNoException();
                parcel2.writeFloat(zzpe);
                return true;
            case 8:
                boolean zzpf = zzpf();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, zzpf);
                return true;
            case 9:
                String versionString = getVersionString();
                parcel2.writeNoException();
                parcel2.writeString(versionString);
                return true;
            case 10:
                zzce(parcel.readString());
                break;
            case 11:
                zza(zzalb.zzaa(parcel.readStrongBinder()));
                break;
            case 12:
                zza(zzagt.zzy(parcel.readStrongBinder()));
                break;
            case 13:
                List<zzagn> zzpg = zzpg();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzpg);
                return true;
            case 14:
                zza((zzyq) zzge.zza(parcel, zzyq.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
