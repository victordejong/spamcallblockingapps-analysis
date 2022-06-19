package com.hiya.stingray.util;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.w.b.l;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.util.b0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/b0.class */
public class C1805b0 {

    /* renamed from: a */
    private Map<Object, Object> f4985a = new LinkedHashMap();

    /* renamed from: b */
    public static /* synthetic */ Object m978b(C1805b0 c1805b0, Class cls, boolean z, l lVar, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                z = false;
            }
            if ((i & 4) != 0) {
                lVar = null;
            }
            return c1805b0.m979a(cls, z, lVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: get");
    }

    /* renamed from: a */
    public <T> T m979a(Class<T> cls, boolean z, l<? super T, Boolean> lVar) {
        k.g(cls, "sticky");
        Object obj = this.f4985a.get(cls);
        if (!(obj instanceof Object)) {
            obj = null;
        }
        boolean z2 = true;
        if (lVar != null) {
            z2 = obj != null && ((Boolean) lVar.invoke(obj)).booleanValue();
        }
        if (z2 && z) {
            this.f4985a.remove(cls);
        }
        T t = null;
        if (z2) {
            t = obj;
        }
        return t;
    }

    /* renamed from: c */
    public <T> void m977c(T t) {
        k.g(t, "sticky");
        this.f4985a.put(t.getClass(), t);
    }
}
