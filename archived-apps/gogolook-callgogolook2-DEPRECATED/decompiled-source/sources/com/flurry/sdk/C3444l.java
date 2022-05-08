package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.flurry.sdk.l */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/l.class */
public class C3444l {

    /* renamed from: a */
    public static final String f5917a = "l";

    /* renamed from: c */
    public static C3444l f5918c;

    /* renamed from: b */
    public final TreeMap<String, Integer> f5919b = new TreeMap<>();

    /* renamed from: a */
    public static C3444l m32473a() {
        C3444l lVar;
        synchronized (C3444l.class) {
            try {
                if (f5918c == null) {
                    f5918c = new C3444l();
                }
                lVar = f5918c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return lVar;
    }

    /* renamed from: a */
    public final void m32472a(String str) {
        synchronized (this.f5919b) {
            Integer num = this.f5919b.get(str);
            TreeMap<String, Integer> treeMap = this.f5919b;
            int i = 1;
            if (num != null) {
                i = 1 + num.intValue();
            }
            treeMap.put(str, Integer.valueOf(i));
        }
    }

    /* renamed from: b */
    public final void m32471b(String str) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = f5917a;
            C3356jq.m32615a(3, str2, "========== PRINT " + str.toUpperCase(Locale.getDefault()) + " COUNTERS ==========");
            synchronized (this.f5919b) {
                for (Map.Entry<String, Integer> entry : this.f5919b.entrySet()) {
                    if (entry.getKey().startsWith(str)) {
                        String str3 = f5917a;
                        C3356jq.m32615a(3, str3, entry.getKey() + " " + entry.getValue());
                    }
                }
            }
            String str4 = f5917a;
            C3356jq.m32615a(3, str4, "========== FINALIZE PRINT " + str.toUpperCase(Locale.getDefault()) + " COUNTERS ==========");
        }
    }
}
