package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.lifecycle.f0 */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/f0.class */
public class C0326f0 {

    /* renamed from: a */
    private final HashMap<String, AbstractC0318b0> f1706a = new HashMap<>();

    /* renamed from: a */
    public final void m5443a() {
        for (AbstractC0318b0 abstractC0318b0 : this.f1706a.values()) {
            abstractC0318b0.m5455a();
        }
        this.f1706a.clear();
    }

    /* renamed from: b */
    public final AbstractC0318b0 m5442b(String str) {
        return this.f1706a.get(str);
    }

    /* renamed from: c */
    Set<String> m5441c() {
        return new HashSet(this.f1706a.keySet());
    }

    /* renamed from: d */
    public final void m5440d(String str, AbstractC0318b0 abstractC0318b0) {
        AbstractC0318b0 put = this.f1706a.put(str, abstractC0318b0);
        if (put != null) {
            put.m5452d();
        }
    }
}
