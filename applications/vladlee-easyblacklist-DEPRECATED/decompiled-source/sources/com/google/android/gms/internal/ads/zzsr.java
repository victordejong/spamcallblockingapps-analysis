package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsr.class */
public final class zzsr {

    /* renamed from: a */
    zzgf f15463a;

    /* renamed from: b */
    boolean f15464b;

    public zzsr() {
    }

    public zzsr(Context context) {
        zzzn.initialize(context);
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcnw)).booleanValue()) {
            try {
                this.f15463a = (zzgf) zzayx.zza(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", aqq.f8181a);
                ObjectWrapper.wrap(context);
                this.f15463a.zza(ObjectWrapper.wrap(context), "GMA_SDK");
                this.f15464b = true;
            } catch (RemoteException | zzayz | NullPointerException e) {
                zzayu.zzea("Cannot dynamite load clearcut");
            }
        }
    }

    public zzsr(Context context, String str, String str2) {
        zzzn.initialize(context);
        try {
            this.f15463a = (zzgf) zzayx.zza(context, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", aqr.f8182a);
            ObjectWrapper.wrap(context);
            this.f15463a.zza(ObjectWrapper.wrap(context), str, null);
            this.f15464b = true;
        } catch (RemoteException | zzayz | NullPointerException e) {
            zzayu.zzea("Cannot dynamite load clearcut");
        }
    }

    public final zzsv zzf(byte[] bArr) {
        return new zzsv(this, bArr, (byte) 0);
    }
}
