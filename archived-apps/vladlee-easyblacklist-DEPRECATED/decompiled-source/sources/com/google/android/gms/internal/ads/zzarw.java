package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarw.class */
public final class zzarw implements RewardedVideoAd {

    /* renamed from: a */
    private final zzarl f11336a;

    /* renamed from: b */
    private final Context f11337b;

    /* renamed from: c */
    private final Object f11338c = new Object();

    /* renamed from: d */
    private final zzarv f11339d = new zzarv(null);

    /* renamed from: e */
    private String f11340e;

    /* renamed from: f */
    private String f11341f;

    public zzarw(Context context, zzarl zzarlVar) {
        this.f11336a = zzarlVar == null ? new zzyl() : zzarlVar;
        this.f11337b = context.getApplicationContext();
    }

    /* renamed from: a */
    private final void m4305a(String str, zzxj zzxjVar) {
        synchronized (this.f11338c) {
            if (this.f11336a != null) {
                try {
                    this.f11336a.zza(zzuh.zza(this.f11337b, zzxjVar, str));
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy() {
        destroy(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void destroy(Context context) {
        synchronized (this.f11338c) {
            this.f11339d.setRewardedVideoAdListener(null);
            if (this.f11336a != null) {
                try {
                    this.f11336a.zzl(ObjectWrapper.wrap(context));
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final Bundle getAdMetadata() {
        synchronized (this.f11338c) {
            if (this.f11336a != null) {
                try {
                    return this.f11336a.getAdMetadata();
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
            return new Bundle();
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getCustomData() {
        String str;
        synchronized (this.f11338c) {
            str = this.f11341f;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getMediationAdapterClassName() {
        try {
            if (this.f11336a != null) {
                return this.f11336a.getMediationAdapterClassName();
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final RewardedVideoAdListener getRewardedVideoAdListener() {
        RewardedVideoAdListener rewardedVideoAdListener;
        synchronized (this.f11338c) {
            rewardedVideoAdListener = this.f11339d.getRewardedVideoAdListener();
        }
        return rewardedVideoAdListener;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final String getUserId() {
        String str;
        synchronized (this.f11338c) {
            str = this.f11340e;
        }
        return str;
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final boolean isLoaded() {
        synchronized (this.f11338c) {
            if (this.f11336a == null) {
                return false;
            }
            try {
                return this.f11336a.isLoaded();
            } catch (RemoteException e) {
                zzayu.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, AdRequest adRequest) {
        m4305a(str, adRequest.zzdg());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void loadAd(String str, PublisherAdRequest publisherAdRequest) {
        m4305a(str, publisherAdRequest.zzdg());
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause() {
        pause(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void pause(Context context) {
        synchronized (this.f11338c) {
            if (this.f11336a != null) {
                try {
                    this.f11336a.zzj(ObjectWrapper.wrap(context));
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume() {
        resume(null);
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void resume(Context context) {
        synchronized (this.f11338c) {
            if (this.f11336a != null) {
                try {
                    this.f11336a.zzk(ObjectWrapper.wrap(context));
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        synchronized (this.f11338c) {
            if (this.f11336a != null) {
                try {
                    this.f11336a.zza(new zzud(adMetadataListener));
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setCustomData(String str) {
        synchronized (this.f11338c) {
            if (this.f11336a != null) {
                try {
                    this.f11336a.setCustomData(str);
                    this.f11341f = str;
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setImmersiveMode(boolean z) {
        synchronized (this.f11338c) {
            if (this.f11336a != null) {
                try {
                    this.f11336a.setImmersiveMode(z);
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        synchronized (this.f11338c) {
            this.f11339d.setRewardedVideoAdListener(rewardedVideoAdListener);
            if (this.f11336a != null) {
                try {
                    this.f11336a.zza(this.f11339d);
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void setUserId(String str) {
        synchronized (this.f11338c) {
            this.f11340e = str;
            if (this.f11336a != null) {
                try {
                    this.f11336a.setUserId(str);
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.ads.reward.RewardedVideoAd
    public final void show() {
        synchronized (this.f11338c) {
            if (this.f11336a != null) {
                try {
                    this.f11336a.show();
                } catch (RemoteException e) {
                    zzayu.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }
}
