package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.ads.zzavy;
import com.google.android.gms.internal.ads.zzdzc;
import com.google.android.gms.internal.ads.zzent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3342a4;
import p131c.p161d.p170b.p224d.p252g.p253a.C3421c4;
import p131c.p161d.p170b.p224d.p252g.p253a.C3458d4;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC3379b4;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavy.class */
public final class zzavy implements zzawl {

    /* renamed from: n */
    public static List<Future<Void>> f24548n = Collections.synchronizedList(new ArrayList());

    /* renamed from: a */
    public final zzent.zzb.zza f24549a;

    /* renamed from: b */
    public final LinkedHashMap<String, zzent.zzb.zzh.C10503zzb> f24550b;

    /* renamed from: e */
    public final Context f24553e;

    /* renamed from: f */
    public final zzawn f24554f;

    /* renamed from: g */
    public boolean f24555g;

    /* renamed from: h */
    public final zzawg f24556h;

    /* renamed from: i */
    public final C3458d4 f24557i;

    /* renamed from: c */
    public final List<String> f24551c = new ArrayList();

    /* renamed from: d */
    public final List<String> f24552d = new ArrayList();

    /* renamed from: j */
    public final Object f24558j = new Object();

    /* renamed from: k */
    public HashSet<String> f24559k = new HashSet<>();

    /* renamed from: l */
    public boolean f24560l = false;

    /* renamed from: m */
    public boolean f24561m = false;

    public zzavy(Context context, zzbbx zzbbxVar, zzawg zzawgVar, String str, zzawn zzawnVar) {
        Preconditions.m17287a(zzawgVar, "SafeBrowsing config is not present.");
        this.f24553e = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f24550b = new LinkedHashMap<>();
        this.f24554f = zzawnVar;
        this.f24556h = zzawgVar;
        for (String str2 : zzawgVar.f24566e) {
            this.f24559k.add(str2.toLowerCase(Locale.ENGLISH));
        }
        this.f24559k.remove("cookie".toLowerCase(Locale.ENGLISH));
        zzent.zzb.zza q = zzent.zzb.m12296q();
        q.m12292a(zzent.zzb.zzg.OCTAGON_AD);
        q.m12288a(str);
        q.m12286b(str);
        zzent.zzb.C10499zzb.zza m = zzent.zzb.C10499zzb.m12278m();
        String str3 = this.f24556h.f24562a;
        if (str3 != null) {
            m.m12276a(str3);
        }
        q.m12294a((zzent.zzb.C10499zzb) ((zzejz) m.mo12342K()));
        zzent.zzb.zzi.zza m2 = zzent.zzb.zzi.m12223m();
        m2.m12219a(Wrappers.m17026b(this.f24553e).m17036a());
        String str4 = zzbbxVar.f24759a;
        if (str4 != null) {
            m2.m12220a(str4);
        }
        long b = GoogleApiAvailabilityLight.m17812a().m17803b(this.f24553e);
        if (b > 0) {
            m2.m12221a(b);
        }
        q.m12290a((zzent.zzb.zzi) ((zzejz) m2.mo12342K()));
        this.f24549a = q;
        this.f24557i = new C3458d4(this.f24553e, this.f24556h.f24569h, this);
    }

