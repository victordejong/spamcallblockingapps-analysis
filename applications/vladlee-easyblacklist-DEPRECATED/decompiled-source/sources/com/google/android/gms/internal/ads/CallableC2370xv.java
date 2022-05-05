package com.google.android.gms.internal.ads;

import android.os.Build;
import java.util.HashMap;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.internal.ads.xv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xv.class */
final /* synthetic */ class CallableC2370xv implements Callable {

    /* renamed from: a */
    static final Callable f10701a = new CallableC2370xv();

    private CallableC2370xv() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String[] split;
        HashMap hashMap = new HashMap();
        String str = (String) zzve.zzoy().zzd(zzzn.zzchj);
        if (str != null && !str.isEmpty()) {
            if (Build.VERSION.SDK_INT >= ((Integer) zzve.zzoy().zzd(zzzn.zzchk)).intValue()) {
                for (String str2 : str.split(",", -1)) {
                    hashMap.put(str2, zzayi.zzer(str2));
                }
            }
        }
        return new zzcwh(hashMap);
    }
}
