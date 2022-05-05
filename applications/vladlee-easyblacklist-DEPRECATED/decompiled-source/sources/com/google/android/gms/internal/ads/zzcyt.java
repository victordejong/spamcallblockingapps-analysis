package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.reward.AdMetadataListener;
import com.google.android.gms.internal.ads.zzbod;
import com.google.android.gms.internal.ads.zzbrm;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyt.class */
public final class zzcyt implements zzcox<zzcbb> {

    /* renamed from: a */
    private final Context f14053a;

    /* renamed from: b */
    private final Executor f14054b;

    /* renamed from: c */
    private final zzbfx f14055c;

    /* renamed from: d */
    private final zzcxz f14056d;

    /* renamed from: e */
    private final zzcxt<zzcbi, zzcbb> f14057e;

    /* renamed from: f */
    private final zzczs f14058f;

    /* renamed from: g */
    private final zzczw f14059g;

    /* renamed from: h */
    private zzdhe<zzcbb> f14060h;

    public zzcyt(Context context, Executor executor, zzbfx zzbfxVar, zzcxt<zzcbi, zzcbb> zzcxtVar, zzcxz zzcxzVar, zzczw zzczwVar, zzczs zzczsVar) {
        this.f14053a = context;
        this.f14054b = executor;
        this.f14055c = zzbfxVar;
        this.f14057e = zzcxtVar;
        this.f14056d = zzcxzVar;
        this.f14059g = zzczwVar;
        this.f14058f = zzczsVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcbh m3657a(zzcxs zzcxsVar) {
        C2415zm zmVar = (C2415zm) zzcxsVar;
        zzcxz zza = zzcxz.zza(this.f14056d);
        zzbrm.zza zzaVar = new zzbrm.zza();
        zzaVar.zza((zzbov) zza, this.f14054b);
        zzaVar.zza((zzbqb) zza, this.f14054b);
        zzaVar.zza((zzbow) zza, this.f14054b);
        zzaVar.zza((AdMetadataListener) zza, this.f14054b);
        zzaVar.zza((zzbpa) zza, this.f14054b);
        zzaVar.zza(zza);
        return this.f14055c.zzacm().zze(new zzbod.zza().zzbz(this.f14053a).zza(zmVar.f10763a).zzfs(zmVar.f10764b).zza(this.f14058f).zzahh()).zze(zzaVar.zzahw());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3658a() {
        this.f14059g.zzgms.add("new_rewarded");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3655b() {
        this.f14056d.onAdFailedToLoad(1);
    }

    @Override // com.google.android.gms.internal.ads.zzcox
    public final boolean isLoading() {
        zzdhe<zzcbb> zzdheVar = this.f14060h;
        return zzdheVar != null && !zzdheVar.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzcox
    public final boolean zza(zzug zzugVar, String str, zzcpa zzcpaVar, zzcoz<? super zzcbb> zzcozVar) {
        zzaru zzaruVar = new zzaru(zzugVar, str);
        String str2 = zzcpaVar instanceof zzcyq ? ((zzcyq) zzcpaVar).zzgkq : null;
        if (zzaruVar.zzbqz == null) {
            zzavs.zzex("Ad unit ID should not be null for rewarded video ad.");
            this.f14054b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zj

                /* renamed from: a */
                private final zzcyt f10759a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10759a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10759a.m3655b();
                }
            });
            return false;
        }
        zzdhe<zzcbb> zzdheVar = this.f14060h;
        if (zzdheVar != null && !zzdheVar.isDone()) {
            return false;
        }
        zzdad.zze(this.f14053a, zzaruVar.zzdio.zzccb);
        zzczu zzaos = this.f14059g.zzgk(zzaruVar.zzbqz).zzd(zzuj.zzol()).zzg(zzaruVar.zzdio).zzaos();
        C2415zm zmVar = new C2415zm((byte) 0);
        zmVar.f10763a = zzaos;
        zmVar.f10764b = str2;
        this.f14060h = this.f14057e.zza(zmVar, new zzcxv(this) { // from class: com.google.android.gms.internal.ads.zl

            /* renamed from: a */
            private final zzcyt f10762a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10762a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzcxv
            public final zzboe zzc(zzcxs zzcxsVar) {
                return this.f10762a.m3657a(zzcxsVar);
            }
        });
        zzdgs.zza(this.f14060h, new C2413zk(this, zzcozVar), this.f14054b);
        return true;
    }
}
