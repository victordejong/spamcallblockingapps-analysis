package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyj.class */
public final class zzyj extends zzasj {
    @Override // com.google.android.gms.internal.ads.zzasg
    public final Bundle getAdMetadata() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final String getMediationAdapterClassName() {
        return "";
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final boolean isLoaded() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(IObjectWrapper iObjectWrapper, boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzasl zzaslVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzast zzastVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzatb zzatbVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzug zzugVar, final zzaso zzasoVar) {
        zzayu.zzex("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzayk.zzyu.post(new Runnable(zzasoVar) { // from class: com.google.android.gms.internal.ads.asg

            /* renamed from: a */
            private final zzaso f8256a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8256a = zzasoVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzaso zzasoVar2 = this.f8256a;
                if (zzasoVar2 != null) {
                    try {
                        zzasoVar2.onRewardedAdFailedToLoad(1);
                    } catch (RemoteException e) {
                        zzayu.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zza(zzwv zzwvVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final void zzh(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final zzxa zzkb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzasg
    public final zzasf zzpz() {
        return null;
    }
}
