package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcku.class */
public final class zzcku implements zzckr<zzbwk> {

    /* renamed from: a */
    private final zzbvm f13277a;

    /* renamed from: b */
    private final zzdhd f13278b;

    /* renamed from: c */
    private final zzbyq f13279c;

    public zzcku(zzbvm zzbvmVar, zzdhd zzdhdVar, zzbyq zzbyqVar) {
        this.f13277a = zzbvmVar;
        this.f13278b = zzdhdVar;
        this.f13279c = zzbyqVar;
    }

    /* renamed from: a */
    private final zzdhe<zzbwk> m3744a(final zzczt zzcztVar, final zzczl zzczlVar, final JSONObject jSONObject) {
        final zzdhe<zzcaj> zzaou = this.f13277a.zzade().zzaou();
        final zzdhe<zzbws> zza = this.f13279c.zza(zzcztVar, zzczlVar, jSONObject);
        return zzdgs.zzb(zzaou, zza).zza(new Callable(this, zza, zzaou, zzcztVar, zzczlVar, jSONObject) { // from class: com.google.android.gms.internal.ads.tu

            /* renamed from: a */
            private final zzcku f10530a;

            /* renamed from: b */
            private final zzdhe f10531b;

            /* renamed from: c */
            private final zzdhe f10532c;

            /* renamed from: d */
            private final zzczt f10533d;

            /* renamed from: e */
            private final zzczl f10534e;

            /* renamed from: f */
            private final JSONObject f10535f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10530a = this;
                this.f10531b = zza;
                this.f10532c = zzaou;
                this.f10533d = zzcztVar;
                this.f10534e = zzczlVar;
                this.f10535f = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10530a.m3743a(this.f10531b, this.f10532c, this.f10533d, this.f10534e, this.f10535f);
            }
        }, this.f13278b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzbwk m3743a(zzdhe zzdheVar, zzdhe zzdheVar2, zzczt zzcztVar, zzczl zzczlVar, JSONObject jSONObject) {
        zzbws zzbwsVar = (zzbws) zzdheVar.get();
        zzcaj zzcajVar = (zzcaj) zzdheVar2.get();
        zzbwu zza = this.f13277a.zza(new zzbmt(zzcztVar, zzczlVar, null), new zzbxe(zzbwsVar), new zzbvy(jSONObject, zzcajVar));
        zza.zzado().zzakr();
        zza.zzadp().zzb(zzcajVar);
        zza.zzadq().zzl(zzbwsVar.zzajf());
        return zza.zzadn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3746a(zzczl zzczlVar, zzcaj zzcajVar) {
        JSONObject zza = zzaxs.zza("isNonagon", Boolean.TRUE);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("response", zzczlVar.zzglo.zzfka);
        jSONObject.put("sdk_params", zza);
        return zzdgs.zzb(zzcajVar.zzc("google.afma.nativeAds.preProcessJson", jSONObject), C2259ts.f10526a, this.f13278b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3745a(zzczt zzcztVar, zzczl zzczlVar, JSONArray jSONArray) {
        if (jSONArray.length() == 0) {
            return zzdgs.zzk(new zzcfb(3));
        }
        int i = 0;
        if (zzcztVar.zzgmh.zzfgl.zzgdu <= 1) {
            return zzdgs.zzb(m3744a(zzcztVar, zzczlVar, jSONArray.getJSONObject(0)), C2262tv.f10536a, this.f13278b);
        }
        int length = jSONArray.length();
        this.f13277a.zzade().zzdm(Math.min(length, zzcztVar.zzgmh.zzfgl.zzgdu));
        ArrayList arrayList = new ArrayList(zzcztVar.zzgmh.zzfgl.zzgdu);
        while (i < zzcztVar.zzgmh.zzfgl.zzgdu) {
            arrayList.add(i < length ? m3744a(zzcztVar, zzczlVar, jSONArray.getJSONObject(i)) : zzdgs.zzk(new zzcfb(3)));
            i++;
        }
        return zzdgs.zzaj(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final boolean zza(zzczt zzcztVar, zzczl zzczlVar) {
        return (zzczlVar.zzglo == null || zzczlVar.zzglo.zzfka == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcio
    public final zzdhe<List<zzdhe<zzbwk>>> zzb(final zzczt zzcztVar, final zzczl zzczlVar) {
        zzdhe<zzcaj> zzaou = this.f13277a.zzade().zzaou();
        this.f13277a.zzade().zzb(zzaou);
        return zzdgs.zzb(zzdgs.zzb(zzaou, new zzdgf(this, zzczlVar) { // from class: com.google.android.gms.internal.ads.tr

            /* renamed from: a */
            private final zzcku f10524a;

            /* renamed from: b */
            private final zzczl f10525b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10524a = this;
                this.f10525b = zzczlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10524a.m3746a(this.f10525b, (zzcaj) obj);
            }
        }, this.f13278b), new zzdgf(this, zzcztVar, zzczlVar) { // from class: com.google.android.gms.internal.ads.tt

            /* renamed from: a */
            private final zzcku f10527a;

            /* renamed from: b */
            private final zzczt f10528b;

            /* renamed from: c */
            private final zzczl f10529c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10527a = this;
                this.f10528b = zzcztVar;
                this.f10529c = zzczlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10527a.m3745a(this.f10528b, this.f10529c, (JSONArray) obj);
            }
        }, this.f13278b);
    }
}
