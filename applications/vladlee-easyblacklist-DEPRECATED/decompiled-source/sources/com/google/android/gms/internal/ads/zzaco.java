package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaco.class */
public final class zzaco extends zzgc implements zzacm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaco(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void destroy() {
        m3256b(4, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zza(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zza(zzacd zzacdVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzacdVar);
        m3256b(8, a);
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zzb(String str, IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        a.writeString(str);
        zzge.zza(a, iObjectWrapper);
        m3256b(1, a);
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zzc(IObjectWrapper iObjectWrapper, int i) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeInt(i);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final IObjectWrapper zzco(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        Parcel a2 = m3258a(2, a);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(a2.readStrongBinder());
        a2.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zze(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(6, a);
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zzf(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(7, a);
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zzg(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(9, a);
    }
}
