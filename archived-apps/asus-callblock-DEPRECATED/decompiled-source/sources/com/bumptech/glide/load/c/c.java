package com.bumptech.glide.load.c;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/c.class */
public final class c {
    private static final j c = new j() { // from class: com.bumptech.glide.load.c.c.1
        @Override // com.bumptech.glide.load.c.j
        public final com.bumptech.glide.load.a.c a(Object obj, int i, int i2) {
            throw new NoSuchMethodError("This should never be called!");
        }

        public final String toString() {
            return "NULL_MODEL_LOADER";
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final Map<Class, Map<Class, k>> f3562a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class, Map<Class, j>> f3563b = new HashMap();
    private final Context d;

    public c(Context context) {
        this.d = context.getApplicationContext();
    }

    private <T, Y> void a(Class<T> cls, Class<Y> cls2, j<T, Y> jVar) {
        Map<Class, j> map = this.f3563b.get(cls);
        Map<Class, j> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
            this.f3563b.put(cls, map2);
        }
        map2.put(cls2, jVar);
    }

    public final <T, Y> j<T, Y> a(Class<T> cls, Class<Y> cls2) {
        j jVar;
        Map<Class, k> map;
        synchronized (this) {
            Map<Class, j> map2 = this.f3563b.get(cls);
            jVar = map2 != null ? map2.get(cls2) : null;
            if (jVar == null) {
                Map<Class, k> map3 = this.f3562a.get(cls);
                k kVar = map3 != null ? map3.get(cls2) : null;
                k kVar2 = kVar;
                if (kVar == null) {
                    Iterator<Class> it = this.f3562a.keySet().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            kVar2 = kVar;
                            break;
                        }
                        Class next = it.next();
                        if (next.isAssignableFrom(cls) && (map = this.f3562a.get(next)) != null) {
                            kVar = map.get(cls2);
                            kVar2 = kVar;
                            if (kVar != null) {
                                break;
                            }
                        }
                    }
                }
                if (kVar2 != null) {
                    j<T, Y> a2 = kVar2.a(this.d, this);
                    a(cls, cls2, a2);
                    jVar = a2;
                } else {
                    a(cls, cls2, c);
                    jVar = jVar;
                }
            } else if (c.equals(jVar)) {
                jVar = null;
            }
        }
        return jVar;
    }

    public final <T, Y> k<T, Y> a(Class<T> cls, Class<Y> cls2, k<T, Y> kVar) {
        k<T, Y> kVar2;
        synchronized (this) {
            this.f3563b.clear();
            Map<Class, k> map = this.f3562a.get(cls);
            Map<Class, k> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                this.f3562a.put(cls, map2);
            }
            k<T, Y> put = map2.put(cls2, kVar);
            kVar2 = put;
            if (put != null) {
                Iterator<Map<Class, k>> it = this.f3562a.values().iterator();
                while (true) {
                    kVar2 = put;
                    if (it.hasNext()) {
                        if (it.next().containsValue(put)) {
                            kVar2 = null;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
        return kVar2;
    }
}
