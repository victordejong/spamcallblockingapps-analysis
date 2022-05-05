package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxq.class */
public final class zzxq {

    /* renamed from: a */
    private static zzxq f15677a;

    /* renamed from: b */
    private static final Object f15678b = new Object();

    /* renamed from: c */
    private zzwk f15679c;

    /* renamed from: d */
    private RewardedVideoAd f15680d;

    /* renamed from: e */
    private RequestConfiguration f15681e = new RequestConfiguration.Builder().build();

    /* renamed from: f */
    private InitializationStatus f15682f;

    private zzxq() {
    }

    /* renamed from: a */
    private final void m2967a(RequestConfiguration requestConfiguration) {
        try {
            this.f15679c.zza(new zzyq(requestConfiguration));
        } catch (RemoteException e) {
            zzayu.zzc("Unable to set request configuration parcel.", e);
        }
    }

    /* renamed from: a */
    private final boolean m2968a() {
        try {
            return this.f15679c.getVersionString().endsWith("0");
        } catch (RemoteException e) {
            zzayu.zzex("Unable to get version string.");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static InitializationStatus m2964b(List<zzagn> list) {
        HashMap hashMap = new HashMap();
        for (zzagn zzagnVar : list) {
            hashMap.put(zzagnVar.zzcyc, new zzagv(zzagnVar.zzcyd ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzagnVar.description, zzagnVar.zzcye));
        }
        return new zzagy(hashMap);
    }

    public static zzxq zzpw() {
        zzxq zzxqVar;
        synchronized (f15678b) {
            if (f15677a == null) {
                f15677a = new zzxq();
            }
            zzxqVar = f15677a;
        }
        return zzxqVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m2966a(OnInitializationCompleteListener onInitializationCompleteListener) {
        onInitializationCompleteListener.onInitializationComplete(this.f15682f);
    }

    public final InitializationStatus getInitializationStatus() {
        Preconditions.checkState(this.f15679c != null, "MobileAds.initialize() must be called prior to getting initialization status.");
        try {
            return this.f15682f != null ? this.f15682f : m2964b(this.f15679c.zzpg());
        } catch (RemoteException e) {
            zzayu.zzex("Unable to get Initialization status.");
            return null;
        }
    }

    public final RequestConfiguration getRequestConfiguration() {
        return this.f15681e;
    }

    public final RewardedVideoAd getRewardedVideoAdInstance(Context context) {
        synchronized (f15678b) {
            if (this.f15680d != null) {
                return this.f15680d;
            }
            this.f15680d = new zzarw(context, new arv(zzve.zzov(), context, new zzakz()).m4754a(context, false));
            return this.f15680d;
        }
    }

    public final String getVersionString() {
        Preconditions.checkState(this.f15679c != null, "MobileAds.initialize() must be called prior to getting version string.");
        try {
            return this.f15679c.getVersionString();
        } catch (RemoteException e) {
            zzayu.zzc("Unable to get version string.", e);
            return "";
        }
    }

    public final void openDebugMenu(Context context, String str) {
        Preconditions.checkState(this.f15679c != null, "MobileAds.initialize() must be called prior to opening debug menu.");
        try {
            this.f15679c.zzb(ObjectWrapper.wrap(context), str);
        } catch (RemoteException e) {
            zzayu.zzc("Unable to open debug menu.", e);
        }
    }

    public final void registerRtbAdapter(Class<? extends RtbAdapter> cls) {
        try {
            this.f15679c.zzce(cls.getCanonicalName());
        } catch (RemoteException e) {
            zzayu.zzc("Unable to register RtbAdapter", e);
        }
    }

    public final void setAppMuted(boolean z) {
        Preconditions.checkState(this.f15679c != null, "MobileAds.initialize() must be called prior to setting app muted state.");
        try {
            this.f15679c.setAppMuted(z);
        } catch (RemoteException e) {
            zzayu.zzc("Unable to set app mute state.", e);
        }
    }

    public final void setAppVolume(float f) {
        boolean z = true;
        Preconditions.checkArgument(0.0f <= f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        if (this.f15679c == null) {
            z = false;
        }
        Preconditions.checkState(z, "MobileAds.initialize() must be called prior to setting the app volume.");
        try {
            this.f15679c.setAppVolume(f);
        } catch (RemoteException e) {
            zzayu.zzc("Unable to set app volume.", e);
        }
    }

    public final void setRequestConfiguration(RequestConfiguration requestConfiguration) {
        Preconditions.checkArgument(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        RequestConfiguration requestConfiguration2 = this.f15681e;
        this.f15681e = requestConfiguration;
        if (this.f15679c != null) {
            if (requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) {
                m2967a(requestConfiguration);
            }
        }
    }

    public final void zza(final Context context, String str, zzxv zzxvVar, final OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (f15678b) {
            if (this.f15679c == null) {
                if (context != null) {
                    try {
                        zzaku.zzsj().zzc(context, str);
                        this.f15679c = new arq(zzve.zzov(), context).m4754a(context, false);
                        if (onInitializationCompleteListener != null) {
                            this.f15679c.zza(new asa(this, onInitializationCompleteListener, (byte) 0));
                        }
                        this.f15679c.zza(new zzakz());
                        this.f15679c.initialize();
                        this.f15679c.zza(str, ObjectWrapper.wrap(new Runnable(this, context) { // from class: com.google.android.gms.internal.ads.arx

                            /* renamed from: a */
                            private final zzxq f8242a;

                            /* renamed from: b */
                            private final Context f8243b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f8242a = this;
                                this.f8243b = context;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f8242a.getRewardedVideoAdInstance(this.f8243b);
                            }
                        }));
                        if (!(this.f15681e.getTagForChildDirectedTreatment() == -1 && this.f15681e.getTagForUnderAgeOfConsent() == -1)) {
                            m2967a(this.f15681e);
                        }
                        zzzn.initialize(context);
                        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcom)).booleanValue() && !m2968a()) {
                            zzayu.zzex("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                            this.f15682f = new InitializationStatus(this) { // from class: com.google.android.gms.internal.ads.ary

                                /* renamed from: a */
                                private final zzxq f8244a;

                                /* JADX INFO: Access modifiers changed from: package-private */
                                {
                                    this.f8244a = this;
                                }

                                @Override // com.google.android.gms.ads.initialization.InitializationStatus
                                public final Map getAdapterStatusMap() {
                                    HashMap hashMap = new HashMap();
                                    hashMap.put("com.google.android.gms.ads.MobileAds", new asb());
                                    return hashMap;
                                }
                            };
                            if (onInitializationCompleteListener != null) {
                                zzayk.zzyu.post(new Runnable(this, onInitializationCompleteListener) { // from class: com.google.android.gms.internal.ads.arz

                                    /* renamed from: a */
                                    private final zzxq f8245a;

                                    /* renamed from: b */
                                    private final OnInitializationCompleteListener f8246b;

                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    {
                                        this.f8245a = this;
                                        this.f8246b = onInitializationCompleteListener;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f8245a.m2966a(this.f8246b);
                                    }
                                });
                            }
                        }
                    } catch (RemoteException e) {
                        zzayu.zzd("MobileAdsSettingManager initialization failed", e);
                    }
                    return;
                }
                throw new IllegalArgumentException("Context cannot be null.");
            }
        }
    }

    public final float zzpe() {
        zzwk zzwkVar = this.f15679c;
        float f = 1.0f;
        if (zzwkVar == null) {
            return 1.0f;
        }
        try {
            f = zzwkVar.zzpe();
        } catch (RemoteException e) {
            zzayu.zzc("Unable to get app volume.", e);
        }
        return f;
    }

    public final boolean zzpf() {
        zzwk zzwkVar = this.f15679c;
        boolean z = false;
        if (zzwkVar == null) {
            return false;
        }
        try {
            z = zzwkVar.zzpf();
        } catch (RemoteException e) {
            zzayu.zzc("Unable to get app mute state.", e);
        }
        return z;
    }
}
