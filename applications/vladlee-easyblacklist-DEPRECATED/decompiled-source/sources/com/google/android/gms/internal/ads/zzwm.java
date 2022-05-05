package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwm.class */
public final class zzwm extends zzgc implements zzwk {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzwm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final String getVersionString() {
        Parcel a = m3258a(9, m3259a());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void initialize() {
        m3256b(1, m3259a());
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void setAppMuted(boolean z) {
        Parcel a = m3259a();
        zzge.writeBoolean(a, z);
        m3256b(4, a);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void setAppVolume(float f) {
        Parcel a = m3259a();
        a.writeFloat(f);
        m3256b(2, a);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(zzagu zzaguVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzaguVar);
        m3256b(12, a);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(zzalc zzalcVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzalcVar);
        m3256b(11, a);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(zzyq zzyqVar) {
        Parcel a = m3259a();
        zzge.zza(a, zzyqVar);
        m3256b(14, a);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(String str, IObjectWrapper iObjectWrapper) {
        Parcel a = m3259a();
        a.writeString(str);
        zzge.zza(a, iObjectWrapper);
        m3256b(6, a);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zzb(IObjectWrapper iObjectWrapper, String str) {
        Parcel a = m3259a();
        zzge.zza(a, iObjectWrapper);
        a.writeString(str);
        m3256b(5, a);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zzcd(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(3, a);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zzce(String str) {
        Parcel a = m3259a();
        a.writeString(str);
        m3256b(10, a);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float zzpe() {
        Parcel a = m3258a(7, m3259a());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean zzpf() {
        Parcel a = m3258a(8, m3259a());
        boolean zza = zzge.zza(a);
        a.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final List<zzagn> zzpg() {
        Parcel a = m3258a(13, m3259a());
        ArrayList createTypedArrayList = a.createTypedArrayList(zzagn.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }
}
