package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajx.class */
public final class zzajx {

    /* renamed from: a */
    private static final Charset f10960a = Charset.forName("UTF-8");
    public static final zzajy<JSONObject> zzdaq = new C1762bh();
    public static final zzajw<InputStream> zzdar = C1763bi.f8293a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ InputStream m4378a(JSONObject jSONObject) {
        return new ByteArrayInputStream(jSONObject.toString().getBytes(f10960a));
    }
}
