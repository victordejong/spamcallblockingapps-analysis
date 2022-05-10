package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzzd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p131c.p161d.p170b.p224d.p252g.p253a.ai0;
import p131c.p161d.p170b.p224d.p252g.p253a.gi0;
import p131c.p161d.p170b.p224d.p252g.p253a.zh0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzd.class */
public class zzzd {

    /* renamed from: i */
    public static zzzd f29159i;

    /* renamed from: c */
    public zzxs f29162c;

    /* renamed from: f */
    public RewardedVideoAd f29165f;

    /* renamed from: h */
    public InitializationStatus f29167h;

    /* renamed from: b */
    public final Object f29161b = new Object();

    /* renamed from: d */
    public boolean f29163d = false;

    /* renamed from: e */
    public boolean f29164e = false;

    /* renamed from: g */
    public RequestConfiguration f29166g = new RequestConfiguration.Builder().m18095a();

    /* renamed from: a */
    public ArrayList<OnInitializationCompleteListener> f29160a = new ArrayList<>();

    /* renamed from: com.google.android.gms.internal.ads.zzzd$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzd$a.class */
    public final class BinderC7266a extends zzaiw {
        public BinderC7266a() {
        }

        public /* synthetic */ BinderC7266a(zzzd zzzdVar, gi0 gi0Var) {
            this();
        }

        @Override // com.google.android.gms.internal.ads.zzait
        /* renamed from: f */
        public final void mo10990f(List<zzaiq> list) throws RemoteException {
            int i = 0;
            zzzd.this.f29163d = false;
            zzzd.this.f29164e = true;
            zzzd zzzdVar = zzzd.this;
            InitializationStatus a = zzzd.m10996a(list);
            ArrayList arrayList = zzzd.m10991d().f29160a;
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((OnInitializationCompleteListener) obj).m18026a(a);
            }
            zzzd.m10991d().f29160a.clear();
        }
    }

    /* renamed from: a */
    public static InitializationStatus m10996a(List<zzaiq> list) {
        HashMap hashMap = new HashMap();
        for (zzaiq zzaiqVar : list) {
            hashMap.put(zzaiqVar.f24137a, new zzaiy(zzaiqVar.f24138b ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzaiqVar.f24140d, zzaiqVar.f24139c));
        }
        return new zzaix(hashMap);
    }

    /* renamed from: d */
    public static zzzd m10991d() {
        zzzd zzzdVar;
        synchronized (zzzd.class) {
            try {
                if (f29159i == null) {
                    f29159i = new zzzd();
                }
                zzzdVar = f29159i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzzdVar;
    }

    /* renamed from: a */
    public final InitializationStatus m11004a() {
        synchronized (this.f29161b) {
            Preconditions.m17279b(this.f29162c != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                if (this.f29167h != null) {
                    return this.f29167h;
                }
                return m10996a(this.f29162c.mo10935S1());
            } catch (RemoteException e) {
                zzbbq.m15856b("Unable to get Initialization status.");
                return null;
            }
        }
    }

    /* renamed from: a */
    public final RewardedVideoAd m11003a(Context context) {
        synchronized (this.f29161b) {
            if (this.f29165f != null) {
                return this.f29165f;
            }
            zzauo zzauoVar = new zzauo(context, new ai0(zzwm.m11169b(), context, new zzanc()).m27117a(context, false));
            this.f29165f = zzauoVar;
            return zzauoVar;
        }
    }

    /* renamed from: a */
    public final void m11002a(final Context context, String str, final OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.f29161b) {
            if (this.f29163d) {
                if (onInitializationCompleteListener != null) {
                    m10991d().f29160a.add(onInitializationCompleteListener);
                }
            } else if (this.f29164e) {
                if (onInitializationCompleteListener != null) {
                    onInitializationCompleteListener.m18026a(m11004a());
                }
            } else {
                this.f29163d = true;
                if (onInitializationCompleteListener != null) {
                    m10991d().f29160a.add(onInitializationCompleteListener);
                }
                if (context != null) {
                    try {
                        zzamt.m16651a().m16648a(context, str);
                        m10994b(context);
                        if (onInitializationCompleteListener != null) {
                            this.f29162c.mo10931a(new BinderC7266a(this, null));
                        }
                        this.f29162c.mo10930a(new zzanc());
                        this.f29162c.initialize();
                        this.f29162c.mo10929b(str, ObjectWrapper.m17020a(new Runnable(this, context) { // from class: c.d.b.d.g.a.di0

                            /* renamed from: a */
                            public final zzzd f12756a;

                            /* renamed from: b */
                            public final Context f12757b;

                            {
                                this.f12756a = this;
                                this.f12757b = context;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f12756a.m11003a(this.f12757b);
                            }
                        }));
                        if (!(this.f29166g.m18098b() == -1 && this.f29166g.m18097c() == -1)) {
                            m11001a(this.f29166g);
                        }
                        zzabb.m16916a(context);
                        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23917y2)).booleanValue() && !m10992c().endsWith("0")) {
                            zzbbq.m15856b("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                            this.f29167h = new InitializationStatus(this) { // from class: c.d.b.d.g.a.ei0
                            };
                            if (onInitializationCompleteListener != null) {
                                zzbbg.f24738b.post(new Runnable(this, onInitializationCompleteListener) { // from class: c.d.b.d.g.a.fi0

                                    /* renamed from: a */
                                    public final zzzd f12977a;

                                    /* renamed from: b */
                                    public final OnInitializationCompleteListener f12978b;

                                    {
                                        this.f12977a = this;
                                        this.f12978b = onInitializationCompleteListener;
                                    }

                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f12977a.m11000a(this.f12978b);
                                    }
                                });
                            }
                        }
                    } catch (RemoteException e) {
                        zzbbq.m15853c("MobileAdsSettingManager initialization failed", e);
                    }
                    return;
                }
                throw new IllegalArgumentException("Context cannot be null.");
            }
        }
    }

    /* renamed from: a */
    public final void m11001a(RequestConfiguration requestConfiguration) {
        try {
            this.f29162c.mo10932a(new zzaae(requestConfiguration));
        } catch (RemoteException e) {
            zzbbq.m15855b("Unable to set request configuration parcel.", e);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m11000a(OnInitializationCompleteListener onInitializationCompleteListener) {
        onInitializationCompleteListener.m18026a(this.f29167h);
    }

    /* renamed from: b */
    public final RequestConfiguration m10995b() {
        return this.f29166g;
    }

    /* renamed from: b */
    public final void m10994b(Context context) {
        if (this.f29162c == null) {
            this.f29162c = new zh0(zzwm.m11169b(), context).m27117a(context, false);
        }
    }

    /* renamed from: c */
    public final String m10992c() {
        String c;
        synchronized (this.f29161b) {
            Preconditions.m17279b(this.f29162c != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                c = zzdwf.m13087c(this.f29162c.mo10926n1());
            } catch (RemoteException e) {
                zzbbq.m15855b("Unable to get version string.", e);
                return "";
            }
        }
        return c;
    }
}
