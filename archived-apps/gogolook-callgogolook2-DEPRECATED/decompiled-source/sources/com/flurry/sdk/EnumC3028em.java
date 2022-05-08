package com.flurry.sdk;

import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.em */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/em.class */
public enum EnumC3028em {
    Unknown("unknown"),
    Streaming("streaming"),
    Progressive("progressive");
    

    /* renamed from: d */
    public static final Map<String, EnumC3028em> f4730d;

    static {
        HashMap hashMap = new HashMap(values().length);
        f4730d = hashMap;
        hashMap.put("unknown", Unknown);
        f4730d.put("streaming", Streaming);
        f4730d.put("progressive", Progressive);
    }

    EnumC3028em(String str) {
    }

    /* renamed from: a */
    public static EnumC3028em m33239a(String str) {
        return f4730d.containsKey(str) ? f4730d.get(str) : Unknown;
    }
}
