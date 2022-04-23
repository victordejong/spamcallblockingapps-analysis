package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzq;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyq.class */
public final class zzbyq {

    /* renamed from: a */
    private final zzdhd f12727a;

    /* renamed from: b */
    private final zzbyu f12728b;

    /* renamed from: c */
    private final zzbze f12729c;

    public zzbyq(zzdhd zzdhdVar, zzbyu zzbyuVar, zzbze zzbzeVar) {
        this.f12727a = zzdhdVar;
        this.f12728b = zzbyuVar;
        this.f12729c = zzbzeVar;
    }

    public final zzdhe<zzbws> zza(final zzczt zzcztVar, final zzczl zzczlVar, final JSONObject jSONObject) {
        final zzdhe zzdheVar;
        JSONObject optJSONObject;
        final zzdhe zzd = this.f12727a.zzd(new Callable(this, zzcztVar, zzczlVar, jSONObject) { // from class: com.google.android.gms.internal.ads.om

            /* renamed from: a */
            private final zzbyq f10280a;

            /* renamed from: b */
            private final zzczt f10281b;

            /* renamed from: c */
            private final zzczl f10282c;

            /* renamed from: d */
            private final JSONObject f10283d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10280a = this;
                this.f10281b = zzcztVar;
                this.f10282c = zzczlVar;
                this.f10283d = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzczt zzcztVar2 = this.f10281b;
                zzczl zzczlVar2 = this.f10282c;
                JSONObject jSONObject2 = this.f10283d;
                zzbws zzbwsVar = new zzbws();
                zzbwsVar.zzdj(jSONObject2.optInt("template_id", -1));
                zzbwsVar.zzfw(jSONObject2.optString("custom_template_id"));
                JSONObject optJSONObject2 = jSONObject2.optJSONObject("omid_settings");
                zzbwsVar.zzfx(optJSONObject2 != null ? optJSONObject2.optString("omid_partner_name") : null);
                zzczu zzczuVar = zzcztVar2.zzgmh.zzfgl;
                if (zzczuVar.zzgmn.contains(Integer.toString(zzbwsVar.zzaja()))) {
                    if (zzbwsVar.zzaja() == 3) {
                        if (zzbwsVar.getCustomTemplateId() == null) {
                            throw new zzclr("No custom template id for custom template ad response.", 0);
                        } else if (!zzczuVar.zzgmo.contains(zzbwsVar.getCustomTemplateId())) {
                            throw new zzclr("Unexpected custom template id in the response.", 0);
                        }
                    }
                    zzbwsVar.setStarRating(jSONObject2.optDouble("rating", -1.0d));
                    String optString = jSONObject2.optString("headline", null);
                    String str = optString;
                    if (zzczlVar2.zzdmf) {
                        zzq.zzkq();
                        String zzwn = zzawb.zzwn();
                        StringBuilder sb = new StringBuilder(String.valueOf(zzwn).length() + 3 + String.valueOf(optString).length());
                        sb.append(zzwn);
                        sb.append(" : ");
                        sb.append(optString);
                        str = sb.toString();
                    }
                    zzbwsVar.zzn("headline", str);
                    zzbwsVar.zzn("body", jSONObject2.optString("body", null));
                    zzbwsVar.zzn("call_to_action", jSONObject2.optString("call_to_action", null));
                    zzbwsVar.zzn("store", jSONObject2.optString("store", null));
                    zzbwsVar.zzn("price", jSONObject2.optString("price", null));
                    zzbwsVar.zzn("advertiser", jSONObject2.optString("advertiser", null));
                    return zzbwsVar;
                }
                int zzaja = zzbwsVar.zzaja();
                StringBuilder sb2 = new StringBuilder(32);
                sb2.append("Invalid template ID: ");
                sb2.append(zzaja);
                throw new zzclr(sb2.toString(), 0);
            }
        });
        final zzdhe<List<zzabu>> zzd2 = this.f12728b.zzd(jSONObject, "images");
        final zzdhe<zzabu> zzc = this.f12728b.zzc(jSONObject, "secondary_image");
        final zzdhe<zzabu> zzc2 = this.f12728b.zzc(jSONObject, "app_icon");
        final zzdhe<zzabp> zze = this.f12728b.zze(jSONObject, "attribution");
        final zzdhe<zzbdi> zzl = this.f12728b.zzl(jSONObject);
        final zzbyu zzbyuVar = this.f12728b;
        if (jSONObject.optBoolean("enable_omid") && (optJSONObject = jSONObject.optJSONObject("omid_settings")) != null) {
            final String optString = optJSONObject.optString("omid_html");
            if (!TextUtils.isEmpty(optString)) {
                zzdheVar = zzdgs.zzb(zzdgs.zzaj(null), new zzdgf(zzbyuVar, optString) { // from class: com.google.android.gms.internal.ads.os

                    /* renamed from: a */
                    private final zzbyu f10302a;

                    /* renamed from: b */
                    private final String f10303b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10302a = zzbyuVar;
                        this.f10303b = optString;
                    }

                    @Override // com.google.android.gms.internal.ads.zzdgf
                    public final zzdhe zzf(Object obj) {
                        return this.f10302a.m3848a(this.f10303b);
                    }
                }, zzazd.zzdwi);
                final zzdhe<List<zzbzf>> zzg = this.f12729c.zzg(jSONObject, "custom_assets");
                return zzdgs.zza(zzd, zzd2, zzc, zzc2, zze, zzl, zzdheVar, zzg).zza(new Callable(this, zzd, zzd2, zzc2, zzc, zze, jSONObject, zzl, zzdheVar, zzg) { // from class: com.google.android.gms.internal.ads.on

                    /* renamed from: a */
                    private final zzbyq f10284a;

                    /* renamed from: b */
                    private final zzdhe f10285b;

                    /* renamed from: c */
                    private final zzdhe f10286c;

                    /* renamed from: d */
                    private final zzdhe f10287d;

                    /* renamed from: e */
                    private final zzdhe f10288e;

                    /* renamed from: f */
                    private final zzdhe f10289f;

                    /* renamed from: g */
                    private final JSONObject f10290g;

                    /* renamed from: h */
                    private final zzdhe f10291h;

                    /* renamed from: i */
                    private final zzdhe f10292i;

                    /* renamed from: j */
                    private final zzdhe f10293j;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10284a = this;
                        this.f10285b = zzd;
                        this.f10286c = zzd2;
                        this.f10287d = zzc2;
                        this.f10288e = zzc;
                        this.f10289f = zze;
                        this.f10290g = jSONObject;
                        this.f10291h = zzl;
                        this.f10292i = zzdheVar;
                        this.f10293j = zzg;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        zzdhe zzdheVar2 = this.f10285b;
                        zzdhe zzdheVar3 = this.f10286c;
                        zzdhe zzdheVar4 = this.f10287d;
                        zzdhe zzdheVar5 = this.f10288e;
                        zzdhe zzdheVar6 = this.f10289f;
                        JSONObject jSONObject2 = this.f10290g;
                        zzdhe zzdheVar7 = this.f10291h;
                        zzdhe zzdheVar8 = this.f10292i;
                        zzdhe zzdheVar9 = this.f10293j;
                        zzbws zzbwsVar = (zzbws) zzdheVar2.get();
                        zzbwsVar.setImages((List) zzdheVar3.get());
                        zzbwsVar.zza((zzaci) zzdheVar4.get());
                        zzbwsVar.zzb((zzaci) zzdheVar5.get());
                        zzbwsVar.zza((zzaca) zzdheVar6.get());
                        zzbwsVar.zzf(zzbyu.zzi(jSONObject2));
                        zzbwsVar.zza(zzbyu.zzj(jSONObject2));
                        zzbdi zzbdiVar = (zzbdi) zzdheVar7.get();
                        if (zzbdiVar != null) {
                            zzbwsVar.zzi(zzbdiVar);
                            zzbwsVar.zzab(zzbdiVar.getView());
                            zzbwsVar.zzb(zzbdiVar.zzyl());
                        }
                        zzbdi zzbdiVar2 = (zzbdi) zzdheVar8.get();
                        if (zzbdiVar2 != null) {
                            zzbwsVar.zzj(zzbdiVar2);
                        }
                        for (zzbzf zzbzfVar : (List) zzdheVar9.get()) {
                            int i = zzbzfVar.type;
                            if (i == 1) {
                                zzbwsVar.zzn(zzbzfVar.zzcc, zzbzfVar.zzfps);
                            } else if (i == 2) {
                                zzbwsVar.zza(zzbzfVar.zzcc, zzbzfVar.zzfpt);
                            }
                        }
                        return zzbwsVar;
                    }
                }, this.f12727a);
            }
        }
        zzdheVar = zzdgs.zzaj(null);
        final zzdhe zzg2 = this.f12729c.zzg(jSONObject, "custom_assets");
        return zzdgs.zza(zzd, zzd2, zzc, zzc2, zze, zzl, zzdheVar, zzg2).zza(new Callable(this, zzd, zzd2, zzc2, zzc, zze, jSONObject, zzl, zzdheVar, zzg2) { // from class: com.google.android.gms.internal.ads.on

            /* renamed from: a */
            private final zzbyq f10284a;

            /* renamed from: b */
            private final zzdhe f10285b;

            /* renamed from: c */
            private final zzdhe f10286c;

            /* renamed from: d */
            private final zzdhe f10287d;

            /* renamed from: e */
            private final zzdhe f10288e;

            /* renamed from: f */
            private final zzdhe f10289f;

            /* renamed from: g */
            private final JSONObject f10290g;

            /* renamed from: h */
            private final zzdhe f10291h;

            /* renamed from: i */
            private final zzdhe f10292i;

            /* renamed from: j */
            private final zzdhe f10293j;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10284a = this;
                this.f10285b = zzd;
                this.f10286c = zzd2;
                this.f10287d = zzc2;
                this.f10288e = zzc;
                this.f10289f = zze;
                this.f10290g = jSONObject;
                this.f10291h = zzl;
                this.f10292i = zzdheVar;
                this.f10293j = zzg2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzdhe zzdheVar2 = this.f10285b;
                zzdhe zzdheVar3 = this.f10286c;
                zzdhe zzdheVar4 = this.f10287d;
                zzdhe zzdheVar5 = this.f10288e;
                zzdhe zzdheVar6 = this.f10289f;
                JSONObject jSONObject2 = this.f10290g;
                zzdhe zzdheVar7 = this.f10291h;
                zzdhe zzdheVar8 = this.f10292i;
                zzdhe zzdheVar9 = this.f10293j;
                zzbws zzbwsVar = (zzbws) zzdheVar2.get();
                zzbwsVar.setImages((List) zzdheVar3.get());
                zzbwsVar.zza((zzaci) zzdheVar4.get());
                zzbwsVar.zzb((zzaci) zzdheVar5.get());
                zzbwsVar.zza((zzaca) zzdheVar6.get());
                zzbwsVar.zzf(zzbyu.zzi(jSONObject2));
                zzbwsVar.zza(zzbyu.zzj(jSONObject2));
                zzbdi zzbdiVar = (zzbdi) zzdheVar7.get();
                if (zzbdiVar != null) {
                    zzbwsVar.zzi(zzbdiVar);
                    zzbwsVar.zzab(zzbdiVar.getView());
                    zzbwsVar.zzb(zzbdiVar.zzyl());
                }
                zzbdi zzbdiVar2 = (zzbdi) zzdheVar8.get();
                if (zzbdiVar2 != null) {
                    zzbwsVar.zzj(zzbdiVar2);
                }
                for (zzbzf zzbzfVar : (List) zzdheVar9.get()) {
                    int i = zzbzfVar.type;
                    if (i == 1) {
                        zzbwsVar.zzn(zzbzfVar.zzcc, zzbzfVar.zzfps);
                    } else if (i == 2) {
                        zzbwsVar.zza(zzbzfVar.zzcc, zzbzfVar.zzfpt);
                    }
                }
                return zzbwsVar;
            }
        }, this.f12727a);
    }
}
