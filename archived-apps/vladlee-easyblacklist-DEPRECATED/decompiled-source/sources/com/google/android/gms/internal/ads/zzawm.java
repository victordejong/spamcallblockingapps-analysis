package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzq;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzawm.class */
public class zzawm extends zzawn {
    /* renamed from: a */
    private static boolean m4244a(int i, int i2, int i3) {
        return Math.abs(i - i2) <= i3;
    }

    @Override // com.google.android.gms.internal.ads.zzawh
    public final boolean zza(Activity activity, Configuration configuration) {
        if (!((Boolean) zzve.zzoy().zzd(zzzn.zzcns)).booleanValue()) {
            return false;
        }
        if (((Boolean) zzve.zzoy().zzd(zzzn.zzcnu)).booleanValue()) {
            return activity.isInMultiWindowMode();
        }
        zzve.zzou();
        int zza = zzayk.zza(activity, configuration.screenHeightDp);
        int zza2 = zzayk.zza(activity, configuration.screenWidthDp);
        zzq.zzkq();
        DisplayMetrics zza3 = zzawb.zza((WindowManager) activity.getApplicationContext().getSystemService("window"));
        int i = zza3.heightPixels;
        int i2 = zza3.widthPixels;
        int identifier = activity.getResources().getIdentifier("status_bar_height", "dimen", AbstractC0007a.ANDROID_CLIENT_TYPE);
        int dimensionPixelSize = identifier > 0 ? activity.getResources().getDimensionPixelSize(identifier) : 0;
        int round = ((int) Math.round(activity.getResources().getDisplayMetrics().density + 0.5d)) * ((Integer) zzve.zzoy().zzd(zzzn.zzcnr)).intValue();
        return !(m4244a(i, zza + dimensionPixelSize, round) && m4244a(i2, zza2, round));
    }
}
