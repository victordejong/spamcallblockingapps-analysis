package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;
import com.google.android.gms.ads.rewarded.ServerSideVerificationOptions;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasv.class */
public final class zzasv {

    /* renamed from: a */
    private final zzasg f11344a;

    /* renamed from: b */
    private final Context f11345b;

    public zzasv(Context context, String str) {
        this.f11345b = context.getApplicationContext();
        this.f11344a = zzve.zzov().zzc(context, str, new zzakz());
    }

    public final Bundle getAdMetadata() {
        try {
            return this.f11344a.getAdMetadata();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return new Bundle();
        }
    }

    public final String getMediationAdapterClassName() {
        try {
            return this.f11344a.getMediationAdapterClassName();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return "";
        }
    }

    public final RewardItem getRewardItem() {
        try {
            zzasf zzpz = this.f11344a.zzpz();
            if (zzpz == null) {
                return null;
            }
            return new zzasu(zzpz);
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final boolean isLoaded() {
        try {
            return this.f11344a.isLoaded();
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void setOnAdMetadataChangedListener(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        try {
            this.f11344a.zza(new zzyn(onAdMetadataChangedListener));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setServerSideVerificationOptions(ServerSideVerificationOptions serverSideVerificationOptions) {
        try {
            this.f11344a.zza(new zzatb(serverSideVerificationOptions));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback) {
        try {
            this.f11344a.zza(new zzasx(rewardedAdCallback));
            this.f11344a.zzh(ObjectWrapper.wrap(activity));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void show(Activity activity, RewardedAdCallback rewardedAdCallback, boolean z) {
        try {
            this.f11344a.zza(new zzasx(rewardedAdCallback));
            this.f11344a.zza(ObjectWrapper.wrap(activity), z);
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }

    public final void zza(zzxj zzxjVar, RewardedAdLoadCallback rewardedAdLoadCallback) {
        try {
            this.f11344a.zza(zzuh.zza(this.f11345b, zzxjVar), new zzasy(rewardedAdLoadCallback));
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
        }
    }
}
