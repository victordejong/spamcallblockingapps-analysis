package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.internal.ads.zzcf;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgh.class */
public final class zzgh extends zzgm {

    /* renamed from: h */
    public final View f28227h;

    public zzgh(zzex zzexVar, String str, String str2, zzcf.zza.C10493zza zzaVar, int i, int i2, View view) {
        super(zzexVar, str, str2, zzaVar, i, 57);
        this.f28227h = view;
    }

    @Override // com.google.android.gms.internal.ads.zzgm
    /* renamed from: a */
    public final void mo12118a() throws IllegalAccessException, InvocationTargetException {
        if (this.f28227h != null) {
            Boolean bool = (Boolean) zzwm.m11166e().m16921a(zzabb.f23881r1);
            zzff zzffVar = new zzff((String) this.f28239e.invoke(null, this.f28227h, this.f28235a.m12177a().getResources().getDisplayMetrics(), bool));
            zzcf.zza.zzf.C10495zza m = zzcf.zza.zzf.m14401m();
            m.m14399a(zzffVar.f28187b.longValue());
            m.m14398b(zzffVar.f28188c.longValue());
            m.m14397c(zzffVar.f28189d.longValue());
            if (bool.booleanValue()) {
                m.m14396d(zzffVar.f28190e.longValue());
            }
            this.f28238d.m14514a((zzcf.zza.zzf) ((zzejz) m.mo12342K()));
        }
    }
}
