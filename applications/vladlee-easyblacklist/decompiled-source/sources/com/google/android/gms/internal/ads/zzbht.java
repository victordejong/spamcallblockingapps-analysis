package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbht.class */
public final class zzbht extends zzwj {

    /* renamed from: a */
    private final Context f11892a;

    /* renamed from: b */
    private final zzazb f11893b;

    /* renamed from: c */
    private final zzcka f11894c;

    /* renamed from: d */
    private final zzcis<zzdac, zzcjx> f11895d;

    /* renamed from: e */
    private final zzcob f11896e;

    /* renamed from: f */
    private final zzceq f11897f;

    /* renamed from: g */
    private final zzatv f11898g;

    /* renamed from: h */
    private boolean f11899h = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbht(Context context, zzazb zzazbVar, zzcka zzckaVar, zzcis<zzdac, zzcjx> zzcisVar, zzcob zzcobVar, zzceq zzceqVar, zzatv zzatvVar) {
        this.f11892a = context;
        this.f11893b = zzazbVar;
        this.f11894c = zzckaVar;
        this.f11895d = zzcisVar;
        this.f11896e = zzcobVar;
        this.f11897f = zzceqVar;
        this.f11898g = zzatvVar;
    }

    /* renamed from: a */
    private final String m4046a() {
        Context applicationContext = this.f11892a.getApplicationContext();
        Context context = this.f11892a;
        if (applicationContext != null) {
            context = context.getApplicationContext();
        }
        try {
            String string = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData.getString("com.google.android.gms.ads.APPLICATION_ID");
            return TextUtils.isEmpty(string) ? "" : (string.matches("^ca-app-pub-[0-9]{16}~[0-9]{10}$") || string.matches("^/\\d+~.+$")) ? string : "";
        } catch (PackageManager.NameNotFoundException | NullPointerException e) {
            zzavs.zza("Error getting metadata", e);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4045a(Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map<String, zzakx> zzvn = zzq.zzku().zzvf().zzwa().zzvn();
        if (!(zzvn == null || zzvn.isEmpty())) {
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    zzavs.zzd("Could not initialize rewarded ads.", th);
                    return;
                }
            }
            if (this.f11894c.zzamf()) {
                HashMap hashMap = new HashMap();
                for (zzakx zzakxVar : zzvn.values()) {
                    for (zzaky zzakyVar : zzakxVar.zzdbo) {
                        String str = zzakyVar.zzdct;
                        for (String str2 : zzakyVar.zzdcl) {
                            if (!hashMap.containsKey(str2)) {
                                hashMap.put(str2, new ArrayList());
                            }
                            if (str != null) {
                                ((Collection) hashMap.get(str2)).add(str);
                            }
                        }
                    }
                }
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry entry : hashMap.entrySet()) {
                    String str3 = (String) entry.getKey();
                    try {
                        zzcip<zzdac, zzcjx> zzd = this.f11895d.zzd(str3, jSONObject);
                        if (zzd != null) {
                            zzdac zzdacVar = zzd.zzddn;
                            if (!zzdacVar.isInitialized() && zzdacVar.zzsp()) {
                                zzdacVar.zza(this.f11892a, zzd.zzfyf, (List) entry.getValue());
                                String valueOf = String.valueOf(str3);
                                zzavs.zzea(valueOf.length() != 0 ? "Initialized rewarded video mediation adapter ".concat(valueOf) : new String("Initialized rewarded video mediation adapter "));
                            }
                        }
                    } catch (zzdab e) {
                        StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 56);
                        sb.append("Failed to initialize rewarded video mediation adapter \"");
                        sb.append(str3);
                        sb.append("\"");
                        zzavs.zzd(sb.toString(), e);
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final String getVersionString() {
        return this.f11893b.zzbma;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void initialize() {
        synchronized (this) {
            if (this.f11899h) {
                zzavs.zzez("Mobile ads is initialized already.");
                return;
            }
            zzzn.initialize(this.f11892a);
            zzq.zzku().zzd(this.f11892a, this.f11893b);
            zzq.zzkw().initialize(this.f11892a);
            this.f11899h = true;
            this.f11897f.zzall();
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcko)).booleanValue()) {
                this.f11896e.zzamj();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void setAppMuted(boolean z) {
        synchronized (this) {
            zzq.zzkv().setAppMuted(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void setAppVolume(float f) {
        synchronized (this) {
            zzq.zzkv().setAppVolume(f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(zzagu zzaguVar) {
        this.f11897f.zzb(zzaguVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(zzalc zzalcVar) {
        this.f11894c.zzb(zzalcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(zzyq zzyqVar) {
        this.f11898g.zza(this.f11892a, zzyqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zza(String str, IObjectWrapper iObjectWrapper) {
        zzzn.initialize(this.f11892a);
        String a = ((Boolean) zzve.zzoy().zzd(zzzn.zzcms)).booleanValue() ? m4046a() : "";
        if (!TextUtils.isEmpty(a)) {
            str = a;
        }
        if (!TextUtils.isEmpty(str)) {
            boolean booleanValue = ((Boolean) zzve.zzoy().zzd(zzzn.zzcmr)).booleanValue() | ((Boolean) zzve.zzoy().zzd(zzzn.zzcix)).booleanValue();
            Runnable runnable = null;
            if (((Boolean) zzve.zzoy().zzd(zzzn.zzcix)).booleanValue()) {
                booleanValue = true;
                final Runnable runnable2 = (Runnable) ObjectWrapper.unwrap(iObjectWrapper);
                runnable = new Runnable(this, runnable2) { // from class: com.google.android.gms.internal.ads.ks

                    /* renamed from: a */
                    private final zzbht f10144a;

                    /* renamed from: b */
                    private final Runnable f10145b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10144a = this;
                        this.f10145b = runnable2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzazd.zzdwi.execute(new Runnable(this.f10144a, this.f10145b) { // from class: com.google.android.gms.internal.ads.kr

                            /* renamed from: a */
                            private final zzbht f10142a;

                            /* renamed from: b */
                            private final Runnable f10143b;

                            /* JADX INFO: Access modifiers changed from: package-private */
                            {
                                this.f10142a = r4;
                                this.f10143b = r5;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f10142a.m4045a(this.f10143b);
                            }
                        });
                    }
                };
            }
            if (booleanValue) {
                zzq.zzky().zza(this.f11892a, this.f11893b, str, runnable);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zzb(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzavs.zzex("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            zzavs.zzex("Context is null. Failed to open debug menu.");
            return;
        }
        zzawt zzawtVar = new zzawt(context);
        zzawtVar.setAdUnitId(str);
        zzawtVar.zzx(this.f11893b.zzbma);
        zzawtVar.showDialog();
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zzcd(String str) {
        synchronized (this) {
            zzzn.initialize(this.f11892a);
            if (!TextUtils.isEmpty(str)) {
                if (((Boolean) zzve.zzoy().zzd(zzzn.zzcmr)).booleanValue()) {
                    zzq.zzky().zza(this.f11892a, this.f11893b, str, (Runnable) null);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final void zzce(String str) {
        this.f11896e.zzgi(str);
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final float zzpe() {
        float zzpe;
        synchronized (this) {
            zzpe = zzq.zzkv().zzpe();
        }
        return zzpe;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final boolean zzpf() {
        boolean zzpf;
        synchronized (this) {
            zzpf = zzq.zzkv().zzpf();
        }
        return zzpf;
    }

    @Override // com.google.android.gms.internal.ads.zzwk
    public final List<zzagn> zzpg() {
        return this.f11897f.zzalm();
    }
}
