package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.webkit.WebResourceRequest;
import java.util.Collections;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfn.class */
public final class zzbfn {

    /* renamed from: a */
    private final String f11816a;
    public final Uri uri;
    public final String url;
    public final Map<String, String> zzab;

    public zzbfn(WebResourceRequest webResourceRequest) {
        this(webResourceRequest.getUrl().toString(), webResourceRequest.getUrl(), webResourceRequest.getMethod(), webResourceRequest.getRequestHeaders());
    }

    public zzbfn(String str) {
        this(str, Uri.parse(str), null, null);
    }

    private zzbfn(String str, Uri uri, String str2, Map<String, String> map) {
        this.url = str;
        this.uri = uri;
        this.f11816a = str2 == null ? "GET" : str2;
        this.zzab = map == null ? Collections.emptyMap() : map;
    }
}
