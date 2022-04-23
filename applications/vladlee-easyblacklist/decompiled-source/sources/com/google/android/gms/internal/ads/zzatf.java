package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzdvx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzatf.class */
public final class zzatf implements zzato {

    /* renamed from: a */
    private static List<Future<Void>> f11353a = Collections.synchronizedList(new ArrayList());

    /* renamed from: b */
    private final zzdwi f11354b;

    /* renamed from: c */
    private final LinkedHashMap<String, zzdwm> f11355c;

    /* renamed from: f */
    private final Context f11358f;

    /* renamed from: g */
    private final zzatq f11359g;

    /* renamed from: h */
    private boolean f11360h;

    /* renamed from: i */
    private final zzatn f11361i;

    /* renamed from: j */
    private final C1827ds f11362j;

    /* renamed from: d */
    private final List<String> f11356d = new ArrayList();

    /* renamed from: e */
    private final List<String> f11357e = new ArrayList();

    /* renamed from: k */
    private final Object f11363k = new Object();

    /* renamed from: l */
    private HashSet<String> f11364l = new HashSet<>();

    /* renamed from: m */
    private boolean f11365m = false;

    /* renamed from: n */
    private boolean f11366n = false;

    /* renamed from: o */
    private boolean f11367o = false;

    public zzatf(Context context, zzazb zzazbVar, zzatn zzatnVar, String str, zzatq zzatqVar) {
        Preconditions.checkNotNull(zzatnVar, "SafeBrowsing config is not present.");
        this.f11358f = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f11355c = new LinkedHashMap<>();
        this.f11359g = zzatqVar;
        this.f11361i = zzatnVar;
        for (String str2 : this.f11361i.zzdow) {
            this.f11364l.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.f11364l.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzdwi zzdwiVar = new zzdwi();
        zzdwiVar.zzhxr = zzdvx.zzb.zzg.OCTAGON_AD;
        zzdwiVar.url = str;
        zzdwiVar.zzhxt = str;
        zzdvx.zzb.C3498zzb.zza zzbcw = zzdvx.zzb.C3498zzb.zzbcw();
        if (this.f11361i.zzdos != null) {
            zzbcw.zzhl(this.f11361i.zzdos);
        }
        zzdwiVar.zzhxv = (zzdvx.zzb.C3498zzb) ((zzdrt) zzbcw.zzbaf());
        zzdvx.zzb.zzi.zza zzbs = zzdvx.zzb.zzi.zzbdg().zzbs(Wrappers.packageManager(this.f11358f).isCallerInstantApp());
        if (zzazbVar.zzbma != null) {
            zzbs.zzho(zzazbVar.zzbma);
        }
        long apkVersion = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.f11358f);
        if (apkVersion > 0) {
            zzbs.zzfu(apkVersion);
        }
        zzdwiVar.zzhyf = (zzdvx.zzb.zzi) ((zzdrt) zzbs.zzbaf());
        this.f11354b = zzdwiVar;
        this.f11362j = new C1827ds(this.f11358f, this.f11361i.zzdoz, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ Void m4297a() {
        return null;
    }

    /* renamed from: c */
    private final zzdhe<Void> m4290c() {
        zzdhe<Void> zzb;
        zzdwm[] zzdwmVarArr;
        if (!((this.f11360h && this.f11361i.zzdoy) || (this.f11367o && this.f11361i.zzdox) || (!this.f11360h && this.f11361i.zzdov))) {
            return zzdgs.zzaj(null);
        }
        synchronized (this.f11363k) {
            this.f11354b.zzhxw = new zzdwm[this.f11355c.size()];
            this.f11355c.values().toArray(this.f11354b.zzhxw);
            this.f11354b.zzhyg = (String[]) this.f11356d.toArray(new String[0]);
            this.f11354b.zzhyh = (String[]) this.f11357e.toArray(new String[0]);
            if (zzatp.isEnabled()) {
                String str = this.f11354b.url;
                String str2 = this.f11354b.zzhxx;
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 53 + String.valueOf(str2).length());
                sb.append("Sending SB report\n  url: ");
                sb.append(str);
                sb.append("\n  clickUrl: ");
                sb.append(str2);
                sb.append("\n  resources: \n");
                StringBuilder sb2 = new StringBuilder(sb.toString());
                for (zzdwm zzdwmVar : this.f11354b.zzhxw) {
                    sb2.append("    [");
                    sb2.append(zzdwmVar.zzhzf.length);
                    sb2.append("] ");
                    sb2.append(zzdwmVar.url);
                }
                zzatp.zzea(sb2.toString());
            }
            zzdhe<String> zza = new zzaxk(this.f11358f).zza(1, this.f11361i.zzdot, null, zzdvt.zza(this.f11354b));
            if (zzatp.isEnabled()) {
                zza.addListener(new RunnableC1825dq(), zzazd.zzdwe);
            }
            zzb = zzdgs.zzb(zza, C1824dp.f8395a, zzazd.zzdwj);
        }
        return zzb;
    }

    /* renamed from: c */
    private final zzdwm m4289c(String str) {
        zzdwm zzdwmVar;
        synchronized (this.f11363k) {
            zzdwmVar = this.f11355c.get(str);
        }
        return zzdwmVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m4294a(Map map) {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.f11363k) {
                            int length = optJSONArray.length();
                            zzdwm c = m4289c(str);
                            if (c == null) {
                                String valueOf = String.valueOf(str);
                                zzatp.zzea(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                c.zzhzf = new String[length];
                                boolean z = false;
                                for (int i = 0; i < length; i++) {
                                    c.zzhzf[i] = optJSONArray.getJSONObject(i).getString("threat_type");
                                }
                                boolean z2 = this.f11360h;
                                if (length > 0) {
                                    z = true;
                                }
                                this.f11360h = z | z2;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (zzabf.zzcud.get().booleanValue()) {
                    zzavs.zzb("Failed to get SafeBrowsing metadata", e);
                }
                return zzdgs.zzk(new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.f11360h) {
            synchronized (this.f11363k) {
                this.f11354b.zzhxr = zzdvx.zzb.zzg.OCTAGON_AD_SB_MATCH;
            }
        }
        return m4290c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m4295a(String str) {
        synchronized (this.f11363k) {
            this.f11356d.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m4291b(String str) {
        synchronized (this.f11363k) {
            this.f11357e.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final void zza(String str, Map<String, String> map, int i) {
        synchronized (this.f11363k) {
            if (i == 3) {
                this.f11367o = true;
            }
            if (this.f11355c.containsKey(str)) {
                if (i == 3) {
                    this.f11355c.get(str).zzhze = zzdvx.zzb.zzh.zza.zzhg(i);
                }
                return;
            }
            zzdwm zzdwmVar = new zzdwm();
            zzdwmVar.zzhze = zzdvx.zzb.zzh.zza.zzhg(i);
            zzdwmVar.zzhyy = Integer.valueOf(this.f11355c.size());
            zzdwmVar.url = str;
            zzdwmVar.zzhyz = new zzdwk();
            if (this.f11364l.size() > 0 && map != null) {
                ArrayList arrayList = new ArrayList();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.f11364l.contains(key.toLowerCase(Locale.ENGLISH))) {
                        arrayList.add((zzdvx.zzb.zzc) ((zzdrt) zzdvx.zzb.zzc.zzbcy().zzbk(zzdqk.zzhf(key)).zzbl(zzdqk.zzhf(value)).zzbaf()));
                    }
                }
                zzdvx.zzb.zzc[] zzcVarArr = new zzdvx.zzb.zzc[arrayList.size()];
                arrayList.toArray(zzcVarArr);
                zzdwmVar.zzhyz.zzhyl = zzcVarArr;
            }
            this.f11355c.put(str, zzdwmVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final String[] zza(String[] strArr) {
        return (String[]) this.f11362j.m4735a(strArr).toArray(new String[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final void zzdv(String str) {
        synchronized (this.f11363k) {
            this.f11354b.zzhxx = str;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final void zzj(View view) {
        if (this.f11361i.zzdou && !this.f11366n) {
            zzq.zzkq();
            Bitmap zzl = zzawb.zzl(view);
            if (zzl == null) {
                zzatp.zzea("Failed to capture the webview bitmap.");
                return;
            }
            this.f11366n = true;
            zzawb.zzc(new RunnableC1823do(this, zzl));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final zzatn zzuk() {
        return this.f11361i;
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final boolean zzul() {
        return PlatformVersion.isAtLeastKitKat() && this.f11361i.zzdou && !this.f11366n;
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final void zzum() {
        this.f11365m = true;
    }

    @Override // com.google.android.gms.internal.ads.zzato
    public final void zzun() {
        synchronized (this.f11363k) {
            zzdhe zzb = zzdgs.zzb(this.f11359g.zza(this.f11358f, this.f11355c.keySet()), new zzdgf(this) { // from class: com.google.android.gms.internal.ads.dn

                /* renamed from: a */
                private final zzatf f8392a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8392a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdgf
                public final zzdhe zzf(Object obj) {
                    return this.f8392a.m4294a((Map) obj);
                }
            }, zzazd.zzdwj);
            zzdhe zza = zzdgs.zza(zzb, 10L, TimeUnit.SECONDS, zzazd.zzdwh);
            zzdgs.zza(zzb, new C1826dr(zza), zzazd.zzdwj);
            f11353a.add(zza);
        }
    }
}
