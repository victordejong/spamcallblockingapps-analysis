package com.google.p051a;

import com.google.p051a.p053b.C1483v;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.a.w */
/* loaded from: classes-dex2jar.jar:com/google/a/w.class */
public final class C1520w extends AbstractC1517t {

    /* renamed from: a */
    private final C1483v<String, AbstractC1517t> f5777a = new C1483v<>();

    /* renamed from: a */
    public final void m6169a(String str, AbstractC1517t tVar) {
        AbstractC1517t tVar2 = tVar;
        if (tVar == null) {
            tVar2 = C1519v.f5776a;
        }
        this.f5777a.put(str, tVar2);
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            return (obj instanceof C1520w) && ((C1520w) obj).f5777a.equals(this.f5777a);
        }
        return true;
    }

    /* renamed from: h */
    public final Set<Map.Entry<String, AbstractC1517t>> m6168h() {
        return this.f5777a.entrySet();
    }

    public final int hashCode() {
        return this.f5777a.hashCode();
    }
}
