package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzs.class */
public final class zzzs {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static List<String> m2945a() {
        ArrayList arrayList = new ArrayList();
        m2944a(arrayList, zzaan.zzi("gad:dynamite_module:experiment_id", ""));
        m2944a(arrayList, zzaba.zzctk);
        m2944a(arrayList, zzaba.zzctl);
        m2944a(arrayList, zzaba.zzctm);
        m2944a(arrayList, zzaba.zzctn);
        m2944a(arrayList, zzaba.zzcto);
        m2944a(arrayList, zzaba.zzctu);
        m2944a(arrayList, zzaba.zzctp);
        m2944a(arrayList, zzaba.zzctq);
        m2944a(arrayList, zzaba.zzctr);
        m2944a(arrayList, zzaba.zzcts);
        m2944a(arrayList, zzaba.zzctt);
        return arrayList;
    }

    /* renamed from: a */
    private static void m2944a(List<String> list, zzaan<String> zzaanVar) {
        String str = zzaanVar.get();
        if (!TextUtils.isEmpty(str)) {
            list.add(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static List<String> m2943b() {
        ArrayList arrayList = new ArrayList();
        m2944a(arrayList, zzabk.zzcut);
        return arrayList;
    }
}
