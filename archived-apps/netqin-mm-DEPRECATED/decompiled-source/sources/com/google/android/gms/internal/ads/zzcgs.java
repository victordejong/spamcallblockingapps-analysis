package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzadw;
import com.google.android.gms.internal.ads.zzaee;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzbgj;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzcgs;
import com.google.android.gms.internal.ads.zzcgw;
import com.google.android.gms.internal.ads.zzchh;
import com.google.android.gms.internal.ads.zzcwn;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdok;
import com.google.android.gms.internal.ads.zzdpg;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgs.class */
public final class zzcgs {

    /* renamed from: a */
    public final zzdzb f25996a;

    /* renamed from: b */
    public final zzcgw f25997b;

    /* renamed from: c */
    public final zzchg f25998c;

    public zzcgs(zzdzb zzdzbVar, zzcgw zzcgwVar, zzchg zzchgVar) {
        this.f25996a = zzdzbVar;
        this.f25997b = zzcgwVar;
        this.f25998c = zzchgVar;
    }

    /* renamed from: a */
    public final zzdzc<zzcei> m14288a(final zzdog zzdogVar, final zzdnv zzdnvVar, final JSONObject jSONObject) {
        final zzdzc zzdzcVar;
        final zzdzc a = this.f25996a.mo12977a(new Callable(this, zzdogVar, zzdnvVar, jSONObject) { // from class: c.d.b.d.g.a.ki

            /* renamed from: a */
            public final zzcgs f13887a;

            /* renamed from: b */
            public final zzdog f13888b;

            /* renamed from: c */
            public final zzdnv f13889c;

            /* renamed from: d */
            public final JSONObject f13890d;

            {
                this.f13887a = this;
                this.f13888b = zzdogVar;
                this.f13889c = zzdnvVar;
                this.f13890d = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdog zzdogVar2 = this.f13888b;
                zzdnv zzdnvVar2 = this.f13889c;
                JSONObject jSONObject2 = this.f13890d;
                zzcei zzceiVar = new zzcei();
                zzceiVar.m14720a(jSONObject2.optInt("template_id", -1));
                zzceiVar.m14707a(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject = jSONObject2.optJSONObject("omid_settings");
                zzceiVar.m14697b(optJSONObject != null ? optJSONObject.optString("omid_partner_name") : null);
                zzdok zzdokVar = zzdogVar2.f27633a.f27632a;
                if (zzdokVar.f27645g.contains(Integer.toString(zzceiVar.m14682o()))) {
                    if (zzceiVar.m14682o() == 3) {
                        if (zzceiVar.m14692e() == null) {
                            throw new zzcwn(zzdpg.INTERNAL_ERROR, "No custom template id for custom template ad response.");
                        } else if (!zzdokVar.f27646h.contains(zzceiVar.m14692e())) {
                            throw new zzcwn(zzdpg.INTERNAL_ERROR, "Unexpected custom template id in the response.");
                        }
                    }
                    zzceiVar.m14722a(jSONObject2.optDouble("rating", -1.0d));
                    String optString = jSONObject2.optString("headline", null);
                    String str = optString;
                    if (zzdnvVar2.f27561H) {
                        zzp.m17969c();
                        String e = zzayu.m16094e();
                        StringBuilder sb = new StringBuilder(String.valueOf(e).length() + 3 + String.valueOf(optString).length());
                        sb.append(e);
                        sb.append(" : ");
                        sb.append(optString);
                        str = sb.toString();
                    }
                    zzceiVar.m14705a("headline", str);
                    zzceiVar.m14705a("body", jSONObject2.optString("body", null));
                    zzceiVar.m14705a("call_to_action", jSONObject2.optString("call_to_action", null));
                    zzceiVar.m14705a("store", jSONObject2.optString("store", null));
                    zzceiVar.m14705a("price", jSONObject2.optString("price", null));
                    zzceiVar.m14705a("advertiser", jSONObject2.optString("advertiser", null));
                    return zzceiVar;
                }
                zzdpg zzdpgVar = zzdpg.INTERNAL_ERROR;
                int o = zzceiVar.m14682o();
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Invalid template ID: ");
                sb2.append(o);
                throw new zzcwn(zzdpgVar, sb2.toString());
            }
        });
        final zzdzc<List<zzadq>> b = this.f25997b.m14278b(jSONObject, "images");
        final zzdzc<zzadq> a2 = this.f25997b.m14283a(jSONObject, "secondary_image");
        final zzdzc<zzadq> a3 = this.f25997b.m14283a(jSONObject, "app_icon");
        final zzdzc<zzadl> c = this.f25997b.m14276c(jSONObject, "attribution");
        final zzdzc<zzbgj> a4 = this.f25997b.m14284a(jSONObject);
        final zzcgw zzcgwVar = this.f25997b;
        if (!jSONObject.optBoolean("enable_omid")) {
            zzdzcVar = zzdyq.m12988a((Object) null);
        } else {
            JSONObject optJSONObject = jSONObject.optJSONObject("omid_settings");
            if (optJSONObject == null) {
                zzdzcVar = zzdyq.m12988a((Object) null);
            } else {
                final String optString = optJSONObject.optString("omid_html");
                zzdzcVar = TextUtils.isEmpty(optString) ? zzdyq.m12988a((Object) null) : zzdyq.m12992a(zzdyq.m12988a((Object) null), new zzdya(zzcgwVar, optString) { // from class: c.d.b.d.g.a.ri

                    /* renamed from: a */
                    public final zzcgw f15014a;

                    /* renamed from: b */
                    public final String f15015b;

                    {
                        this.f15014a = zzcgwVar;
                        this.f15015b = optString;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdya
                    /* renamed from: d */
                    public final zzdzc mo13006d(Object obj) {
                        return this.f15014a.m14286a(this.f15015b, obj);
                    }
                }, zzbbz.f24768e);
            }
        }
        final zzdzc<List<zzchh>> a5 = this.f25998c.m14273a(jSONObject, "custom_assets");
        return zzdyq.m12985a(a, b, a2, a3, c, a4, zzdzcVar, a5).m12979a(new Callable(this, a, b, a3, a2, c, jSONObject, a4, zzdzcVar, a5) { // from class: c.d.b.d.g.a.li

            /* renamed from: a */
            public final zzcgs f13970a;

            /* renamed from: b */
            public final zzdzc f13971b;

            /* renamed from: c */
            public final zzdzc f13972c;

            /* renamed from: d */
            public final zzdzc f13973d;

            /* renamed from: e */
            public final zzdzc f13974e;

            /* renamed from: f */
            public final zzdzc f13975f;

            /* renamed from: g */
            public final JSONObject f13976g;

            /* renamed from: h */
            public final zzdzc f13977h;

            /* renamed from: i */
            public final zzdzc f13978i;

            /* renamed from: j */
            public final zzdzc f13979j;

            {
                this.f13970a = this;
                this.f13971b = a;
                this.f13972c = b;
                this.f13973d = a3;
                this.f13974e = a2;
                this.f13975f = c;
                this.f13976g = jSONObject;
                this.f13977h = a4;
                this.f13978i = zzdzcVar;
                this.f13979j = a5;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdzc zzdzcVar2 = this.f13971b;
                zzdzc zzdzcVar3 = this.f13972c;
                zzdzc zzdzcVar4 = this.f13973d;
                zzdzc zzdzcVar5 = this.f13974e;
                zzdzc zzdzcVar6 = this.f13975f;
                JSONObject jSONObject2 = this.f13976g;
                zzdzc zzdzcVar7 = this.f13977h;
                zzdzc zzdzcVar8 = this.f13978i;
                zzdzc zzdzcVar9 = this.f13979j;
                zzcei zzceiVar = (zzcei) zzdzcVar2.get();
                zzceiVar.m14704a((List) zzdzcVar3.get());
                zzceiVar.m14716a((zzaee) zzdzcVar4.get());
                zzceiVar.m14701b((zzaee) zzdzcVar5.get());
                zzceiVar.m14717a((zzadw) zzdzcVar6.get());
                zzceiVar.m14696b(zzcgw.m14279b(jSONObject2));
                zzceiVar.m14708a(zzcgw.m14277c(jSONObject2));
                zzbgj zzbgjVar = (zzbgj) zzdzcVar7.get();
                if (zzbgjVar != null) {
                    zzceiVar.m14712a(zzbgjVar);
                    zzceiVar.m14719a(zzbgjVar.getView());
                    zzceiVar.m14711a(zzbgjVar.mo15558i());
                }
                zzbgj zzbgjVar2 = (zzbgj) zzdzcVar8.get();
                if (zzbgjVar2 != null) {
                    zzceiVar.m14698b(zzbgjVar2);
                }
                for (zzchh zzchhVar : (List) zzdzcVar9.get()) {
                    int i = zzchhVar.f26024a;
                    if (i == 1) {
                        zzceiVar.m14705a(zzchhVar.f26025b, zzchhVar.f26026c);
                    } else if (i == 2) {
                        zzceiVar.m14706a(zzchhVar.f26025b, zzchhVar.f26027d);
                    }
                }
                return zzceiVar;
            }
        }, this.f25996a);
    }
}
