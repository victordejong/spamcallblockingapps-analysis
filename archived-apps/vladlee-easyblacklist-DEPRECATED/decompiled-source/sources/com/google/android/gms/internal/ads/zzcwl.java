package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbod;
import com.google.android.gms.internal.ads.zzbrm;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwl.class */
public final class zzcwl implements zzcox<zzbke> {

    /* renamed from: a */
    private final Context f13988a;

    /* renamed from: b */
    private final Executor f13989b;

    /* renamed from: c */
    private final zzbfx f13990c;

    /* renamed from: d */
    private final zzcwz f13991d;

    /* renamed from: e */
    private final zzcxt<zzbka, zzbke> f13992e;

    /* renamed from: f */
    private final ViewGroup f13993f;

    /* renamed from: g */
    private final zzczw f13994g;
    @Nullable

    /* renamed from: h */
    private zzdhe<zzbke> f13995h;

    public zzcwl(Context context, Executor executor, zzbfx zzbfxVar, zzcxt<zzbka, zzbke> zzcxtVar, zzcwz zzcwzVar, zzczw zzczwVar) {
        this.f13988a = context;
        this.f13989b = executor;
        this.f13990c = zzbfxVar;
        this.f13992e = zzcxtVar;
        this.f13991d = zzcwzVar;
        this.f13994g = zzczwVar;
        this.f13993f = new FrameLayout(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public final zzbjz m3682a(zzcxs zzcxsVar) {
        zzbjz zzb;
        synchronized (this) {
            zzcwz zza = zzcwz.zza(this.f13991d);
            zzbrm.zza zzaVar = new zzbrm.zza();
            zzaVar.zza((zzbow) zza, this.f13989b);
            zzaVar.zza((zzbqg) zza, this.f13989b);
            zzaVar.zza(zza);
            zzb = this.f13990c.zzaci().zza(new zzbkf(this.f13993f)).zzb(new zzbod.zza().zzbz(this.f13988a).zza(((C2374xz) zzcxsVar).f10706a).zzahh()).zzb(zzaVar.zzahw());
        }
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3684a() {
        this.f13991d.onAdFailedToLoad(1);
    }

    @Override // com.google.android.gms.internal.ads.zzcox
    public final boolean isLoading() {
        zzdhe<zzbke> zzdheVar = this.f13995h;
        return zzdheVar != null && !zzdheVar.isDone();
    }

    public final void zza(zzuo zzuoVar) {
        this.f13994g.zzb(zzuoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcox
    public final boolean zza(zzug zzugVar, String str, zzcpa zzcpaVar, zzcoz<? super zzbke> zzcozVar) {
        synchronized (this) {
            Preconditions.checkMainThread("loadAd must be called on the main UI thread.");
            if (str == null) {
                zzavs.zzex("Ad unit ID should not be null for app open ad.");
                this.f13989b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.xw

                    /* renamed from: a */
                    private final zzcwl f10702a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10702a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f10702a.m3684a();
                    }
                });
                return false;
            } else if (this.f13995h != null) {
                return false;
            } else {
                zzdad.zze(this.f13988a, zzugVar.zzccb);
                zzczu zzaos = this.f13994g.zzgk(str).zzd(zzuj.zzom()).zzg(zzugVar).zzaos();
                C2374xz xzVar = new C2374xz((byte) 0);
                xzVar.f10706a = zzaos;
                this.f13995h = this.f13992e.zza(xzVar, new zzcxv(this) { // from class: com.google.android.gms.internal.ads.xy

                    /* renamed from: a */
                    private final zzcwl f10705a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10705a = this;
                    }

                    @Override // com.google.android.gms.internal.ads.zzcxv
                    public final zzboe zzc(zzcxs zzcxsVar) {
                        return this.f10705a.m3682a(zzcxsVar);
                    }
                });
                zzdgs.zza(this.f13995h, new C2372xx(this, zzcozVar), this.f13990c.zzaca());
                return true;
            }
        }
    }
}
