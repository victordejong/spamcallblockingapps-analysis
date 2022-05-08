package com.bumptech.glide.f;

import com.bumptech.glide.i.g;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/f/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final g f3411a = new g();

    /* renamed from: b  reason: collision with root package name */
    private final Map<g, b<?, ?>> f3412b = new HashMap();

    public final <T, Z> b<T, Z> a(Class<T> cls, Class<Z> cls2) {
        b<?, ?> bVar;
        synchronized (f3411a) {
            f3411a.a(cls, cls2);
            bVar = this.f3412b.get(f3411a);
        }
        b<T, Z> bVar2 = (b<T, Z>) bVar;
        if (bVar == null) {
            bVar2 = d.e();
        }
        return bVar2;
    }

    public final <T, Z> void a(Class<T> cls, Class<Z> cls2, b<T, Z> bVar) {
        this.f3412b.put(new g(cls, cls2), bVar);
    }
}
