package com.inmobi.commons.core.utilities.p516b;

import com.inmobi.commons.core.utilities.uid.C8416c;
import com.inmobi.commons.p508a.C8327b;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.inmobi.commons.core.utilities.b.f */
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/utilities/b/f.class */
public class C8403f {

    /* renamed from: a */
    public static final String f32667a = "f";

    /* renamed from: a */
    public static Map<String, String> m5673a() {
        HashMap hashMap = new HashMap();
        try {
            hashMap.put("mk-version", C8327b.m5881a());
            C8416c.m5632a();
            Boolean g = C8416c.m5625g();
            if (g != null) {
                hashMap.put("u-id-adt", String.valueOf(g.booleanValue() ? 1 : 0));
            }
            hashMap.put("ts", String.valueOf(Calendar.getInstance().getTimeInMillis()));
            Calendar instance = Calendar.getInstance();
            hashMap.put("tz", String.valueOf(instance.get(15) + instance.get(16)));
            C8405h a = C8405h.m5655a();
            HashMap hashMap2 = new HashMap();
            if (a.f32687d && a.f32684a != null) {
                hashMap2.put("u-s-id", a.f32684a);
            }
            hashMap.putAll(hashMap2);
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in getting UID info; ").append(e.getMessage());
        }
        return hashMap;
    }
}
