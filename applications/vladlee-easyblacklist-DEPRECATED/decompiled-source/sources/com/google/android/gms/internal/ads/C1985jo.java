package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.jo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jo.class */
final class C1985jo implements zzafn<zzbdi> {

    /* renamed from: a */
    private final /* synthetic */ ViewTreeObserver$OnGlobalLayoutListenerC1983jm f8797a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1985jo(ViewTreeObserver$OnGlobalLayoutListenerC1983jm jmVar) {
        this.f8797a = jmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbdi zzbdiVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    synchronized (this.f8797a) {
                        i = this.f8797a.f8743B;
                        if (i != parseInt) {
                            this.f8797a.f8743B = parseInt;
                            this.f8797a.requestLayout();
                        }
                    }
                } catch (Exception e) {
                    zzavs.zzd("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
