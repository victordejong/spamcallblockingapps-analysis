package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcot.class */
public final class zzcot {

    /* renamed from: a */
    private final zzcox<zzbmd> f13483a;

    /* renamed from: b */
    private final String f13484b;

    /* renamed from: c */
    private zzxa f13485c;

    /* renamed from: d */
    private boolean f13486d = false;

    public zzcot(zzcox<zzbmd> zzcoxVar, String str) {
        this.f13483a = zzcoxVar;
        this.f13484b = str;
    }

    public final String getMediationAdapterClassName() {
        synchronized (this) {
            try {
                if (this.f13485c == null) {
                    return null;
                }
                return this.f13485c.getMediationAdapterClassName();
            } catch (RemoteException e) {
                zzavs.zze("#007 Could not call remote method.", e);
                return null;
            }
        }
    }

    public final boolean isLoading() {
        boolean isLoading;
        synchronized (this) {
            isLoading = this.f13483a.isLoading();
        }
        return isLoading;
    }

    public final void zza(zzug zzugVar, int i) {
        synchronized (this) {
            this.f13485c = null;
            this.f13486d = this.f13483a.zza(zzugVar, this.f13484b, new zzcpc(i), new C2299ve(this));
        }
    }

    public final String zzka() {
        synchronized (this) {
            try {
                if (this.f13485c == null) {
                    return null;
                }
                return this.f13485c.getMediationAdapterClassName();
            } catch (RemoteException e) {
                zzavs.zze("#007 Could not call remote method.", e);
                return null;
            }
        }
    }
}
