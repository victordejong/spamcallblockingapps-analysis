package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaah.class */
public final class zzaah extends zzgc implements zzaaf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaah(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final String getContent() {
        Parcel a = m3258a(2, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final void recordClick() {
        m3256b(4, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final void recordImpression() {
        m3256b(5, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final void zzn(IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzaaf
    public final String zzqs() {
        Parcel a = m3258a(1, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
