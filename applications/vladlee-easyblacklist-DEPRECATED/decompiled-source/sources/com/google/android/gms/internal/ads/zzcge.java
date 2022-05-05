package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import java.io.StringReader;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcge.class */
public final class zzcge {

    /* renamed from: a */
    private final Context f13106a;

    /* renamed from: b */
    private final zzazb f13107b;

    /* renamed from: c */
    private final zzczu f13108c;

    /* renamed from: d */
    private final Executor f13109d;

    public zzcge(Context context, zzazb zzazbVar, zzczu zzczuVar, Executor executor) {
        this.f13106a = context;
        this.f13107b = zzazbVar;
        this.f13108c = zzczuVar;
        this.f13109d = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3780a(JSONObject jSONObject) {
        return zzdgs.zzaj(new zzczt(new zzczo(this.f13108c), zzczr.zza(new StringReader(jSONObject.toString()))));
    }

    public final zzdhe<zzczt> zzalt() {
        zzakc zzb = zzq.zzld().zzb(this.f13106a, this.f13107b);
        zzajy<JSONObject> zzajyVar = zzajx.zzdaq;
        final zzaju zza = zzb.zza("google.afma.response.normalize", zzajyVar, zzajyVar);
        final zzua zzuaVar = this.f13108c.zzgml.zzccm;
        return zzdgs.zzb(zzdgs.zzb(zzdgs.zzb(zzdgs.zzaj(""), new zzdgf(this, zzuaVar) { // from class: com.google.android.gms.internal.ads.rp

            /* renamed from: a */
            private final zzcge f10427a;

            /* renamed from: b */
            private final zzua f10428b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10427a = this;
                this.f10428b = zzuaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                zzua zzuaVar2 = this.f10428b;
                String str = zzuaVar2.zzcbu;
                String str2 = zzuaVar2.zzcbv;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("headers", new JSONObject());
                jSONObject3.put("body", str);
                jSONObject2.put("base_url", "");
                jSONObject2.put("signals", new JSONObject(str2));
                jSONObject.put("request", jSONObject2);
                jSONObject.put("response", jSONObject3);
                jSONObject.put("flags", new JSONObject());
                return zzdgs.zzaj(jSONObject);
            }
        }, this.f13109d), new zzdgf(zza) { // from class: com.google.android.gms.internal.ads.rr

            /* renamed from: a */
            private final zzaju f10430a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10430a = zza;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10430a.zzi((JSONObject) obj);
            }
        }, this.f13109d), new zzdgf(this) { // from class: com.google.android.gms.internal.ads.rq

            /* renamed from: a */
            private final zzcge f10429a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10429a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10429a.m3780a((JSONObject) obj);
            }
        }, this.f13109d);
    }
}
