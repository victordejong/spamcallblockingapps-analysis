package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzq;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/r.class */
final class C2186r implements zzafn<zzbdi> {
    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbdi zzbdiVar, Map map) {
        zzbdi zzbdiVar2 = zzbdiVar;
        WindowManager windowManager = (WindowManager) zzbdiVar2.getContext().getSystemService("window");
        zzq.zzkq();
        View view = (View) zzbdiVar2;
        DisplayMetrics zza = zzawb.zza(windowManager);
        int i = zza.widthPixels;
        int i2 = zza.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        view.getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        hashMap.put("yInPixels", Integer.valueOf(iArr[1]));
        hashMap.put("windowWidthInPixels", Integer.valueOf(i));
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        zzbdiVar2.zza("locationReady", hashMap);
        zzavs.zzez("GET LOCATION COMPILED");
    }
}
