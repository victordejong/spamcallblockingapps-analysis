package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.internal.ads.zzbs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzew.class */
public final class zzew extends zzfw {

    /* renamed from: d */
    private final Activity f14760d;

    /* renamed from: e */
    private final View f14761e;

    public zzew(zzei zzeiVar, String str, String str2, zzbs.zza.zzb zzbVar, int i, int i2, View view, Activity activity) {
        super(zzeiVar, str, str2, zzbVar, i, 62);
        this.f14761e = view;
        this.f14760d = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzfw
    /* renamed from: a */
    protected final void mo3267a() {
        if (this.f14761e != null) {
            boolean booleanValue = ((Boolean) zzve.zzoy().zzd(zzzn.zzclb)).booleanValue();
            Object[] objArr = (Object[]) this.f14796c.invoke(null, this.f14761e, this.f14760d, Boolean.valueOf(booleanValue));
            synchronized (this.f14795b) {
                this.f14795b.zzbp(((Long) objArr[0]).longValue());
                this.f14795b.zzbq(((Long) objArr[1]).longValue());
                if (booleanValue) {
                    this.f14795b.zzam((String) objArr[2]);
                }
            }
        }
    }
}
