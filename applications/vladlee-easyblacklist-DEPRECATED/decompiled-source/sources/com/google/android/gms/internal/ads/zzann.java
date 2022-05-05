package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzann.class */
public final class zzann extends zzanh {

    /* renamed from: a */
    private final RtbAdapter f11067a;

    /* renamed from: b */
    private MediationInterstitialAd f11068b;

    /* renamed from: c */
    private MediationRewardedAd f11069c;

    /* renamed from: d */
    private String f11070d = "";

    public zzann(RtbAdapter rtbAdapter) {
        this.f11067a = rtbAdapter;
    }

    /* renamed from: a */
    private static Bundle m4338a(String str) {
        String valueOf = String.valueOf(str);
        zzayu.zzez(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                Bundle bundle2 = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (true) {
                    bundle = bundle2;
                    if (!keys.hasNext()) {
                        break;
                    }
                    String next = keys.next();
                    bundle2.putString(next, jSONObject.getString(next));
                }
            }
            return bundle;
        } catch (JSONException e) {
            zzayu.zzc("", e);
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    private static String m4337a(String str, zzug zzugVar) {
        String str2 = zzugVar.zzabq;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
        }
        return str2;
    }

    /* renamed from: a */
    private static boolean m4339a(zzug zzugVar) {
        if (zzugVar.zzccb) {
            return true;
        }
        zzve.zzou();
        return zzayk.zzxd();
    }

    /* renamed from: b */
    private final Bundle m4336b(zzug zzugVar) {
        Bundle bundle;
        return (zzugVar.zzccf == null || (bundle = zzugVar.zzccf.getBundle(this.f11067a.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final zzxb getVideoController() {
        RtbAdapter rtbAdapter = this.f11067a;
        if (!(rtbAdapter instanceof zza)) {
            return null;
        }
        try {
            return ((zza) rtbAdapter).getVideoController();
        } catch (Throwable th) {
            zzayu.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzuj zzujVar, zzanj zzanjVar) {
        AdFormat adFormat;
        try {
            C1800cs csVar = new C1800cs(zzanjVar);
            RtbAdapter rtbAdapter = this.f11067a;
            char c = 65535;
            switch (str.hashCode()) {
                case -1396342996:
                    if (str.equals("banner")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1052618729:
                    if (str.equals("native")) {
                        c = 3;
                        break;
                    }
                    break;
                case -239580146:
                    if (str.equals("rewarded")) {
                        c = 2;
                        break;
                    }
                    break;
                case 604727084:
                    if (str.equals("interstitial")) {
                        c = 1;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                adFormat = AdFormat.BANNER;
            } else if (c == 1) {
                adFormat = AdFormat.INTERSTITIAL;
            } else if (c == 2) {
                adFormat = AdFormat.REWARDED;
            } else if (c == 3) {
                adFormat = AdFormat.NATIVE;
            } else {
                throw new IllegalArgumentException("Internal Error");
            }
            MediationConfiguration mediationConfiguration = new MediationConfiguration(adFormat, bundle2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(mediationConfiguration);
            rtbAdapter.collectSignals(new RtbSignalData((Context) ObjectWrapper.unwrap(iObjectWrapper), arrayList, bundle, zzb.zza(zzujVar.width, zzujVar.height, zzujVar.zzabg)), csVar);
        } catch (Throwable th) {
            zzayu.zzc("Error generating signals for RTB", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String str, String str2, zzug zzugVar, IObjectWrapper iObjectWrapper, zzamw zzamwVar, zzali zzaliVar, zzuj zzujVar) {
        try {
            this.f11067a.loadBannerAd(new MediationBannerAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, m4338a(str2), m4336b(zzugVar), m4339a(zzugVar), zzugVar.zzmi, zzugVar.zzabo, zzugVar.zzabp, m4337a(str2, zzugVar), zzb.zza(zzujVar.width, zzujVar.height, zzujVar.zzabg), this.f11070d), new C1796co(zzamwVar, zzaliVar));
        } catch (Throwable th) {
            zzayu.zzc("Adapter failed to render banner ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String str, String str2, zzug zzugVar, IObjectWrapper iObjectWrapper, zzamx zzamxVar, zzali zzaliVar) {
        try {
            this.f11067a.loadInterstitialAd(new MediationInterstitialAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, m4338a(str2), m4336b(zzugVar), m4339a(zzugVar), zzugVar.zzmi, zzugVar.zzabo, zzugVar.zzabp, m4337a(str2, zzugVar), this.f11070d), new C1795cn(this, zzamxVar, zzaliVar));
        } catch (Throwable th) {
            zzayu.zzc("Adapter failed to render interstitial ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String str, String str2, zzug zzugVar, IObjectWrapper iObjectWrapper, zzanc zzancVar, zzali zzaliVar) {
        try {
            this.f11067a.loadNativeAd(new MediationNativeAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, m4338a(str2), m4336b(zzugVar), m4339a(zzugVar), zzugVar.zzmi, zzugVar.zzabo, zzugVar.zzabp, m4337a(str2, zzugVar), this.f11070d), new C1797cp(zzancVar, zzaliVar));
        } catch (Throwable th) {
            zzayu.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String str, String str2, zzug zzugVar, IObjectWrapper iObjectWrapper, zzand zzandVar, zzali zzaliVar) {
        try {
            this.f11067a.loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.unwrap(iObjectWrapper), str, m4338a(str2), m4336b(zzugVar), m4339a(zzugVar), zzugVar.zzmi, zzugVar.zzabo, zzugVar.zzabp, m4337a(str2, zzugVar), this.f11070d), new C1798cq(this, zzandVar, zzaliVar));
        } catch (Throwable th) {
            zzayu.zzc("Adapter failed to render rewarded ad.", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zza(String[] strArr, Bundle[] bundleArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final boolean zzaa(IObjectWrapper iObjectWrapper) {
        MediationRewardedAd mediationRewardedAd = this.f11069c;
        if (mediationRewardedAd == null) {
            return false;
        }
        try {
            mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzayu.zzc("", th);
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zzdm(String str) {
        this.f11070d = str;
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final zzanw zztc() {
        return zzanw.zza(this.f11067a.getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final zzanw zztd() {
        return zzanw.zza(this.f11067a.getSDKVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final void zzy(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzani
    public final boolean zzz(IObjectWrapper iObjectWrapper) {
        MediationInterstitialAd mediationInterstitialAd = this.f11068b;
        if (mediationInterstitialAd == null) {
            return false;
        }
        try {
            mediationInterstitialAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            return true;
        } catch (Throwable th) {
            zzayu.zzc("", th);
            return true;
        }
    }
}
