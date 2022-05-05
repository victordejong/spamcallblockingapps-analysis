package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzako.class */
public final class zzako<I, O> implements zzdgf<I, O> {

    /* renamed from: a */
    private final zzajw<O> f10974a;

    /* renamed from: b */
    private final zzajv<I> f10975b;

    /* renamed from: c */
    private final String f10976c;

    /* renamed from: d */
    private final zzdhe<zzajq> f10977d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzako(zzdhe<zzajq> zzdheVar, String str, zzajv<I> zzajvVar, zzajw<O> zzajwVar) {
        this.f10977d = zzdheVar;
        this.f10976c = str;
        this.f10975b = zzajvVar;
        this.f10974a = zzajwVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m4371a(Object obj, zzajq zzajqVar) {
        zzazl zzazlVar = new zzazl();
        zzq.zzkq();
        String zzwk = zzawb.zzwk();
        zzafa.zzcxi.zza(zzwk, new C1774bt(this, zzazlVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", zzwk);
        jSONObject.put("args", this.f10975b.zzj(obj));
        zzajqVar.zza(this.f10976c, jSONObject);
        return zzazlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final zzdhe<O> zzf(final I i) {
        return zzdgs.zzb(this.f10977d, new zzdgf(this, i) { // from class: com.google.android.gms.internal.ads.bs

            /* renamed from: a */
            private final zzako f8309a;

            /* renamed from: b */
            private final Object f8310b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8309a = this;
                this.f8310b = i;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f8309a.m4371a(this.f8310b, (zzajq) obj);
            }
        }, zzazd.zzdwj);
    }
}
