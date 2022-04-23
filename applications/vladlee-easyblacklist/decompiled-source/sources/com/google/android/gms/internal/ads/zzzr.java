package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.internal.zzq;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzzr.class */
public final class zzzr {

    /* renamed from: a */
    private String f15766a = zzaav.zzcsv.get();

    /* renamed from: b */
    private Map<String, String> f15767b = new LinkedHashMap();

    /* renamed from: c */
    private Context f15768c;

    /* renamed from: d */
    private String f15769d;

    public zzzr(Context context, String str) {
        this.f15768c = null;
        this.f15769d = null;
        this.f15768c = context;
        this.f15769d = str;
        this.f15767b.put("s", "gmob_sdk");
        this.f15767b.put("v", "3");
        this.f15767b.put("os", Build.VERSION.RELEASE);
        this.f15767b.put("sdk", Build.VERSION.SDK);
        Map<String, String> map = this.f15767b;
        zzq.zzkq();
        map.put("device", zzawb.zzwl());
        this.f15767b.put("app", context.getApplicationContext() != null ? context.getApplicationContext().getPackageName() : context.getPackageName());
        Map<String, String> map2 = this.f15767b;
        zzq.zzkq();
        map2.put("is_lite_sdk", zzawb.zzay(context) ? "1" : "0");
        Future<zzaqt> zzx = zzq.zzlb().zzx(this.f15768c);
        try {
            this.f15767b.put("network_coarse", Integer.toString(zzx.get().zzdmo));
            this.f15767b.put("network_fine", Integer.toString(zzx.get().zzdmp));
        } catch (Exception e) {
            zzq.zzku().zza(e, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final String m2949a() {
        return this.f15766a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final Context m2948b() {
        return this.f15768c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final String m2947c() {
        return this.f15769d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final Map<String, String> m2946d() {
        return this.f15767b;
    }
}
