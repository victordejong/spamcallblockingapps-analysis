package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.ads.jd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jd.class */
final class C1974jd implements zzafn<zzbdi> {

    /* renamed from: a */
    private final /* synthetic */ ViewTreeObserver$OnGlobalLayoutListenerC1972jb f8722a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1974jd(ViewTreeObserver$OnGlobalLayoutListenerC1972jb jbVar) {
        this.f8722a = jbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbdi zzbdiVar, Map map) {
        int i;
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    synchronized (this.f8722a) {
                        i = this.f8722a.f8679G;
                        if (i != parseInt) {
                            this.f8722a.f8679G = parseInt;
                            this.f8722a.requestLayout();
                        }
                    }
                } catch (Exception e) {
                    zzavs.zzd("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
