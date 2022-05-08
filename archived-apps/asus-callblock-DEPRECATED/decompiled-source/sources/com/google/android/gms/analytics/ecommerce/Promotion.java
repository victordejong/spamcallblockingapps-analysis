package com.google.android.gms.analytics.ecommerce;

import com.google.android.gms.analytics.zzg;
import com.google.android.gms.common.internal.b;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/ecommerce/Promotion.class */
public class Promotion {
    public static final String ACTION_CLICK = "click";
    public static final String ACTION_VIEW = "view";

    /* renamed from: a  reason: collision with root package name */
    Map<String, String> f3793a = new HashMap();

    private void a(String str, String str2) {
        b.a(str, (Object) "Name should be non-null");
        this.f3793a.put(str, str2);
    }

    public Promotion setCreative(String str) {
        a("cr", str);
        return this;
    }

    public Promotion setId(String str) {
        a("id", str);
        return this;
    }

    public Promotion setName(String str) {
        a("nm", str);
        return this;
    }

    public Promotion setPosition(String str) {
        a("ps", str);
        return this;
    }

    public String toString() {
        return zzg.zzO(this.f3793a);
    }

    public Map<String, String> zzbD(String str) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : this.f3793a.entrySet()) {
            String valueOf = String.valueOf(str);
            String valueOf2 = String.valueOf(entry.getKey());
            hashMap.put(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), entry.getValue());
        }
        return hashMap;
    }
}
