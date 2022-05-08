package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzc;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafs.class */
public final class zzafs implements zzafn<zzbdi> {

    /* renamed from: d */
    private static final Map<String, Integer> f10892d = CollectionUtils.mapOfKeyValueArrays(new String[]{"resize", "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", "unload"}, new Integer[]{1, 2, 3, 4, 5, 6, 7});

    /* renamed from: a */
    private final zzc f10893a;

    /* renamed from: b */
    private final zzaoe f10894b;

    /* renamed from: c */
    private final zzaon f10895c;

    public zzafs(zzc zzcVar, zzaoe zzaoeVar, zzaon zzaonVar) {
        this.f10893a = zzcVar;
        this.f10894b = zzaoeVar;
        this.f10895c = zzaonVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbdi zzbdiVar, Map map) {
        zzc zzcVar;
        zzbdi zzbdiVar2 = zzbdiVar;
        int intValue = f10892d.get((String) map.get("a")).intValue();
        if (intValue != 5 && intValue != 7 && (zzcVar = this.f10893a) != null && !zzcVar.zzjq()) {
            this.f10893a.zzbq(null);
        } else if (intValue == 1) {
            this.f10894b.zzg(map);
        } else if (intValue == 3) {
            new zzaof(zzbdiVar2, map).execute();
        } else if (intValue == 4) {
            new zzanz(zzbdiVar2, map).execute();
        } else if (intValue == 5) {
            new zzaog(zzbdiVar2, map).execute();
        } else if (intValue == 6) {
            this.f10894b.zzac(true);
        } else if (intValue != 7) {
            zzavs.zzey("Unknown MRAID command called.");
        } else {
            this.f10895c.zztj();
        }
    }
}
