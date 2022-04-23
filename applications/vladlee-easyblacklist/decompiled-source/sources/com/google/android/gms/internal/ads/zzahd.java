package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahd.class */
public final class zzahd extends zzgc implements zzahb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzahb
    public final void destroy() {
        m3256b(4, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzahb
    public final zzxb getVideoController() {
        Parcel a = m3258a(3, m3259a());
        zzxb zzj = zzxe.zzj(a.readStrongBinder());
        a.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzahb
    public final void zza(IObjectWrapper iObjectWrapper, zzahg zzahgVar) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        zzge.zza(a, zzahgVar);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzahb
    public final void zzr(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(6, a);
    }
}
