package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.reward.mediation.InitializableMediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.zzb;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaly.class */
public final class zzaly extends zzalg {

    /* renamed from: a */
    private final Object f11038a;

    /* renamed from: b */
    private zzalz f11039b;

    /* renamed from: c */
    private zzarz f11040c;

    /* renamed from: d */
    private IObjectWrapper f11041d;

    /* renamed from: e */
    private MediationRewardedAd f11042e;

    public zzaly(Adapter adapter) {
        this.f11038a = adapter;
    }

    public zzaly(MediationAdapter mediationAdapter) {
        this.f11038a = mediationAdapter;
    }

    /* renamed from: a */
    private final Bundle m4346a(String str, zzug zzugVar, String str2) {
        String valueOf = String.valueOf(str);
        zzayu.zzea(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
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
            if (this.f11038a instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzugVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzugVar.zzabo);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            zzayu.zzc("", th);
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    private static String m4347a(String str, zzug zzugVar) {
        String str2 = zzugVar.zzabq;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
        }
        return str2;
    }

    /* renamed from: a */
    private static boolean m4348a(zzug zzugVar) {
        if (zzugVar.zzccb) {
            return true;
        }
        zzve.zzou();
        return zzayk.zzxd();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void destroy() {
        Object obj = this.f11038a;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onDestroy();
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final Bundle getInterstitialAdapterInfo() {
        Object obj = this.f11038a;
        if (obj instanceof zzbfy) {
            return ((zzbfy) obj).getInterstitialAdapterInfo();
        }
        String canonicalName = zzbfy.class.getCanonicalName();
        String canonicalName2 = this.f11038a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzayu.zzez(sb.toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzxb getVideoController() {
        Object obj = this.f11038a;
        if (!(obj instanceof zza)) {
            return null;
        }
        try {
            return ((zza) obj).getVideoController();
        } catch (Throwable th) {
            zzayu.zzc("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final boolean isInitialized() {
        Object obj = this.f11038a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzayu.zzea("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.f11038a).isInitialized();
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            return this.f11040c != null;
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void pause() {
        Object obj = this.f11038a;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onPause();
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void resume() {
        Object obj = this.f11038a;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onResume();
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void setImmersiveMode(boolean z) {
        Object obj = this.f11038a;
        if (!(obj instanceof OnImmersiveModeUpdatedListener)) {
            String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
            String canonicalName2 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzayu.zzez(sb.toString());
            return;
        }
        try {
            ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
        } catch (Throwable th) {
            zzayu.zzc("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void showInterstitial() {
        if (this.f11038a instanceof MediationInterstitialAdapter) {
            zzayu.zzea("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.f11038a).showInterstitial();
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void showVideo() {
        Object obj = this.f11038a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzayu.zzea("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.f11038a).showVideo();
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.f11042e;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(this.f11041d));
            } else {
                zzayu.zzex("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzagp zzagpVar, List<zzagx> list) {
        AdFormat adFormat;
        if (this.f11038a instanceof Adapter) {
            C1780bz bzVar = new C1780bz(zzagpVar);
            ArrayList arrayList = new ArrayList();
            for (zzagx zzagxVar : list) {
                String str = zzagxVar.zzcyg;
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
                    throw new RemoteException();
                }
                arrayList.add(new MediationConfiguration(adFormat, zzagxVar.extras));
            }
            ((Adapter) this.f11038a).initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), bzVar, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzarz zzarzVar, List<String> list) {
        if (this.f11038a instanceof InitializableMediationRewardedVideoAdAdapter) {
            zzayu.zzea("Initialize rewarded video adapter.");
            try {
                InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.f11038a;
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    arrayList.add(m4346a(str, (zzug) null, (String) null));
                }
                initializableMediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzasa(zzarzVar), arrayList);
            } catch (Throwable th) {
                zzayu.zzd("Could not initialize rewarded video adapter.", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzali zzaliVar) {
        zza(iObjectWrapper, zzugVar, str, (String) null, zzaliVar);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, zzarz zzarzVar, String str2) {
        Bundle bundle;
        zzalv zzalvVar;
        Object obj = this.f11038a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzayu.zzea("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f11038a;
                Bundle a = m4346a(str2, zzugVar, (String) null);
                if (zzugVar != null) {
                    zzalv zzalvVar2 = new zzalv(zzugVar.zzcby == -1 ? null : new Date(zzugVar.zzcby), zzugVar.zzcbz, zzugVar.zzcca != null ? new HashSet(zzugVar.zzcca) : null, zzugVar.zzmi, m4348a(zzugVar), zzugVar.zzabo, zzugVar.zzcck, zzugVar.zzabp, m4347a(str2, zzugVar));
                    if (zzugVar.zzccf != null) {
                        bundle = zzugVar.zzccf.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                        zzalvVar = zzalvVar2;
                    } else {
                        zzalvVar = zzalvVar2;
                        bundle = null;
                    }
                } else {
                    zzalvVar = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.unwrap(iObjectWrapper), zzalvVar, str, new zzasa(zzarzVar), a, bundle);
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            this.f11041d = iObjectWrapper;
            this.f11040c = zzarzVar;
            zzarzVar.zzaf(ObjectWrapper.wrap(obj));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, String str2, zzali zzaliVar) {
        if (this.f11038a instanceof MediationInterstitialAdapter) {
            zzayu.zzea("Requesting interstitial ad from adapter.");
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.f11038a;
                Bundle bundle = null;
                zzalv zzalvVar = new zzalv(zzugVar.zzcby == -1 ? null : new Date(zzugVar.zzcby), zzugVar.zzcbz, zzugVar.zzcca != null ? new HashSet(zzugVar.zzcca) : null, zzugVar.zzmi, m4348a(zzugVar), zzugVar.zzabo, zzugVar.zzcck, zzugVar.zzabp, m4347a(str, zzugVar));
                if (zzugVar.zzccf != null) {
                    bundle = zzugVar.zzccf.getBundle(mediationInterstitialAdapter.getClass().getName());
                }
                mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzalz(zzaliVar), m4346a(str, zzugVar, str2), zzalvVar, bundle);
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzug zzugVar, String str, String str2, zzali zzaliVar, zzaby zzabyVar, List<String> list) {
        Object obj = this.f11038a;
        if (obj instanceof MediationNativeAdapter) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
                Bundle bundle = null;
                zzamd zzamdVar = new zzamd(zzugVar.zzcby == -1 ? null : new Date(zzugVar.zzcby), zzugVar.zzcbz, zzugVar.zzcca != null ? new HashSet(zzugVar.zzcca) : null, zzugVar.zzmi, m4348a(zzugVar), zzugVar.zzabo, zzabyVar, list, zzugVar.zzcck, zzugVar.zzabp, m4347a(str, zzugVar));
                if (zzugVar.zzccf != null) {
                    bundle = zzugVar.zzccf.getBundle(mediationNativeAdapter.getClass().getName());
                }
                this.f11039b = new zzalz(zzaliVar);
                mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.unwrap(iObjectWrapper), this.f11039b, m4346a(str, zzugVar, str2), zzamdVar, bundle);
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, zzug zzugVar, String str, zzali zzaliVar) {
        zza(iObjectWrapper, zzujVar, zzugVar, str, null, zzaliVar);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(IObjectWrapper iObjectWrapper, zzuj zzujVar, zzug zzugVar, String str, String str2, zzali zzaliVar) {
        if (this.f11038a instanceof MediationBannerAdapter) {
            zzayu.zzea("Requesting banner ad from adapter.");
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f11038a;
                Bundle bundle = null;
                zzalv zzalvVar = new zzalv(zzugVar.zzcby == -1 ? null : new Date(zzugVar.zzcby), zzugVar.zzcbz, zzugVar.zzcca != null ? new HashSet(zzugVar.zzcca) : null, zzugVar.zzmi, m4348a(zzugVar), zzugVar.zzabo, zzugVar.zzcck, zzugVar.zzabp, m4347a(str, zzugVar));
                if (zzugVar.zzccf != null) {
                    bundle = zzugVar.zzccf.getBundle(mediationBannerAdapter.getClass().getName());
                }
                mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.unwrap(iObjectWrapper), new zzalz(zzaliVar), m4346a(str, zzugVar, str2), zzujVar.zzccv ? zzb.zza(zzujVar.width, zzujVar.height) : zzb.zza(zzujVar.width, zzujVar.height, zzujVar.zzabg), zzalvVar, bundle);
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(zzug zzugVar, String str) {
        zza(zzugVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zza(zzug zzugVar, String str, String str2) {
        Object obj = this.f11038a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzayu.zzea("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f11038a;
                Bundle bundle = null;
                zzalv zzalvVar = new zzalv(zzugVar.zzcby == -1 ? null : new Date(zzugVar.zzcby), zzugVar.zzcbz, zzugVar.zzcca != null ? new HashSet(zzugVar.zzcca) : null, zzugVar.zzmi, m4348a(zzugVar), zzugVar.zzabo, zzugVar.zzcck, zzugVar.zzabp, m4347a(str, zzugVar));
                if (zzugVar.zzccf != null) {
                    bundle = zzugVar.zzccf.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                }
                mediationRewardedVideoAdAdapter.loadAd(zzalvVar, m4346a(str, zzugVar, str2), bundle);
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            zzb(this.f11041d, zzugVar, str, new zzamc((Adapter) obj, this.f11040c));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0059, code lost:
        if (r13 != null) goto L_0x0067;
     */
    @Override // com.google.android.gms.internal.ads.zzald
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(com.google.android.gms.dynamic.IObjectWrapper r13, com.google.android.gms.internal.ads.zzug r14, java.lang.String r15, com.google.android.gms.internal.ads.zzali r16) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaly.zzb(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.internal.ads.zzug, java.lang.String, com.google.android.gms.internal.ads.zzali):void");
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zzs(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        Object obj = this.f11038a;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final IObjectWrapper zzsk() {
        Object obj = this.f11038a;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.wrap(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                zzayu.zzc("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzall zzsl() {
        NativeAdMapper zzsw = this.f11039b.zzsw();
        if (zzsw instanceof NativeAppInstallAdMapper) {
            return new zzamb((NativeAppInstallAdMapper) zzsw);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzalq zzsm() {
        NativeAdMapper zzsw = this.f11039b.zzsw();
        if (zzsw instanceof NativeContentAdMapper) {
            return new zzame((NativeContentAdMapper) zzsw);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final Bundle zzsn() {
        Object obj = this.f11038a;
        if (obj instanceof zzbfw) {
            return ((zzbfw) obj).zzsn();
        }
        String canonicalName = zzbfw.class.getCanonicalName();
        String canonicalName2 = this.f11038a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzayu.zzez(sb.toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final Bundle zzso() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final boolean zzsp() {
        return this.f11038a instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzade zzsq() {
        NativeCustomTemplateAd zzsy = this.f11039b.zzsy();
        if (zzsy instanceof zzadf) {
            return ((zzadf) zzsy).zzro();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final zzalr zzsr() {
        UnifiedNativeAdMapper zzsx = this.f11039b.zzsx();
        if (zzsx != null) {
            return new zzamt(zzsx);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzald
    public final void zzt(IObjectWrapper iObjectWrapper) {
        if (this.f11038a instanceof Adapter) {
            zzayu.zzea("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.f11042e;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.unwrap(iObjectWrapper));
            } else {
                zzayu.zzex("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.f11038a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzayu.zzez(sb.toString());
            throw new RemoteException();
        }
    }
}
