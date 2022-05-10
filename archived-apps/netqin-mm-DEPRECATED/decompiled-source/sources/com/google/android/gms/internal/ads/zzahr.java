package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahr.class */
public final class zzahr implements zzahq<zzbgj> {

    /* renamed from: d */
    public static final Map<String, Integer> f24111d = CollectionUtils.m17097a(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});

    /* renamed from: a */
    public final zza f24112a;

    /* renamed from: b */
    public final zzaqd f24113b;

    /* renamed from: c */
    public final zzaqq f24114c;

    public zzahr(zza zzaVar, zzaqd zzaqdVar, zzaqq zzaqqVar) {
        this.f24112a = zzaVar;
        this.f24113b = zzaqdVar;
        this.f24114c = zzaqqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbgj zzbgjVar, Map map) {
        zza zzaVar;
        zzbgj zzbgjVar2 = zzbgjVar;
        int intValue = f24111d.get((String) map.get("a")).intValue();
        if (intValue != 5 && intValue != 7 && (zzaVar = this.f24112a) != null && !zzaVar.m17995c()) {
            this.f24112a.m17997a(null);
        } else if (intValue == 1) {
            this.f24113b.m16446a(map);
        } else if (intValue == 3) {
            new zzaqi(zzbgjVar2, map).m16443a();
        } else if (intValue == 4) {
            new zzaqc(zzbgjVar2, map).m16452b();
        } else if (intValue == 5) {
            new zzaqf(zzbgjVar2, map).m16444a();
        } else if (intValue == 6) {
            this.f24113b.m16445a(true);
        } else if (intValue != 7) {
            zzbbq.m15854c("Unknown MRAID command called.");
        } else {
            this.f24114c.mo16423a();
        }
    }
}
