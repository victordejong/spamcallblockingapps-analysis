package com.google.android.gms.internal.ads;

import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzvl.class */
public abstract class zzvl extends zzgb implements zzvm {
    public zzvl() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzgb
    /* renamed from: a */
    protected final boolean mo2992a(int i, Parcel parcel, Parcel parcel2) {
        String str;
        if (i != 1) {
            if (i == 2) {
                str = getMediationAdapterClassName();
            } else if (i == 3) {
                boolean isLoading = isLoading();
                parcel2.writeNoException();
                zzge.writeBoolean(parcel2, isLoading);
                return true;
            } else if (i == 4) {
                str = zzka();
            } else if (i != 5) {
                return false;
            } else {
                zza((zzug) zzge.zza(parcel, zzug.CREATOR), parcel.readInt());
            }
            parcel2.writeNoException();
            parcel2.writeString(str);
            return true;
        }
        zzb((zzug) zzge.zza(parcel, zzug.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
