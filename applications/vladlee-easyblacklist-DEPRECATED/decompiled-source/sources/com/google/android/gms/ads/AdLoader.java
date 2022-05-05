package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzaby;
import com.google.android.gms.internal.ads.zzael;
import com.google.android.gms.internal.ads.zzaen;
import com.google.android.gms.internal.ads.zzaeo;
import com.google.android.gms.internal.ads.zzaep;
import com.google.android.gms.internal.ads.zzaeq;
import com.google.android.gms.internal.ads.zzaer;
import com.google.android.gms.internal.ads.zzakz;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzuc;
import com.google.android.gms.internal.ads.zzuh;
import com.google.android.gms.internal.ads.zzuj;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzvm;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzxj;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdLoader.class */
public class AdLoader {

    /* renamed from: a */
    private final zzuh f5812a;

    /* renamed from: b */
    private final Context f5813b;

    /* renamed from: c */
    private final zzvm f5814c;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdLoader$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private final Context f5815a;

        /* renamed from: b */
        private final zzvn f5816b;

        private Builder(Context context, zzvn zzvnVar) {
            this.f5815a = context;
            this.f5816b = zzvnVar;
        }

        public Builder(Context context, String str) {
            this((Context) Preconditions.checkNotNull(context, "context cannot be null"), zzve.zzov().zzb(context, str, new zzakz()));
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.f5815a, this.f5816b.zzpd());
            } catch (RemoteException e) {
                zzayu.zzc("Failed to build AdLoader.", e);
                return null;
            }
        }

        @Deprecated
        public Builder forAppInstallAd(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.f5816b.zza(new zzael(onAppInstallAdLoadedListener));
            } catch (RemoteException e) {
                zzayu.zzd("Failed to add app install ad listener", e);
            }
            return this;
        }

        @Deprecated
        public Builder forContentAd(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.f5816b.zza(new zzaeo(onContentAdLoadedListener));
            } catch (RemoteException e) {
                zzayu.zzd("Failed to add content ad listener", e);
            }
            return this;
        }

        public Builder forCustomTemplateAd(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            try {
                this.f5816b.zza(str, new zzaeq(onCustomTemplateAdLoadedListener), onCustomClickListener == null ? null : new zzaen(onCustomClickListener));
            } catch (RemoteException e) {
                zzayu.zzd("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public Builder forPublisherAdView(OnPublisherAdViewLoadedListener onPublisherAdViewLoadedListener, AdSize... adSizeArr) {
            if (adSizeArr == null || adSizeArr.length <= 0) {
                throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
            }
            try {
                this.f5816b.zza(new zzaep(onPublisherAdViewLoadedListener), new zzuj(this.f5815a, adSizeArr));
            } catch (RemoteException e) {
                zzayu.zzd("Failed to add publisher banner ad listener", e);
            }
            return this;
        }

        public Builder forUnifiedNativeAd(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.f5816b.zza(new zzaer(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzayu.zzd("Failed to add google native ad listener", e);
            }
            return this;
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.f5816b.zzb(new zzuc(adListener));
            } catch (RemoteException e) {
                zzayu.zzd("Failed to set AdListener.", e);
            }
            return this;
        }

        @Deprecated
        public Builder withCorrelator(Correlator correlator) {
            return this;
        }

        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.f5816b.zza(new zzaby(nativeAdOptions));
            } catch (RemoteException e) {
                zzayu.zzd("Failed to specify native ad options", e);
            }
            return this;
        }

        public Builder withPublisherAdViewOptions(PublisherAdViewOptions publisherAdViewOptions) {
            try {
                this.f5816b.zza(publisherAdViewOptions);
            } catch (RemoteException e) {
                zzayu.zzd("Failed to specify DFP banner ad options", e);
            }
            return this;
        }
    }

    AdLoader(Context context, zzvm zzvmVar) {
        this(context, zzvmVar, zzuh.zzccn);
    }

    private AdLoader(Context context, zzvm zzvmVar, zzuh zzuhVar) {
        this.f5813b = context;
        this.f5814c = zzvmVar;
        this.f5812a = zzuhVar;
    }

    /* renamed from: a */
    private final void m6104a(zzxj zzxjVar) {
        try {
            this.f5814c.zzb(zzuh.zza(this.f5813b, zzxjVar));
        } catch (RemoteException e) {
            zzayu.zzc("Failed to load ad.", e);
        }
    }

    @Deprecated
    public String getMediationAdapterClassName() {
        try {
            return this.f5814c.zzka();
        } catch (RemoteException e) {
            zzayu.zzd("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            return this.f5814c.isLoading();
        } catch (RemoteException e) {
            zzayu.zzd("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public void loadAd(AdRequest adRequest) {
        m6104a(adRequest.zzdg());
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        m6104a(publisherAdRequest.zzdg());
    }

    public void loadAds(AdRequest adRequest, int i) {
        try {
            this.f5814c.zza(zzuh.zza(this.f5813b, adRequest.zzdg()), i);
        } catch (RemoteException e) {
            zzayu.zzc("Failed to load ads.", e);
        }
    }
}
