package com.inmobi.ads;

import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;
/* renamed from: com.inmobi.ads.as */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/as.class */
public final class C8117as extends C8103ak {
    public C8117as(String str, String str2, C8104al alVar, String str3, int i, JSONObject jSONObject) {
        this(str, str2, alVar, str3, new LinkedList(), i, jSONObject);
    }

    public C8117as(String str, String str2, C8104al alVar, String str3, List<NativeTracker> list, int i, JSONObject jSONObject) {
        super(str, str2, "IMAGE", alVar, list);
        this.f31680e = str3;
        if (jSONObject != null) {
            this.f31684i = i;
            this.f31681f = jSONObject;
        }
    }
}
