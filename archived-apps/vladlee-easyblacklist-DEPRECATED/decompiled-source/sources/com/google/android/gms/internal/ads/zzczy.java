package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzczy.class */
public final class zzczy {
    public static zzczk zza(List<zzczk> list, zzczk zzczkVar) {
        return list.get(0);
    }

    public static zzuj zza(Context context, List<zzczk> list) {
        ArrayList arrayList = new ArrayList();
        for (zzczk zzczkVar : list) {
            if (zzczkVar.zzglh) {
                arrayList.add(AdSize.FLUID);
            } else {
                arrayList.add(new AdSize(zzczkVar.width, zzczkVar.height));
            }
        }
        return new zzuj(context, (AdSize[]) arrayList.toArray(new AdSize[arrayList.size()]));
    }

    public static zzczk zze(zzuj zzujVar) {
        return zzujVar.zzccq ? new zzczk(-3, 0, true) : new zzczk(zzujVar.width, zzujVar.height, false);
    }
}
