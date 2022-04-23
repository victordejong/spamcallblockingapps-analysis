package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzakd.class */
public final class zzakd<I, O> implements zzaju<I, O> {

    /* renamed from: a */
    private final zzajw<O> f10968a;

    /* renamed from: b */
    private final zzajv<I> f10969b;

    /* renamed from: c */
    private final zzais f10970c;

    /* renamed from: d */
    private final String f10971d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakd(zzais zzaisVar, String str, zzajv<I> zzajvVar, zzajw<O> zzajwVar) {
        this.f10970c = zzaisVar;
        this.f10971d = str;
        this.f10969b = zzajvVar;
        this.f10968a = zzajwVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m4374a(zzakd zzakdVar, zzajf zzajfVar, zzajq zzajqVar, Object obj, zzazl zzazlVar) {
        try {
            zzq.zzkq();
            String zzwk = zzawb.zzwk();
            zzafa.zzcxi.zza(zzwk, new C1768bn(zzakdVar, zzajfVar, zzazlVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", zzwk);
            jSONObject.put("args", zzakdVar.f10969b.zzj(obj));
            zzajqVar.zza(zzakdVar.f10971d, jSONObject);
        } catch (Exception e) {
            try {
                zzazlVar.setException(e);
                zzavs.zzc("Unable to invokeJavascript", e);
            } finally {
                zzajfVar.release();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final zzdhe<O> zzf(I i) {
        return zzi(i);
    }

    @Override // com.google.android.gms.internal.ads.zzaju
    public final zzdhe<O> zzi(I i) {
        zzazl zzazlVar = new zzazl();
        zzajf zzb = this.f10970c.zzb(null);
        zzb.zza(new C1767bm(this, zzb, i, zzazlVar), new C1766bl(zzazlVar, zzb));
        return zzazlVar;
    }
}
