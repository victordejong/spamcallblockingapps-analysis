package com.revenuecat.purchases.subscriberattributes.caching;

import com.revenuecat.purchases.subscriberattributes.SubscriberAttribute;
import java.util.Map;
import kotlin.w.c.k;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/caching/CachingHelpersKt.class */
public final class CachingHelpersKt {
    public static final JSONObject toJSONObject(Map<String, ? extends Map<String, SubscriberAttribute>> map) {
        k.f(map, "$this$toJSONObject");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, ? extends Map<String, SubscriberAttribute>> entry : map.entrySet()) {
            String key = entry.getKey();
            Map map2 = (Map) entry.getValue();
            JSONObject jSONObject2 = new JSONObject();
            for (Map.Entry entry2 : map2.entrySet()) {
                jSONObject2.put((String) entry2.getKey(), ((SubscriberAttribute) entry2.getValue()).toJSONObject());
            }
            jSONObject.put(key, jSONObject2);
        }
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("attributes", jSONObject);
        return jSONObject3;
    }
}
