package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcov.class */
public final class zzcov {

    /* renamed from: a */
    private final zzbwz f13487a;

    /* renamed from: b */
    private final zzcop f13488b = new zzcop();

    /* renamed from: c */
    private final zzbow f13489c;

    public zzcov(zzbwz zzbwzVar) {
        this.f13487a = zzbwzVar;
        final zzcop zzcopVar = this.f13488b;
        final zzahh zzajt = this.f13487a.zzajt();
        this.f13489c = new zzbow(zzcopVar, zzajt) { // from class: com.google.android.gms.internal.ads.vf

            /* renamed from: a */
            private final zzcop f10616a;

            /* renamed from: b */
            private final zzahh f10617b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10616a = zzcopVar;
                this.f10617b = zzajt;
            }

            @Override // com.google.android.gms.internal.ads.zzbow
            public final void onAdFailedToLoad(int i) {
                zzcop zzcopVar2 = this.f10616a;
                zzahh zzahhVar = this.f10617b;
                zzcopVar2.onAdFailedToLoad(i);
                if (zzahhVar != null) {
                    try {
                        zzahhVar.onInstreamAdFailedToLoad(i);
                    } catch (RemoteException e) {
                        zzayu.zze("#007 Could not call remote method.", e);
                    }
                }
            }
        };
    }

    public final zzbvi zzamr() {
        return new zzbvi(this.f13487a, this.f13488b.zzamo());
    }

    public final zzbov zzams() {
        return this.f13488b;
    }

    public final zzbqb zzamt() {
        return this.f13488b;
    }

    public final zzbow zzamu() {
        return this.f13489c;
    }

    public final zzbpe zzamv() {
        return this.f13488b;
    }

    public final zzty zzamw() {
        return this.f13488b;
    }

    public final void zzc(zzvh zzvhVar) {
        this.f13488b.zzc(zzvhVar);
    }
}
