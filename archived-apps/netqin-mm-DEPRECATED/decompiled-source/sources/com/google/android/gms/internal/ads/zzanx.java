package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
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
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C4089u2;
import p131c.p161d.p170b.p224d.p252g.p253a.C4126v2;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanx.class */
public final class zzanx extends zzanf {

    /* renamed from: a */
    public final Object f24205a;

    /* renamed from: b */
    public zzaoc f24206b;

    /* renamed from: c */
    public zzaur f24207c;

    /* renamed from: d */
    public IObjectWrapper f24208d;

    /* renamed from: e */
    public MediationRewardedAd f24209e;

    public zzanx(Adapter adapter) {
        this.f24205a = adapter;
    }

    public zzanx(MediationAdapter mediationAdapter) {
        this.f24205a = mediationAdapter;
    }

    /* renamed from: a */
    public static String m16631a(String str, zzvg zzvgVar) {
        String str2 = zzvgVar.f29021u;
        try {
            str2 = new JSONObject(str).getString("max_ad_content_rating");
        } catch (JSONException e) {
        }
        return str2;
    }

    /* renamed from: d */
    public static boolean m16628d(zzvg zzvgVar) {
        if (zzvgVar.f29006f) {
            return true;
        }
        zzwm.m11170a();
        return zzbbg.m15912a();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: C0 */
    public final zzafa mo16560C0() {
        NativeCustomTemplateAd c = this.f24206b.m16607c();
        if (c instanceof zzafb) {
            return ((zzafb) c).m16808a();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: F1 */
    public final IObjectWrapper mo16559F1() throws RemoteException {
        Object obj = this.f24205a;
        if (obj instanceof MediationBannerAdapter) {
            try {
                return ObjectWrapper.m17020a(((MediationBannerAdapter) obj).getBannerView());
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: K */
    public final void mo16558K(IObjectWrapper iObjectWrapper) throws RemoteException {
        if (this.f24205a instanceof Adapter) {
            zzbbq.m15858a("Show rewarded ad from adapter.");
            MediationRewardedAd mediationRewardedAd = this.f24209e;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.m17021Q(iObjectWrapper));
            } else {
                zzbbq.m15856b("Can not show null mediation rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: R0 */
    public final boolean mo16557R0() {
        return this.f24205a instanceof InitializableMediationRewardedVideoAdAdapter;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: V */
    public final zzapv mo16556V() {
        Object obj = this.f24205a;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzapv.m16464a(((Adapter) obj).getSDKVersionInfo());
    }

    /* renamed from: a */
    public final Bundle m16630a(String str, zzvg zzvgVar, String str2) throws RemoteException {
        String valueOf = String.valueOf(str);
        zzbbq.m15858a(valueOf.length() != 0 ? "Server parameters: ".concat(valueOf) : new String("Server parameters: "));
        try {
            Bundle bundle = new Bundle();
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                bundle = new Bundle();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    bundle.putString(next, jSONObject.getString(next));
                }
            }
            if (this.f24205a instanceof AdMobAdapter) {
                bundle.putString("adJson", str2);
                if (zzvgVar != null) {
                    bundle.putInt("tagForChildDirectedTreatment", zzvgVar.f29007g);
                }
            }
            bundle.remove("max_ad_content_rating");
            return bundle;
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            throw new RemoteException();
        }
    }

    /* renamed from: a */
    public final MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> m16634a(zzanh zzanhVar) {
        return new C4089u2(this, zzanhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16555a(IObjectWrapper iObjectWrapper, zzais zzaisVar, List<zzaja> list) throws RemoteException {
        AdFormat adFormat;
        if (this.f24205a instanceof Adapter) {
            C4126v2 v2Var = new C4126v2(this, zzaisVar);
            ArrayList arrayList = new ArrayList();
            for (zzaja zzajaVar : list) {
                String str = zzajaVar.f24145a;
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
                        if (str.equals(AdType.INTERSTITIAL)) {
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
                arrayList.add(new MediationConfiguration(adFormat, zzajaVar.f24146b));
            }
            ((Adapter) this.f24205a).initialize((Context) ObjectWrapper.m17021Q(iObjectWrapper), v2Var, arrayList);
            return;
        }
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16554a(IObjectWrapper iObjectWrapper, zzaur zzaurVar, List<String> list) throws RemoteException {
        if (this.f24205a instanceof InitializableMediationRewardedVideoAdAdapter) {
            zzbbq.m15858a("Initialize rewarded video adapter.");
            try {
                InitializableMediationRewardedVideoAdAdapter initializableMediationRewardedVideoAdAdapter = (InitializableMediationRewardedVideoAdAdapter) this.f24205a;
                ArrayList arrayList = new ArrayList();
                for (String str : list) {
                    arrayList.add(m16630a(str, (zzvg) null, (String) null));
                }
                initializableMediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.m17021Q(iObjectWrapper), new zzaus(zzaurVar), arrayList);
            } catch (Throwable th) {
                zzbbq.m15853c("Could not initialize rewarded video adapter.", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = InitializableMediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16553a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        if (this.f24205a instanceof Adapter) {
            zzbbq.m15858a("Requesting rewarded ad from adapter.");
            try {
                ((Adapter) this.f24205a).loadRewardedAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.m17021Q(iObjectWrapper), "", m16630a(str, zzvgVar, (String) null), m16629c(zzvgVar), m16628d(zzvgVar), zzvgVar.f29011k, zzvgVar.f29007g, zzvgVar.f29020t, m16631a(str, zzvgVar), ""), m16634a(zzanhVar));
            } catch (Exception e) {
                zzbbq.m15855b("", e);
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16552a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzaur zzaurVar, String str2) throws RemoteException {
        zzany zzanyVar;
        Bundle bundle;
        Object obj = this.f24205a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbbq.m15858a("Initialize rewarded video adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f24205a;
                Bundle a = m16630a(str2, zzvgVar, (String) null);
                if (zzvgVar != null) {
                    zzanyVar = new zzany(zzvgVar.f29002b == -1 ? null : new Date(zzvgVar.f29002b), zzvgVar.f29004d, zzvgVar.f29005e != null ? new HashSet(zzvgVar.f29005e) : null, zzvgVar.f29011k, m16628d(zzvgVar), zzvgVar.f29007g, zzvgVar.f29018r, zzvgVar.f29020t, m16631a(str2, zzvgVar));
                    bundle = zzvgVar.f29013m != null ? zzvgVar.f29013m.getBundle(mediationRewardedVideoAdAdapter.getClass().getName()) : null;
                } else {
                    zzanyVar = null;
                    bundle = null;
                }
                mediationRewardedVideoAdAdapter.initialize((Context) ObjectWrapper.m17021Q(iObjectWrapper), zzanyVar, str, new zzaus(zzaurVar), a, bundle);
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            this.f24208d = iObjectWrapper;
            this.f24207c = zzaurVar;
            zzaurVar.mo13838v(ObjectWrapper.m17020a(obj));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16551a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, String str2, zzanh zzanhVar) throws RemoteException {
        if (this.f24205a instanceof MediationInterstitialAdapter) {
            zzbbq.m15858a("Requesting interstitial ad from adapter.");
            try {
                MediationInterstitialAdapter mediationInterstitialAdapter = (MediationInterstitialAdapter) this.f24205a;
                Bundle bundle = null;
                zzany zzanyVar = new zzany(zzvgVar.f29002b == -1 ? null : new Date(zzvgVar.f29002b), zzvgVar.f29004d, zzvgVar.f29005e != null ? new HashSet(zzvgVar.f29005e) : null, zzvgVar.f29011k, m16628d(zzvgVar), zzvgVar.f29007g, zzvgVar.f29018r, zzvgVar.f29020t, m16631a(str, zzvgVar));
                if (zzvgVar.f29013m != null) {
                    bundle = zzvgVar.f29013m.getBundle(mediationInterstitialAdapter.getClass().getName());
                }
                mediationInterstitialAdapter.requestInterstitialAd((Context) ObjectWrapper.m17021Q(iObjectWrapper), new zzaoc(zzanhVar), m16630a(str, zzvgVar, str2), zzanyVar, bundle);
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16550a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, String str2, zzanh zzanhVar, zzadu zzaduVar, List<String> list) throws RemoteException {
        Object obj = this.f24205a;
        if (obj instanceof MediationNativeAdapter) {
            try {
                MediationNativeAdapter mediationNativeAdapter = (MediationNativeAdapter) obj;
                Bundle bundle = null;
                zzaog zzaogVar = new zzaog(zzvgVar.f29002b == -1 ? null : new Date(zzvgVar.f29002b), zzvgVar.f29004d, zzvgVar.f29005e != null ? new HashSet(zzvgVar.f29005e) : null, zzvgVar.f29011k, m16628d(zzvgVar), zzvgVar.f29007g, zzaduVar, list, zzvgVar.f29018r, zzvgVar.f29020t, m16631a(str, zzvgVar));
                if (zzvgVar.f29013m != null) {
                    bundle = zzvgVar.f29013m.getBundle(mediationNativeAdapter.getClass().getName());
                }
                this.f24206b = new zzaoc(zzanhVar);
                mediationNativeAdapter.requestNativeAd((Context) ObjectWrapper.m17021Q(iObjectWrapper), this.f24206b, m16630a(str, zzvgVar, str2), zzaogVar, bundle);
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationNativeAdapter.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16549a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        mo16548a(iObjectWrapper, zzvnVar, zzvgVar, str, null, zzanhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16548a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, zzvg zzvgVar, String str, String str2, zzanh zzanhVar) throws RemoteException {
        if (this.f24205a instanceof MediationBannerAdapter) {
            zzbbq.m15858a("Requesting banner ad from adapter.");
            try {
                MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.f24205a;
                Bundle bundle = null;
                zzany zzanyVar = new zzany(zzvgVar.f29002b == -1 ? null : new Date(zzvgVar.f29002b), zzvgVar.f29004d, zzvgVar.f29005e != null ? new HashSet(zzvgVar.f29005e) : null, zzvgVar.f29011k, m16628d(zzvgVar), zzvgVar.f29007g, zzvgVar.f29018r, zzvgVar.f29020t, m16631a(str, zzvgVar));
                if (zzvgVar.f29013m != null) {
                    bundle = zzvgVar.f29013m.getBundle(mediationBannerAdapter.getClass().getName());
                }
                mediationBannerAdapter.requestBannerAd((Context) ObjectWrapper.m17021Q(iObjectWrapper), new zzaoc(zzanhVar), m16630a(str, zzvgVar, str2), zzvnVar.f29048n ? zzb.m17891a(zzvnVar.f29039e, zzvnVar.f29036b) : zzb.m17890a(zzvnVar.f29039e, zzvnVar.f29036b, zzvnVar.f29035a), zzanyVar, bundle);
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationBannerAdapter.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16547a(zzvg zzvgVar, String str) throws RemoteException {
        mo16546a(zzvgVar, str, (String) null);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16546a(zzvg zzvgVar, String str, String str2) throws RemoteException {
        Object obj = this.f24205a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbbq.m15858a("Requesting rewarded video ad from adapter.");
            try {
                MediationRewardedVideoAdAdapter mediationRewardedVideoAdAdapter = (MediationRewardedVideoAdAdapter) this.f24205a;
                Bundle bundle = null;
                zzany zzanyVar = new zzany(zzvgVar.f29002b == -1 ? null : new Date(zzvgVar.f29002b), zzvgVar.f29004d, zzvgVar.f29005e != null ? new HashSet(zzvgVar.f29005e) : null, zzvgVar.f29011k, m16628d(zzvgVar), zzvgVar.f29007g, zzvgVar.f29018r, zzvgVar.f29020t, m16631a(str, zzvgVar));
                if (zzvgVar.f29013m != null) {
                    bundle = zzvgVar.f29013m.getBundle(mediationRewardedVideoAdAdapter.getClass().getName());
                }
                mediationRewardedVideoAdAdapter.loadAd(zzanyVar, m16630a(str, zzvgVar, str2), bundle);
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            mo16553a(this.f24208d, zzvgVar, str, new zzaob((Adapter) obj, this.f24207c));
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16545a(boolean z) throws RemoteException {
        Object obj = this.f24205a;
        if (!(obj instanceof OnImmersiveModeUpdatedListener)) {
            String canonicalName = OnImmersiveModeUpdatedListener.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15858a(sb.toString());
            return;
        }
        try {
            ((OnImmersiveModeUpdatedListener) obj).onImmersiveModeUpdated(z);
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: b */
    public final void mo16544b(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        if (this.f24205a instanceof Adapter) {
            zzbbq.m15858a("Requesting rewarded interstitial ad from adapter.");
            try {
                ((Adapter) this.f24205a).loadRewardedInterstitialAd(new MediationRewardedAdConfiguration((Context) ObjectWrapper.m17021Q(iObjectWrapper), "", m16630a(str, zzvgVar, (String) null), m16629c(zzvgVar), m16628d(zzvgVar), zzvgVar.f29011k, zzvgVar.f29007g, zzvgVar.f29020t, m16631a(str, zzvgVar), ""), m16634a(zzanhVar));
            } catch (Exception e) {
                zzbbq.m15855b("", e);
                throw new RemoteException();
            }
        } else {
            String canonicalName = Adapter.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    /* renamed from: c */
    public final Bundle m16629c(zzvg zzvgVar) {
        Bundle bundle;
        Bundle bundle2 = zzvgVar.f29013m;
        return (bundle2 == null || (bundle = bundle2.getBundle(this.f24205a.getClass().getName())) == null) ? new Bundle() : bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: c */
    public final void mo16543c(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        mo16551a(iObjectWrapper, zzvgVar, str, (String) null, zzanhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: c2 */
    public final zzanu mo16541c2() {
        UnifiedNativeAdMapper b = this.f24206b.m16611b();
        if (b != null) {
            return new zzaow(b);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: d0 */
    public final zzapv mo16540d0() {
        Object obj = this.f24205a;
        if (!(obj instanceof Adapter)) {
            return null;
        }
        return zzapv.m16464a(((Adapter) obj).getVersionInfo());
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void destroy() throws RemoteException {
        Object obj = this.f24205a;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onDestroy();
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final Bundle getInterstitialAdapterInfo() {
        Object obj = this.f24205a;
        if (obj instanceof zzbiy) {
            return ((zzbiy) obj).getInterstitialAdapterInfo();
        }
        String canonicalName = zzbiy.class.getCanonicalName();
        String canonicalName2 = this.f24205a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzbbq.m15852d(sb.toString());
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final zzyo getVideoController() {
        Object obj = this.f24205a;
        if (!(obj instanceof zza)) {
            return null;
        }
        try {
            return ((zza) obj).getVideoController();
        } catch (Throwable th) {
            zzbbq.m15855b("", th);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: h1 */
    public final Bundle mo16539h1() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: i1 */
    public final zzanp mo16538i1() {
        NativeAdMapper a = this.f24206b.m16627a();
        if (a instanceof NativeContentAdMapper) {
            return new zzaod((NativeContentAdMapper) a);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final boolean isInitialized() throws RemoteException {
        Object obj = this.f24205a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbbq.m15858a("Check if adapter is initialized.");
            try {
                return ((MediationRewardedVideoAdAdapter) this.f24205a).isInitialized();
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            return this.f24207c != null;
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void pause() throws RemoteException {
        Object obj = this.f24205a;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onPause();
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: q1 */
    public final zzano mo16537q1() {
        NativeAdMapper a = this.f24206b.m16627a();
        if (a instanceof NativeAppInstallAdMapper) {
            return new zzaoe((NativeAppInstallAdMapper) a);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void resume() throws RemoteException {
        Object obj = this.f24205a;
        if (obj instanceof MediationAdapter) {
            try {
                ((MediationAdapter) obj).onResume();
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void showInterstitial() throws RemoteException {
        if (this.f24205a instanceof MediationInterstitialAdapter) {
            zzbbq.m15858a("Showing interstitial from adapter.");
            try {
                ((MediationInterstitialAdapter) this.f24205a).showInterstitial();
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationInterstitialAdapter.class.getCanonicalName();
            String canonicalName2 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
            sb.append(canonicalName);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName2);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void showVideo() throws RemoteException {
        Object obj = this.f24205a;
        if (obj instanceof MediationRewardedVideoAdAdapter) {
            zzbbq.m15858a("Show rewarded video ad from adapter.");
            try {
                ((MediationRewardedVideoAdAdapter) this.f24205a).showVideo();
            } catch (Throwable th) {
                zzbbq.m15855b("", th);
                throw new RemoteException();
            }
        } else if (obj instanceof Adapter) {
            MediationRewardedAd mediationRewardedAd = this.f24209e;
            if (mediationRewardedAd != null) {
                mediationRewardedAd.showAd((Context) ObjectWrapper.m17021Q(this.f24208d));
            } else {
                zzbbq.m15856b("Can not show null mediated rewarded ad.");
                throw new RemoteException();
            }
        } else {
            String canonicalName = MediationRewardedVideoAdAdapter.class.getCanonicalName();
            String canonicalName2 = Adapter.class.getCanonicalName();
            String canonicalName3 = this.f24205a.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 26 + String.valueOf(canonicalName2).length() + String.valueOf(canonicalName3).length());
            sb.append(canonicalName);
            sb.append(" or ");
            sb.append(canonicalName2);
            sb.append(" #009 Class mismatch: ");
            sb.append(canonicalName3);
            zzbbq.m15852d(sb.toString());
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: x */
    public final void mo16536x(IObjectWrapper iObjectWrapper) throws RemoteException {
        Context context = (Context) ObjectWrapper.m17021Q(iObjectWrapper);
        Object obj = this.f24205a;
        if (obj instanceof OnContextChangedListener) {
            ((OnContextChangedListener) obj).onContextChanged(context);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final Bundle zztv() {
        Object obj = this.f24205a;
        if (obj instanceof zzbiw) {
            return ((zzbiw) obj).zztv();
        }
        String canonicalName = zzbiw.class.getCanonicalName();
        String canonicalName2 = this.f24205a.getClass().getCanonicalName();
        StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 22 + String.valueOf(canonicalName2).length());
        sb.append(canonicalName);
        sb.append(" #009 Class mismatch: ");
        sb.append(canonicalName2);
        zzbbq.m15852d(sb.toString());
        return new Bundle();
    }
}
