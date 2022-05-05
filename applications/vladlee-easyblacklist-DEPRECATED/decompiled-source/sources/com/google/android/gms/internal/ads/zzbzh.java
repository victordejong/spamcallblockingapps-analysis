package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzh.class */
public final class zzbzh {

    /* renamed from: a */
    private final Context f12761a;

    /* renamed from: b */
    private final zzczu f12762b;

    /* renamed from: c */
    private final Executor f12763c;

    /* renamed from: d */
    private final zzcbn f12764d;

    public zzbzh(Context context, zzczu zzczuVar, Executor executor, zzcbn zzcbnVar) {
        this.f12761a = context;
        this.f12762b = zzczuVar;
        this.f12763c = executor;
        this.f12764d = zzcbnVar;
    }

    /* renamed from: a */
    private final void m3840a(zzbdi zzbdiVar) {
        zzbdiVar.zza("/video", zzafa.zzcxf);
        zzbdiVar.zza("/videoMeta", zzafa.zzcxg);
        zzbdiVar.zza("/precache", new zzbcs());
        zzbdiVar.zza("/delayPageLoaded", zzafa.zzcxj);
        zzbdiVar.zza("/instrument", zzafa.zzcxh);
        zzbdiVar.zza("/log", zzafa.zzcxa);
        zzbdiVar.zza("/videoClicked", zzafa.zzcxb);
        zzbdiVar.zzaaa().zzbb(true);
        zzbdiVar.zza("/click", zzafa.zzcww);
        if (this.f12762b.zzdkf != null) {
            zzbdiVar.zzaaa().zzbc(true);
            zzbdiVar.zza("/open", new zzafr(null, null));
            return;
        }
        zzbdiVar.zzaaa().zzbc(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3841a() {
        zzbdi zza = this.f12764d.zza(zzuj.zzg(this.f12761a), false);
        final zzazi zzl = zzazi.zzl(zza);
        m3840a(zza);
        zza.zzaaa().zza(new zzbex(zzl) { // from class: com.google.android.gms.internal.ads.pa

            /* renamed from: a */
            private final zzazi f10314a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10314a = zzl;
            }

            @Override // com.google.android.gms.internal.ads.zzbex
            public final void zzsb() {
                this.f10314a.zzxn();
            }
        });
        zza.loadUrl((String) zzve.zzoy().zzd(zzzn.zzclz));
        return zzl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3838a(String str, String str2) {
        final zzbdi zza = this.f12764d.zza(zzuj.zzg(this.f12761a), false);
        final zzazi zzl = zzazi.zzl(zza);
        m3840a(zza);
        zza.zza(this.f12762b.zzdkf != null ? zzbey.zzabs() : zzbey.zzabr());
        zza.zzaaa().zza(new zzbeu(this, zza, zzl) { // from class: com.google.android.gms.internal.ads.pd

            /* renamed from: a */
            private final zzbzh f10319a;

            /* renamed from: b */
            private final zzbdi f10320b;

            /* renamed from: c */
            private final zzazi f10321c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10319a = this;
                this.f10320b = zza;
                this.f10321c = zzl;
            }

            @Override // com.google.android.gms.internal.ads.zzbeu
            public final void zzak(boolean z) {
                this.f10319a.m3839a(this.f10320b, this.f10321c);
            }
        });
        zza.zzb(str, str2, null);
        return zzl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzdhe m3837a(JSONObject jSONObject, final zzbdi zzbdiVar) {
        final zzazi zzl = zzazi.zzl(zzbdiVar);
        zzbdiVar.zza(this.f12762b.zzdkf != null ? zzbey.zzabs() : zzbey.zzabr());
        zzbdiVar.zzaaa().zza(new zzbeu(this, zzbdiVar, zzl) { // from class: com.google.android.gms.internal.ads.pc

            /* renamed from: a */
            private final zzbzh f10316a;

            /* renamed from: b */
            private final zzbdi f10317b;

            /* renamed from: c */
            private final zzazi f10318c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10316a = this;
                this.f10317b = zzbdiVar;
                this.f10318c = zzl;
            }

            @Override // com.google.android.gms.internal.ads.zzbeu
            public final void zzak(boolean z) {
                this.f10316a.m3836b(this.f10317b, this.f10318c);
            }
        });
        zzbdiVar.zza("google.afma.nativeAds.renderVideo", jSONObject);
        return zzl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3839a(zzbdi zzbdiVar, zzazi zzaziVar) {
        if (!(this.f12762b.zzgmk == null || zzbdiVar.zzyl() == null)) {
            zzbdiVar.zzyl().zzb(this.f12762b.zzgmk);
        }
        zzaziVar.zzxn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m3836b(zzbdi zzbdiVar, zzazi zzaziVar) {
        if (!(this.f12762b.zzgmk == null || zzbdiVar.zzyl() == null)) {
            zzbdiVar.zzyl().zzb(this.f12762b.zzgmk);
        }
        zzaziVar.zzxn();
    }

    public final zzdhe<zzbdi> zzm(final JSONObject jSONObject) {
        return zzdgs.zzb(zzdgs.zzb(zzdgs.zzaj(null), new zzdgf(this) { // from class: com.google.android.gms.internal.ads.pb

            /* renamed from: a */
            private final zzbzh f10315a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10315a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10315a.m3841a();
            }
        }, this.f12763c), new zzdgf(this, jSONObject) { // from class: com.google.android.gms.internal.ads.oz

            /* renamed from: a */
            private final zzbzh f10312a;

            /* renamed from: b */
            private final JSONObject f10313b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10312a = this;
                this.f10313b = jSONObject;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10312a.m3837a(this.f10313b, (zzbdi) obj);
            }
        }, this.f12763c);
    }

    public final zzdhe<zzbdi> zzo(final String str, final String str2) {
        return zzdgs.zzb(zzdgs.zzaj(null), new zzdgf(this, str, str2) { // from class: com.google.android.gms.internal.ads.oy

            /* renamed from: a */
            private final zzbzh f10309a;

            /* renamed from: b */
            private final String f10310b;

            /* renamed from: c */
            private final String f10311c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10309a = this;
                this.f10310b = str;
                this.f10311c = str2;
            }

            @Override // com.google.android.gms.internal.ads.zzdgf
            public final zzdhe zzf(Object obj) {
                return this.f10309a.m3838a(this.f10310b, this.f10311c);
            }
        }, this.f12763c);
    }
}
