package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxn.class */
public final class zzxn {

    /* renamed from: a */
    private final zzakz f15664a;

    /* renamed from: b */
    private final Context f15665b;

    /* renamed from: c */
    private final zzuh f15666c;

    /* renamed from: d */
    private AdListener f15667d;

    /* renamed from: e */
    private zzty f15668e;

    /* renamed from: f */
    private zzvu f15669f;

    /* renamed from: g */
    private String f15670g;

    /* renamed from: h */
    private AdMetadataListener f15671h;

    /* renamed from: i */
    private AppEventListener f15672i;

    /* renamed from: j */
    private OnCustomRenderedAdLoadedListener f15673j;

    /* renamed from: k */
    private RewardedVideoAdListener f15674k;

    /* renamed from: l */
    private boolean f15675l;

    /* renamed from: m */
    private boolean f15676m;

    public zzxn(Context context) {
        this(context, zzuh.zzccn);
    }

    public zzxn(Context context, PublisherInterstitialAd publisherInterstitialAd) {
        this(context, zzuh.zzccn);
    }

    private zzxn(Context context, zzuh zzuhVar) {
        this.f15664a = new zzakz();
        this.f15665b = context;
        this.f15666c = zzuhVar;
    }

    /* renamed from: a */
    private final void m2969a(String str) {
        if (this.f15669f == null) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 63);
            sb.append("The ad unit ID must be set on InterstitialAd before ");
            sb.append(str);
            sb.append(" is called.");
            throw new IllegalStateException(sb.toString());
        }
    }

    public final AdListener getAdListener() {
        return this.f15667d;
    }

    public final Bundle getAdMetadata() {
        try {
            if (this.f15669f != null) {
                return this.f15669f.getAdMetadata();
            }
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
        return new Bundle();
    }

    public final String getAdUnitId() {
        return this.f15670g;
    }

    public final AppEventListener getAppEventListener() {
        return this.f15672i;
    }

    public final String getMediationAdapterClassName() {
        try {
            if (this.f15669f != null) {
                return this.f15669f.zzka();
            }
            return null;
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
            return null;
        }
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.f15673j;
    }

    public final boolean isLoaded() {
        try {
            if (this.f15669f == null) {
                return false;
            }
            return this.f15669f.isReady();
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
            return false;
        }
    }

    public final boolean isLoading() {
        try {
            if (this.f15669f == null) {
                return false;
            }
            return this.f15669f.isLoading();
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
            return false;
        }
    }

    public final void setAdListener(AdListener adListener) {
        try {
            this.f15667d = adListener;
            if (this.f15669f != null) {
                this.f15669f.zza(adListener != null ? new zzuc(adListener) : null);
            }
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setAdMetadataListener(AdMetadataListener adMetadataListener) {
        try {
            this.f15671h = adMetadataListener;
            if (this.f15669f != null) {
                this.f15669f.zza(adMetadataListener != null ? new zzud(adMetadataListener) : null);
            }
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setAdUnitId(String str) {
        if (this.f15670g == null) {
            this.f15670g = str;
            return;
        }
        throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        try {
            this.f15672i = appEventListener;
            if (this.f15669f != null) {
                this.f15669f.zza(appEventListener != null ? new zzul(appEventListener) : null);
            }
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setImmersiveMode(boolean z) {
        try {
            this.f15676m = z;
            if (this.f15669f != null) {
                this.f15669f.setImmersiveMode(z);
            }
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        try {
            this.f15673j = onCustomRenderedAdLoadedListener;
            if (this.f15669f != null) {
                this.f15669f.zza(onCustomRenderedAdLoadedListener != null ? new zzaal(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void setRewardedVideoAdListener(RewardedVideoAdListener rewardedVideoAdListener) {
        try {
            this.f15674k = rewardedVideoAdListener;
            if (this.f15669f != null) {
                this.f15669f.zza(rewardedVideoAdListener != null ? new zzarv(rewardedVideoAdListener) : null);
            }
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void show() {
        try {
            m2969a("show");
            this.f15669f.showInterstitial();
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void zza(zzty zztyVar) {
        try {
            this.f15668e = zztyVar;
            if (this.f15669f != null) {
                this.f15669f.zza(zztyVar != null ? new zztx(zztyVar) : null);
            }
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void zza(zzxj zzxjVar) {
        try {
            if (this.f15669f == null) {
                if (this.f15670g == null) {
                    m2969a("loadAd");
                }
                zzuj zzol = this.f15675l ? zzuj.zzol() : new zzuj();
                zzup zzov = zzve.zzov();
                Context context = this.f15665b;
                this.f15669f = new aro(zzov, context, zzol, this.f15670g, this.f15664a).m4754a(context, false);
                if (this.f15667d != null) {
                    this.f15669f.zza(new zzuc(this.f15667d));
                }
                if (this.f15668e != null) {
                    this.f15669f.zza(new zztx(this.f15668e));
                }
                if (this.f15671h != null) {
                    this.f15669f.zza(new zzud(this.f15671h));
                }
                if (this.f15672i != null) {
                    this.f15669f.zza(new zzul(this.f15672i));
                }
                if (this.f15673j != null) {
                    this.f15669f.zza(new zzaal(this.f15673j));
                }
                if (this.f15674k != null) {
                    this.f15669f.zza(new zzarv(this.f15674k));
                }
                this.f15669f.setImmersiveMode(this.f15676m);
            }
            if (this.f15669f.zza(zzuh.zza(this.f15665b, zzxjVar))) {
                this.f15664a.zzf(zzxjVar.zzpq());
            }
        } catch (RemoteException e) {
            zzayu.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public final void zzd(boolean z) {
        this.f15675l = true;
    }
}
