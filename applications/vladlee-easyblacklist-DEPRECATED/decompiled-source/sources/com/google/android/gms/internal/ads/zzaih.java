package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.Predicate;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaih.class */
public final class zzaih implements zzaia, zzaif {

    /* renamed from: a */
    private final zzbdi f10932a;

    /* renamed from: b */
    private final Context f10933b;

    public zzaih(Context context, zzazb zzazbVar, zzdq zzdqVar, zza zzaVar) {
        this.f10933b = context;
        zzq.zzkr();
        this.f10932a = zzbdr.zza(context, zzbey.zzabq(), "", false, false, zzdqVar, zzazbVar, null, null, null, zzsm.zzmt(), null, false);
        this.f10932a.getView().setWillNotDraw(true);
    }

    /* renamed from: a */
    private static void m4396a(Runnable runnable) {
        zzve.zzou();
        if (zzayk.zzxe()) {
            runnable.run();
        } else {
            zzawb.zzdsr.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4395a(String str) {
        this.f10932a.zzcy(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void destroy() {
        this.f10932a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final boolean isDestroyed() {
        return this.f10932a.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(zzaii zzaiiVar) {
        zzbev zzaaa = this.f10932a.zzaaa();
        zzaiiVar.getClass();
        zzaaa.zza(C1731aj.m5252a(zzaiiVar));
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zza(String str, zzafn<? super zzajq> zzafnVar) {
        this.f10932a.zza(str, new C1738am(this, zzafnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzahs
    public final void zza(String str, Map map) {
        zzahz.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zza(String str, JSONObject jSONObject) {
        zzahz.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzajq
    public final void zzb(String str, final zzafn<? super zzajq> zzafnVar) {
        this.f10932a.zza(str, new Predicate(zzafnVar) { // from class: com.google.android.gms.internal.ads.ag

            /* renamed from: a */
            private final zzafn f7319a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7319a = zzafnVar;
            }

            @Override // com.google.android.gms.common.util.Predicate
            public final boolean apply(Object obj) {
                zzafn zzafnVar2;
                zzafn zzafnVar3 = this.f7319a;
                zzafn zzafnVar4 = (zzafn) obj;
                if (!(zzafnVar4 instanceof C1738am)) {
                    return false;
                }
                zzafnVar2 = ((C1738am) zzafnVar4).f7593a;
                return zzafnVar2.equals(zzafnVar3);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaia, com.google.android.gms.internal.ads.zzahs
    public final void zzb(String str, JSONObject jSONObject) {
        zzahz.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzcv(String str) {
        m4396a(new RunnableC1730ai(this, String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str)));
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzcw(String str) {
        m4396a(new RunnableC1737al(this, str));
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzcx(String str) {
        m4396a(new RunnableC1732ak(this, str));
    }

    @Override // com.google.android.gms.internal.ads.zzaia, com.google.android.gms.internal.ads.zzaip
    public final void zzcy(final String str) {
        m4396a(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.ah

            /* renamed from: a */
            private final zzaih f7345a;

            /* renamed from: b */
            private final String f7346b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7345a = this;
                this.f7346b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7345a.m4395a(this.f7346b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    public final void zzj(String str, String str2) {
        zzahz.zza(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final zzajp zzrz() {
        return new zzajs(this);
    }
}