    /* renamed from: e */
    public static final /* synthetic */ Void m16272e(String str) {
        return null;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m16277a(Map map) throws Exception {
        if (map != null) {
            try {
                for (String str : map.keySet()) {
                    JSONArray optJSONArray = new JSONObject((String) map.get(str)).optJSONArray("matches");
                    if (optJSONArray != null) {
                        synchronized (this.f24558j) {
                            int length = optJSONArray.length();
                            zzent.zzb.zzh.C10503zzb d = m16274d(str);
                            if (d == null) {
                                String valueOf = String.valueOf(str);
                                zzawi.m16267a(valueOf.length() != 0 ? "Cannot find the corresponding resource object for ".concat(valueOf) : new String("Cannot find the corresponding resource object for "));
                            } else {
                                boolean z = false;
                                for (int i = 0; i < length; i++) {
                                    d.m12230b(optJSONArray.getJSONObject(i).getString("threat_type"));
                                }
                                boolean z2 = this.f24555g;
                                if (length > 0) {
                                    z = true;
                                }
                                this.f24555g = z | z2;
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (zzadc.f24010a.mo16862a().booleanValue()) {
                    zzbbq.m15857a("Failed to get SafeBrowsing metadata", e);
                }
                return zzdyq.m12987a((Throwable) new Exception("Safebrowsing report transmission failed."));
            }
        }
        if (this.f24555g) {
            synchronized (this.f24558j) {
                this.f24549a.m12292a(zzent.zzb.zzg.OCTAGON_AD_SB_MATCH);
            }
        }
        return m16273e();
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    /* renamed from: a */
    public final void mo16266a() {
        synchronized (this.f24558j) {
            zzdzc a = zzdyq.m12992a(this.f24554f.mo16258a(this.f24553e, this.f24550b.keySet()), new zzdya(this) { // from class: c.d.b.d.g.a.y3

                /* renamed from: a */
                public final zzavy f16090a;

                {
                    this.f16090a = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdya
                /* renamed from: d */
                public final zzdzc mo13006d(Object obj) {
                    return this.f16090a.m16277a((Map) obj);
                }
            }, zzbbz.f24769f);
            zzdzc a2 = zzdyq.m12994a(a, 10L, TimeUnit.SECONDS, zzbbz.f24767d);
            zzdyq.m12991a(a, new C3421c4(this, a2), zzbbz.f24769f);
            f24548n.add(a2);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m16278a(Bitmap bitmap) {
        zzeiy zzbei = zzeip.zzbei();
        bitmap.compress(Bitmap.CompressFormat.PNG, 0, zzbei);
        synchronized (this.f24558j) {
            zzent.zzb.zza zzaVar = this.f24549a;
            zzent.zzb.zzf.zza m = zzent.zzb.zzf.m12253m();
            m.m12251a(zzbei.m12533a());
            m.m12249a("image/png");
            m.m12250a(zzent.zzb.zzf.EnumC10502zzb.TYPE_CREATIVE);
            zzaVar.m12293a((zzent.zzb.zzf) ((zzejz) m.mo12342K()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    /* renamed from: a */
    public final void mo16265a(View view) {
        if (this.f24556h.f24564c && !this.f24560l) {
            zzp.m17969c();
            final Bitmap b = zzayu.m16107b(view);
            if (b == null) {
                zzawi.m16267a("Failed to capture the webview bitmap.");
                return;
            }
            this.f24560l = true;
            zzayu.m16123a(new Runnable(this, b) { // from class: c.d.b.d.g.a.z3

                /* renamed from: a */
                public final zzavy f16249a;

                /* renamed from: b */
                public final Bitmap f16250b;

                {
                    this.f16249a = this;
                    this.f16250b = b;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f16249a.m16278a(this.f16250b);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    /* renamed from: a */
    public final void mo16264a(String str) {
        synchronized (this.f24558j) {
            if (str == null) {
                this.f24549a.m12281s();
            } else {
                this.f24549a.m12285c(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    /* renamed from: a */
    public final void mo16263a(String str, Map<String, String> map, int i) {
        synchronized (this.f24558j) {
            if (i == 3) {
                try {
                    this.f24561m = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f24550b.containsKey(str)) {
                if (i == 3) {
                    this.f24550b.get(str).m12232a(zzent.zzb.zzh.zza.zzhw(i));
                }
                return;
            }
            zzent.zzb.zzh.C10503zzb o = zzent.zzb.zzh.m12236o();
            zzent.zzb.zzh.zza zzhw = zzent.zzb.zzh.zza.zzhw(i);
            if (zzhw != null) {
                o.m12232a(zzhw);
            }
            o.m12234a(this.f24550b.size());
            o.m12231a(str);
            zzent.zzb.zzd.zza m = zzent.zzb.zzd.m12265m();
            if (this.f24559k.size() > 0 && map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey() != null ? entry.getKey() : "";
                    String value = entry.getValue() != null ? entry.getValue() : "";
                    if (this.f24559k.contains(key.toLowerCase(Locale.ENGLISH))) {
                        zzent.zzb.zzc.zza m2 = zzent.zzb.zzc.m12271m();
                        m2.m12269a(zzeip.zzhu(key));
                        m2.m12268b(zzeip.zzhu(value));
                        m.m12263a((zzent.zzb.zzc) ((zzejz) m2.mo12342K()));
                    }
                }
            }
            o.m12233a((zzent.zzb.zzd) ((zzejz) m.mo12342K()));
            this.f24550b.put(str, o);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    /* renamed from: a */
    public final String[] mo16262a(String[] strArr) {
        return (String[]) this.f24557i.m27084a(strArr).toArray(new String[0]);
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    /* renamed from: b */
    public final void mo16261b() {
    }

    /* renamed from: b */
    public final void m16276b(String str) {
        synchronized (this.f24558j) {
            this.f24551c.add(str);
        }
    }

    /* renamed from: c */
    public final void m16275c(String str) {
        synchronized (this.f24558j) {
            this.f24552d.add(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    /* renamed from: c */
    public final boolean mo16260c() {
        return PlatformVersion.m17062f() && this.f24556h.f24564c && !this.f24560l;
    }

    @Override // com.google.android.gms.internal.ads.zzawl
    /* renamed from: d */
    public final zzawg mo16259d() {
        return this.f24556h;
    }

    /* renamed from: d */
    public final zzent.zzb.zzh.C10503zzb m16274d(String str) {
        zzent.zzb.zzh.C10503zzb zzbVar;
        synchronized (this.f24558j) {
            zzbVar = this.f24550b.get(str);
        }
        return zzbVar;
    }

    /* renamed from: e */
    public final zzdzc<Void> m16273e() {
        zzdzc<Void> a;
        if (!((this.f24555g && this.f24556h.f24568g) || (this.f24561m && this.f24556h.f24567f) || (!this.f24555g && this.f24556h.f24565d))) {
            return zzdyq.m12988a((Object) null);
        }
        synchronized (this.f24558j) {
            try {
                for (zzent.zzb.zzh.C10503zzb zzbVar : this.f24550b.values()) {
                    this.f24549a.m12291a((zzent.zzb.zzh) ((zzejz) zzbVar.mo12342K()));
                }
                this.f24549a.m12289a(this.f24551c);
                this.f24549a.m12287b(this.f24552d);
                if (zzawi.m16268a()) {
                    String p = this.f24549a.m12284p();
                    String r = this.f24549a.m12282r();
                    StringBuilder sb = new StringBuilder(String.valueOf(p).length() + 53 + String.valueOf(r).length());
                    sb.append("Sending SB report\n  url: ");
                    sb.append(p);
                    sb.append("\n  clickUrl: ");
                    sb.append(r);
                    sb.append("\n  resources: \n");
                    StringBuilder sb2 = new StringBuilder(sb.toString());
                    for (zzent.zzb.zzh zzhVar : this.f24549a.m12283q()) {
                        sb2.append("    [");
                        sb2.append(zzhVar.m12237n());
                        sb2.append("] ");
                        sb2.append(zzhVar.m12238m());
                    }
                    zzawi.m16267a(sb2.toString());
                }
                zzdzc<String> a2 = new zzbag(this.f24553e).m15973a(1, this.f24556h.f24563b, null, ((zzent.zzb) ((zzejz) this.f24549a.mo12342K())).mo12349c());
                if (zzawi.m16268a()) {
                    a2.mo12976a(RunnableC3379b4.f12331a, zzbbz.f24764a);
                }
                a = zzdyq.m12993a(a2, C3342a4.f12060a, zzbbz.f24769f);
            } catch (Throwable th) {
                throw th;
            }
        }
        return a;
    }
}
