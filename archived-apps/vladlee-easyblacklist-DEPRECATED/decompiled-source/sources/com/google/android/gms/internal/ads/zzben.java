package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.zzq;
import java.io.File;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzben.class */
public class zzben extends zzbdl {
    public zzben(zzbdi zzbdiVar, zzsm zzsmVar, boolean z) {
        super(zzbdiVar, zzsmVar, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final WebResourceResponse m4104a(WebView webView, String str, Map<String, String> map) {
        if (!(webView instanceof zzbdi)) {
            zzavs.zzez("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        zzbdi zzbdiVar = (zzbdi) webView;
        if (this.f11736b != null) {
            this.f11736b.zza(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            Map<String, String> map2 = map;
            if (map == null) {
                map2 = Collections.emptyMap();
            }
            return super.m4115a(str, map2);
        }
        if (zzbdiVar.zzaaa() != null) {
            zzbdiVar.zzaaa().zztn();
        }
        String str2 = (String) zzve.zzoy().zzd(zzbdiVar.zzzy().zzabt() ? zzzn.zzchn : zzbdiVar.zzaaf() ? zzzn.zzchm : zzzn.zzchl);
        zzq.zzkq();
        return zzawb.zzd(zzbdiVar.getContext(), zzbdiVar.zzyr().zzbma, str2);
    }
}
