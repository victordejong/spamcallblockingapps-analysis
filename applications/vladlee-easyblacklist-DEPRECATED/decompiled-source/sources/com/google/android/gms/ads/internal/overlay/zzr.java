package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzavs;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzr.class */
public final class zzr extends zzc {
    public zzr(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzc, com.google.android.gms.internal.ads.zzaot
    public final void onCreate(Bundle bundle) {
        zzavs.zzed("AdOverlayParcel is null or does not contain valid overlay type.");
        this.f5921d = 3;
        this.f5918a.finish();
    }
}
