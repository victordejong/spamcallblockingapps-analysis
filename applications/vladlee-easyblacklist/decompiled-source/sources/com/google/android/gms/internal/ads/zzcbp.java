package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzt;
import com.google.android.gms.ads.internal.zzc;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbp.class */
public final class zzcbp {

    /* renamed from: a */
    private final zzboq f12888a;

    /* renamed from: b */
    private final zzbpm f12889b;

    /* renamed from: c */
    private final zzbqa f12890c;

    /* renamed from: d */
    private final zzbqj f12891d;

    /* renamed from: e */
    private final zzbra f12892e;

    /* renamed from: f */
    private final Executor f12893f;

    /* renamed from: g */
    private final zzbst f12894g;

    /* renamed from: h */
    private final zzbjd f12895h;

    /* renamed from: i */
    private final zzc f12896i;

    /* renamed from: j */
    private final zzbpg f12897j;

    /* renamed from: k */
    private final zzato f12898k;

    /* renamed from: l */
    private final zzdq f12899l;

    /* renamed from: m */
    private final zzbqw f12900m;

    public zzcbp(zzboq zzboqVar, zzbpm zzbpmVar, zzbqa zzbqaVar, zzbqj zzbqjVar, zzbra zzbraVar, Executor executor, zzbst zzbstVar, zzbjd zzbjdVar, zzc zzcVar, zzbpg zzbpgVar, zzato zzatoVar, zzdq zzdqVar, zzbqw zzbqwVar) {
        this.f12888a = zzboqVar;
        this.f12889b = zzbpmVar;
        this.f12890c = zzbqaVar;
        this.f12891d = zzbqjVar;
        this.f12892e = zzbraVar;
        this.f12893f = executor;
        this.f12894g = zzbstVar;
        this.f12895h = zzbjdVar;
        this.f12896i = zzcVar;
        this.f12897j = zzbpgVar;
        this.f12898k = zzatoVar;
        this.f12899l = zzdqVar;
        this.f12900m = zzbqwVar;
    }

    public static zzdhe<?> zza(zzbdi zzbdiVar, String str, String str2) {
        final zzazl zzazlVar = new zzazl();
        zzbdiVar.zzaaa().zza(new zzbeu(zzazlVar) { // from class: com.google.android.gms.internal.ads.qi

            /* renamed from: a */
            private final zzazl f10361a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10361a = zzazlVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbeu
            public final void zzak(boolean z) {
                zzazl zzazlVar2 = this.f10361a;
                if (z) {
                    zzazlVar2.set(null);
                } else {
                    zzazlVar2.setException(new Exception("Ad Web View failed to load."));
                }
            }
        });
        zzbdiVar.zzb(str, str2, null);
        return zzazlVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3816a() {
        this.f12896i.recordClick();
        zzato zzatoVar = this.f12898k;
        if (zzatoVar != null) {
            zzatoVar.zzum();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3815a(zzbdi zzbdiVar) {
        this.f12895h.zzf(zzbdiVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m3813a(String str, String str2) {
        this.f12892e.onAppEvent(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ boolean m3812b() {
        this.f12896i.recordClick();
        zzato zzatoVar = this.f12898k;
        if (zzatoVar == null) {
            return false;
        }
        zzatoVar.zzum();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m3810c() {
        this.f12889b.onAdLeftApplication();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final /* synthetic */ void m3809d() {
        this.f12888a.onAdClicked();
    }

    public final void zzb(final zzbdi zzbdiVar, boolean z) {
        zzdg zzbw;
        zzbdiVar.zzaaa().zza(new zzty(this) { // from class: com.google.android.gms.internal.ads.pz

            /* renamed from: a */
            private final zzcbp f10352a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10352a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzty
            public final void onAdClicked() {
                this.f10352a.m3809d();
            }
        }, this.f12890c, this.f12891d, new zzaey(this) { // from class: com.google.android.gms.internal.ads.py

            /* renamed from: a */
            private final zzcbp f10351a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10351a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzaey
            public final void onAppEvent(String str, String str2) {
                this.f10351a.m3813a(str, str2);
            }
        }, new zzt(this) { // from class: com.google.android.gms.internal.ads.qb

            /* renamed from: a */
            private final zzcbp f10354a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10354a = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzt
            public final void zztv() {
                this.f10354a.m3810c();
            }
        }, z, null, this.f12896i, new C2166qg(this), this.f12898k);
        zzbdiVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.qa

            /* renamed from: a */
            private final zzcbp f10353a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10353a = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.f10353a.m3812b();
            }
        });
        zzbdiVar.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.qd

            /* renamed from: a */
            private final zzcbp f10356a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10356a = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f10356a.m3816a();
            }
        });
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzclc)).booleanValue() && (zzbw = this.f12899l.zzbw()) != null) {
            zzbw.zzb(zzbdiVar.getView());
        }
        this.f12894g.zza(zzbdiVar, this.f12893f);
        this.f12894g.zza(new zzps(zzbdiVar) { // from class: com.google.android.gms.internal.ads.qc

            /* renamed from: a */
            private final zzbdi f10355a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10355a = zzbdiVar;
            }

            @Override // com.google.android.gms.internal.ads.zzps
            public final void zza(zzpt zzptVar) {
                this.f10355a.zzaaa().zza(zzptVar.zzbob.left, zzptVar.zzbob.top, false);
            }
        }, this.f12893f);
        this.f12894g.zzq(zzbdiVar.getView());
        zzbdiVar.zza("/trackActiveViewUnit", new zzafn(this, zzbdiVar) { // from class: com.google.android.gms.internal.ads.qf

            /* renamed from: a */
            private final zzcbp f10358a;

            /* renamed from: b */
            private final zzbdi f10359b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10358a = this;
                this.f10359b = zzbdiVar;
            }

            @Override // com.google.android.gms.internal.ads.zzafn
            public final void zza(Object obj, Map map) {
                this.f10358a.m3815a(this.f10359b);
            }
        });
        this.f12895h.zzo(zzbdiVar);
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzciv)).booleanValue()) {
            zzbpg zzbpgVar = this.f12897j;
            zzbdiVar.getClass();
            zzbpgVar.zza(C2164qe.m4481a(zzbdiVar), this.f12893f);
        }
    }
}
