package com.google.android.gms.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzadu;
import com.google.android.gms.internal.ads.zzagk;
import com.google.android.gms.internal.ads.zzagn;
import com.google.android.gms.internal.ads.zzago;
import com.google.android.gms.internal.ads.zzags;
import com.google.android.gms.internal.ads.zzanc;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzvc;
import com.google.android.gms.internal.ads.zzvl;
import com.google.android.gms.internal.ads.zzwm;
import com.google.android.gms.internal.ads.zzwu;
import com.google.android.gms.internal.ads.zzwz;
import com.google.android.gms.internal.ads.zzyw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdLoader.class */
public class AdLoader {

    /* renamed from: a */
    public final Context f22641a;

    /* renamed from: b */
    public final zzwu f22642b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/AdLoader$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public final Context f22643a;

        /* renamed from: b */
        public final zzwz f22644b;

        public Builder(Context context, zzwz zzwzVar) {
            this.f22643a = context;
            this.f22644b = zzwzVar;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(Context context, String str) {
            this(context, zzwm.m11169b().m11181a(context, str, new zzanc()));
            Preconditions.m17287a(context, "context cannot be null");
        }

        /* renamed from: a */
        public Builder m18154a(AdListener adListener) {
            try {
                this.f22644b.mo10974a(new zzvc(adListener));
            } catch (RemoteException e) {
                zzbbq.m15853c("Failed to set AdListener.", e);
            }
            return this;
        }

        /* renamed from: a */
        public Builder m18153a(NativeAdOptions nativeAdOptions) {
            try {
                this.f22644b.mo10981a(new zzadu(nativeAdOptions));
            } catch (RemoteException e) {
                zzbbq.m15853c("Failed to specify native ad options", e);
            }
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public Builder m18152a(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.f22644b.mo10980a(new zzago(onAppInstallAdLoadedListener));
            } catch (RemoteException e) {
                zzbbq.m15853c("Failed to add app install ad listener", e);
            }
            return this;
        }

        @Deprecated
        /* renamed from: a */
        public Builder m18151a(NativeContentAd.OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.f22644b.mo10979a(new zzagn(onContentAdLoadedListener));
            } catch (RemoteException e) {
                zzbbq.m15853c("Failed to add content ad listener", e);
            }
            return this;
        }

        /* renamed from: a */
        public Builder m18150a(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
            try {
                this.f22644b.mo10977a(new zzags(onUnifiedNativeAdLoadedListener));
            } catch (RemoteException e) {
                zzbbq.m15853c("Failed to add google native ad listener", e);
            }
            return this;
        }

        /* renamed from: a */
        public Builder m18149a(String str, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
            zzagk zzagkVar = new zzagk(onCustomTemplateAdLoadedListener, onCustomClickListener);
            try {
                this.f22644b.mo10972a(str, zzagkVar.m16779a(), zzagkVar.m16775b());
            } catch (RemoteException e) {
                zzbbq.m15853c("Failed to add custom template ad listener", e);
            }
            return this;
        }

        /* renamed from: a */
        public AdLoader m18155a() {
            try {
                return new AdLoader(this.f22643a, this.f22644b.mo10983O0());
            } catch (RemoteException e) {
                zzbbq.m15855b("Failed to build AdLoader.", e);
                return null;
            }
        }
    }

    public AdLoader(Context context, zzwu zzwuVar) {
        this(context, zzwuVar, zzvl.f29034a);
    }

    public AdLoader(Context context, zzwu zzwuVar, zzvl zzvlVar) {
        this.f22641a = context;
        this.f22642b = zzwuVar;
    }

    /* renamed from: a */
    public void m18157a(AdRequest adRequest) {
        m18156a(adRequest.m18148a());
    }

    /* renamed from: a */
    public final void m18156a(zzyw zzywVar) {
        try {
            this.f22642b.mo11151a(zzvl.m11201a(this.f22641a, zzywVar));
        } catch (RemoteException e) {
            zzbbq.m15855b("Failed to load ad.", e);
        }
    }
}
