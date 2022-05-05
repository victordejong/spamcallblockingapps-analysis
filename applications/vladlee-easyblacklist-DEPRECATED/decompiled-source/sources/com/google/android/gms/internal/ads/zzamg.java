package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzamg.class */
public final class zzamg<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> extends zzalg {

    /* renamed from: a */
    private final MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> f11064a;

    /* renamed from: b */
    private final NETWORK_EXTRAS f11065b;

    public zzamg(MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter, NETWORK_EXTRAS network_extras) {
        this.f11064a = mediationAdapter;
        this.f11065b = network_extras;
    }

    /* renamed from: a */
    private final SERVER_PARAMETERS m4342a(String str) {
        HashMap hashMap;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                HashMap hashMap2 = new HashMap(jSONObject.length());
                Iterator<String> keys = jSONObject.keys();
                while (true) {
                    hashMap = hashMap2;
                    if (!keys.hasNext()) {
                        break;
                    }
                    String next = keys.next();
                    hashMap2.put(next, jSONObject.getString(next));
                }
            } else {
                hashMap = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> serverParametersType = this.f11064a.getServerParametersType();
            SERVER_PARAMETERS server_parameters = null;
            if (serverParametersType != null) {
                server_parameters = serverParametersType.newInstance();
                server_parameters.load(hashMap);
            }
            return server_parameters;
        } catch (Throwable th) {
            zzayu.zzc("", th);
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    private static boolean m4343a(zzug zzugVar) {
        if (zzugVar.zzccb) {
            return true;
        }
        zzve.zzou();
        return zzayk.zzxd();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void destroy() {
        try {
            this.f11064a.destroy();
        } catch (Throwable th) {
            zzayu.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final Bundle getInterstitialAdapterInfo() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzxb getVideoController() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final boolean isInitialized() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void pause() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void resume() {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void setImmersiveMode(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void showInterstitial() {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.f11064a;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzayu.zzez(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzayu.zzea("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f11064a).showInterstitial();
        } catch (Throwable th) {
            zzayu.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void showVideo() {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzagp zzagpVar, List<zzagx> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzarz zzarzVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzali zzaliVar) {
        zza(iObjectWrapper, zzugVar, str, (String) null, zzaliVar);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzarz zzarzVar, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, String str2, zzali zzaliVar) {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.f11064a;
        if (!(mediationAdapter instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzayu.zzez(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzayu.zzea("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.f11064a).requestInterstitialAd(new zzamf(zzaliVar), (Activity) ObjectWrapper.unwrap(iObjectWrapper), m4342a(str), zzamr.zza(zzugVar, m4343a(zzugVar)), this.f11065b);
        } catch (Throwable th) {
            zzayu.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, String str2, zzali zzaliVar, zzaby zzabyVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, zzug zzugVar, String str, zzali zzaliVar) {
        zza(iObjectWrapper, zzujVar, zzugVar, str, null, zzaliVar);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, zzug zzugVar, String str, String str2, zzali zzaliVar) {
        AdSize adSize;
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.f11064a;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzayu.zzez(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        zzayu.zzea("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f11064a;
            zzamf zzamfVar = new zzamf(zzaliVar);
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
            SERVER_PARAMETERS a = m4342a(str);
            AdSize[] adSizeArr = new AdSize[6];
            int i = 0;
            adSizeArr[0] = AdSize.SMART_BANNER;
            adSizeArr[1] = AdSize.BANNER;
            adSizeArr[2] = AdSize.IAB_MRECT;
            adSizeArr[3] = AdSize.IAB_BANNER;
            adSizeArr[4] = AdSize.IAB_LEADERBOARD;
            adSizeArr[5] = AdSize.IAB_WIDE_SKYSCRAPER;
            while (true) {
                if (i < 6) {
                    if (adSizeArr[i].getWidth() == zzujVar.width && adSizeArr[i].getHeight() == zzujVar.height) {
                        adSize = adSizeArr[i];
                        break;
                    }
                    i++;
                } else {
                    adSize = new AdSize(zzb.zza(zzujVar.width, zzujVar.height, zzujVar.zzabg));
                    break;
                }
            }
            mediationBannerAdapter.requestBannerAd(zzamfVar, activity, a, adSize, zzamr.zza(zzugVar, m4343a(zzugVar)), this.f11065b);
        } catch (Throwable th) {
            zzayu.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(zzug zzugVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(zzug zzugVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zzb(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzali zzaliVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zzs(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final IObjectWrapper zzsk() {
        MediationAdapter<NETWORK_EXTRAS, SERVER_PARAMETERS> mediationAdapter = this.f11064a;
        if (!(mediationAdapter instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(mediationAdapter.getClass().getCanonicalName());
            zzayu.zzez(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return ObjectWrapper.wrap(((MediationBannerAdapter) mediationAdapter).getBannerView());
        } catch (Throwable th) {
            zzayu.zzc("", th);
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzall zzsl() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzalq zzsm() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final Bundle zzsn() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final Bundle zzso() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final boolean zzsp() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzade zzsq() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzalr zzsr() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zzt(IObjectWrapper iObjectWrapper) {
    }
}
