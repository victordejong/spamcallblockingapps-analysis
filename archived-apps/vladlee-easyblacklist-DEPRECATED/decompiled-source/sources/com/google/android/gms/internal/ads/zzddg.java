package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddg.class */
public final class zzddg extends zzgc implements zzddf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzddg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.zzddf
    public final String getVersion() {
        Parcel a = m3258a(6, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzddf
    public final IObjectWrapper zza(String str, IObjectWrapper iObjectWrapper, String str2, String str3, String str4, String str5) {
        Parcel a = m3259a();
        a.writeString(str);
        zzge.zza(a, iObjectWrapper);
        a.writeString(str2);
        a.writeString(str3);
        a.writeString(str4);
        a.writeString(str5);
        Parcel a2 = m3258a(9, a);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a2.readStrongBinder());
        a2.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzddf
    public final void zzab(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(4, a);
    }

    @Override // com.google.android.gms.internal.ads.zzddf
    public final void zzac(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzddf
    public final boolean zzas(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        Parcel a2 = m3258a(2, a);
        boolean zza = zzge.zza(a2);
        a2.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzddf
    public final void zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, iObjectWrapper2);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzddf
    public final void zzc(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, iObjectWrapper2);
        m3256b(8, a);
    }
}
