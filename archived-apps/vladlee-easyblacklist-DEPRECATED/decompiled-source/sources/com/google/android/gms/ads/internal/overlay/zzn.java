package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.ads.zzawb;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzn.class */
public final class zzn {
    public static void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.zzdhv == 4 && adOverlayInfoParcel.zzdhq == null) {
            if (adOverlayInfoParcel.zzcbt != null) {
                adOverlayInfoParcel.zzcbt.onAdClicked();
            }
            zzq.zzko();
            zzb.zza(context, adOverlayInfoParcel.zzdhp, adOverlayInfoParcel.zzdhu);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzbll.zzdwb);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.zza(intent, adOverlayInfoParcel);
        if (!PlatformVersion.isAtLeastLollipop()) {
            intent.addFlags(524288);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        zzq.zzkq();
        zzawb.zza(context, intent);
    }
}
