package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcil;
import com.google.android.gms.internal.ads.zzcvo;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import com.google.android.gms.internal.ads.zzdzc;
import com.mopub.common.AdType;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C4038sp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvo.class */
public final class zzcvo implements zzcvl<zzcdx> {

    /* renamed from: a */
    public final zzcda f26596a;

    /* renamed from: b */
    public final zzdzb f26597b;

    /* renamed from: c */
    public final zzcgs f26598c;

    /* renamed from: d */
    public final zzdoz<zzcil> f26599d;

    public zzcvo(zzcda zzcdaVar, zzdzb zzdzbVar, zzcgs zzcgsVar, zzdoz<zzcil> zzdozVar) {
        this.f26596a = zzcdaVar;
        this.f26597b = zzdzbVar;
        this.f26598c = zzcgsVar;
        this.f26599d = zzdozVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzcdx m13827a(zzdzc zzdzcVar, zzdzc zzdzcVar2, zzdog zzdogVar, zzdnv zzdnvVar, JSONObject jSONObject) throws Exception {
        zzcei zzceiVar = (zzcei) zzdzcVar.get();
        zzcil zzcilVar = (zzcil) zzdzcVar2.get();
        zzcek a = this.f26596a.mo14791a(new zzbre(zzdogVar, zzdnvVar, null), new zzceu(zzceiVar), new zzcdl(jSONObject, zzcilVar));
        a.mo14670i().m14169a();
        a.mo14669j().m14167a(zzcilVar);
        a.mo14668k().m14264a(zzceiVar.m14677t());
        return a.mo14727h();
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13831a(zzcil zzcilVar, JSONObject jSONObject) throws Exception {
        this.f26599d.m13383a(zzdyq.m12988a(zzcilVar));
        if (jSONObject.optBoolean("success")) {
            return zzdyq.m12988a(jSONObject.getJSONObject(AdType.STATIC_NATIVE).getJSONArray("ads"));
        }
        throw new zzalu("process json failed");
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13830a(zzdnv zzdnvVar, final zzcil zzcilVar) throws Exception {
        JSONObject a = zzbao.m15958a("isNonagon", (Object) true);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("response", zzdnvVar.f27602r.f27621c);
        jSONObject.put("sdk_params", a);
        return zzdyq.m12992a(zzcilVar.m14174a("google.afma.nativeAds.preProcessJson", jSONObject), new zzdya(this, zzcilVar) { // from class: c.d.b.d.g.a.pp

            /* renamed from: a */
            public final zzcvo f14556a;

            /* renamed from: b */
            public final zzcil f14557b;

            {
                this.f14556a = this;
                this.f14557b = zzcilVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f14556a.m13831a(this.f14557b, (JSONObject) obj);
            }
        }, this.f26597b);
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m13829a(zzdog zzdogVar, zzdnv zzdnvVar, JSONArray jSONArray) throws Exception {
        if (jSONArray.length() == 0) {
            return zzdyq.m12987a((Throwable) new zzcof(zzdpg.NO_FILL));
        }
        if (zzdogVar.f27633a.f27632a.f27649k <= 1) {
            return zzdyq.m12993a(m13828a(zzdogVar, zzdnvVar, jSONArray.getJSONObject(0)), C4038sp.f15317a, this.f26597b);
        }
        int length = jSONArray.length();
        this.f26599d.m13384a(Math.min(length, zzdogVar.f27633a.f27632a.f27649k));
        ArrayList arrayList = new ArrayList(zzdogVar.f27633a.f27632a.f27649k);
        for (int i = 0; i < zzdogVar.f27633a.f27632a.f27649k; i++) {
            if (i < length) {
                arrayList.add(m13828a(zzdogVar, zzdnvVar, jSONArray.getJSONObject(i)));
            } else {
                arrayList.add(zzdyq.m12987a((Throwable) new zzcof(zzdpg.NO_FILL)));
            }
        }
        return zzdyq.m12988a(arrayList);
    }

    /* renamed from: a */
    public final zzdzc<zzcdx> m13828a(final zzdog zzdogVar, final zzdnv zzdnvVar, final JSONObject jSONObject) {
        final zzdzc<zzcil> a = this.f26599d.m13385a();
        final zzdzc<zzcei> a2 = this.f26598c.m14288a(zzdogVar, zzdnvVar, jSONObject);
        return zzdyq.m12982b(a, a2).m12979a(new Callable(this, a2, a, zzdogVar, zzdnvVar, jSONObject) { // from class: c.d.b.d.g.a.rp

            /* renamed from: a */
            public final zzcvo f15034a;

            /* renamed from: b */
            public final zzdzc f15035b;

            /* renamed from: c */
            public final zzdzc f15036c;

            /* renamed from: d */
            public final zzdog f15037d;

            /* renamed from: e */
            public final zzdnv f15038e;

            /* renamed from: f */
            public final JSONObject f15039f;

            {
                this.f15034a = this;
                this.f15035b = a2;
                this.f15036c = a;
                this.f15037d = zzdogVar;
                this.f15038e = zzdnvVar;
                this.f15039f = jSONObject;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f15034a.m13827a(this.f15035b, this.f15036c, this.f15037d, this.f15038e, this.f15039f);
            }
        }, this.f26597b);
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: a */
    public final boolean mo13770a(zzdog zzdogVar, zzdnv zzdnvVar) {
        zzdny zzdnyVar = zzdnvVar.f27602r;
        return (zzdnyVar == null || zzdnyVar.f27621c == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcta
    /* renamed from: b */
    public final zzdzc<List<zzdzc<zzcdx>>> mo13769b(final zzdog zzdogVar, final zzdnv zzdnvVar) {
        return zzdyq.m12992a(zzdyq.m12992a(this.f26599d.m13385a(), new zzdya(this, zzdnvVar) { // from class: c.d.b.d.g.a.op

            /* renamed from: a */
            public final zzcvo f14349a;

            /* renamed from: b */
            public final zzdnv f14350b;

            {
                this.f14349a = this;
                this.f14350b = zzdnvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f14349a.m13830a(this.f14350b, (zzcil) obj);
            }
        }, this.f26597b), new zzdya(this, zzdogVar, zzdnvVar) { // from class: c.d.b.d.g.a.qp

            /* renamed from: a */
            public final zzcvo f14832a;

            /* renamed from: b */
            public final zzdog f14833b;

            /* renamed from: c */
            public final zzdnv f14834c;

            {
                this.f14832a = this;
                this.f14833b = zzdogVar;
                this.f14834c = zzdnvVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdya
            /* renamed from: d */
            public final zzdzc mo13006d(Object obj) {
                return this.f14832a.m13829a(this.f14833b, this.f14834c, (JSONArray) obj);
            }
        }, this.f26597b);
    }
}
