package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzayp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzt.class */
public final class zzt extends zze {
    public zzt(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zze, com.google.android.gms.internal.ads.zzaqy
    public final void onCreate(Bundle bundle) {
        zzayp.m16153g("AdOverlayParcel is null or does not contain valid overlay type.");
        this.f22766m = 3;
        this.f22754a.finish();
    }
}
