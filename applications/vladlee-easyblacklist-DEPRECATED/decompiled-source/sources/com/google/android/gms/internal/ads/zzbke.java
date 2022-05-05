package com.google.android.gms.internal.ads;

import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbke.class */
public final class zzbke extends zzbmd {

    /* renamed from: c */
    private final View f12032c;

    /* renamed from: d */
    private final zzbdi f12033d;

    /* renamed from: e */
    private final zzczk f12034e;

    /* renamed from: f */
    private final int f12035f;

    /* renamed from: g */
    private zzrl f12036g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbke(zzbmg zzbmgVar, View view, zzbdi zzbdiVar, zzczk zzczkVar, int i) {
        super(zzbmgVar);
        this.f12032c = view;
        this.f12033d = zzbdiVar;
        this.f12034e = zzczkVar;
        this.f12035f = i;
    }

    public final void zza(zzra zzraVar) {
        zzbdi zzbdiVar = this.f12033d;
        if (zzbdiVar != null) {
            zzbdiVar.zza(zzraVar);
        }
    }

    public final void zza(zzrl zzrlVar) {
        this.f12036g = zzrlVar;
    }

    public final boolean zzaat() {
        zzbdi zzbdiVar = this.f12033d;
        return (zzbdiVar == null || zzbdiVar.zzaaa() == null || !this.f12033d.zzaaa().zzaat()) ? false : true;
    }

    public final int zzafw() {
        return this.f12035f;
    }

    public final zzczk zzafz() {
        return zzczy.zza(this.f12133b.zzgln, this.f12034e);
    }

    public final View zzaga() {
        return this.f12032c;
    }

    public final boolean zzagb() {
        zzbdi zzbdiVar = this.f12033d;
        return zzbdiVar != null && zzbdiVar.zzaac();
    }

    public final zzrl zzagc() {
        return this.f12036g;
    }
}
