package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* renamed from: com.google.android.gms.internal.ads.la */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/la.class */
final class C2025la extends zzbkk {

    /* renamed from: c */
    private final Context f10155c;

    /* renamed from: d */
    private final View f10156d;

    /* renamed from: e */
    private final zzbdi f10157e;

    /* renamed from: f */
    private final zzczk f10158f;

    /* renamed from: g */
    private final zzbme f10159g;

    /* renamed from: h */
    private final zzbwz f10160h;

    /* renamed from: i */
    private final zzbsy f10161i;

    /* renamed from: j */
    private final zzdxa<zzcok> f10162j;

    /* renamed from: k */
    private final Executor f10163k;

    /* renamed from: l */
    private zzuj f10164l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2025la(zzbmg zzbmgVar, Context context, zzczk zzczkVar, View view, zzbdi zzbdiVar, zzbme zzbmeVar, zzbwz zzbwzVar, zzbsy zzbsyVar, zzdxa<zzcok> zzdxaVar, Executor executor) {
        super(zzbmgVar);
        this.f10155c = context;
        this.f10156d = view;
        this.f10157e = zzbdiVar;
        this.f10158f = zzczkVar;
        this.f10159g = zzbmeVar;
        this.f10160h = zzbwzVar;
        this.f10161i = zzbsyVar;
        this.f10162j = zzdxaVar;
        this.f10163k = executor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4488a() {
        if (this.f10160h.zzajs() != null) {
            try {
                this.f10160h.zzajs().zza(this.f10162j.get(), ObjectWrapper.wrap(this.f10155c));
            } catch (RemoteException e) {
                zzavs.zzc("RemoteException when notifyAdLoad is called", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final zzxb getVideoController() {
        try {
            return this.f10159g.getVideoController();
        } catch (zzdab e) {
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final void zza(ViewGroup viewGroup, zzuj zzujVar) {
        zzbdi zzbdiVar;
        if (viewGroup != null && (zzbdiVar = this.f10157e) != null) {
            zzbdiVar.zza(zzbey.zzb(zzujVar));
            viewGroup.setMinimumHeight(zzujVar.heightPixels);
            viewGroup.setMinimumWidth(zzujVar.widthPixels);
            this.f10164l = zzujVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final zzczk zzafz() {
        boolean z;
        zzuj zzujVar = this.f10164l;
        if (zzujVar != null) {
            return zzczy.zze(zzujVar);
        }
        if (this.f12133b.zzgma) {
            Iterator<String> it = this.f12133b.zzgli.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                String next = it.next();
                if (next != null && next.contains("FirstParty")) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return new zzczk(this.f10156d.getWidth(), this.f10156d.getHeight(), false);
            }
        }
        return zzczy.zza(this.f12133b.zzgln, this.f10158f);
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final View zzaga() {
        return this.f10156d;
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final int zzage() {
        return this.f12132a.zzgmi.zzgmf.zzgmb;
    }

    @Override // com.google.android.gms.internal.ads.zzbmd
    public final void zzagf() {
        this.f10163k.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.kz

            /* renamed from: a */
            private final C2025la f10154a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10154a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10154a.m4488a();
            }
        });
        super.zzagf();
    }

    @Override // com.google.android.gms.internal.ads.zzbkk
    public final void zzjy() {
        this.f10161i.zzaia();
    }
}
