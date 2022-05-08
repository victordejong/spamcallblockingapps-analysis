package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zze;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnk.class */
public final class zzcnk implements zze {

    /* renamed from: a */
    private final zzboq f13402a;

    /* renamed from: b */
    private final zzbpd f13403b;

    /* renamed from: c */
    private final zzbsy f13404c;

    /* renamed from: d */
    private final zzbst f13405d;

    /* renamed from: e */
    private final zzbjd f13406e;

    /* renamed from: f */
    private AtomicBoolean f13407f = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcnk(zzboq zzboqVar, zzbpd zzbpdVar, zzbsy zzbsyVar, zzbst zzbstVar, zzbjd zzbjdVar) {
        this.f13402a = zzboqVar;
        this.f13403b = zzbpdVar;
        this.f13404c = zzbsyVar;
        this.f13405d = zzbstVar;
        this.f13406e = zzbjdVar;
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzg(View view) {
        synchronized (this) {
            if (this.f13407f.compareAndSet(false, true)) {
                this.f13406e.onAdImpression();
                this.f13405d.zzq(view);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjr() {
        if (this.f13407f.get()) {
            this.f13402a.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zze
    public final void zzjs() {
        if (this.f13407f.get()) {
            this.f13403b.onAdImpression();
            this.f13404c.zzaia();
        }
    }
}
