package com.hiya.stingray.util;

import com.google.common.collect.g0;
import i.c.b0.b.v;
import i.c.b0.k.a;
import i.c.b0.k.b;
import i.c.b0.k.d;
import java.util.Map;
/* renamed from: com.hiya.stingray.util.a0 */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/a0.class */
public class C1802a0 {

    /* renamed from: c */
    private static final C1803d f4981c = new C1803d();

    /* renamed from: b */
    private final d<Object> f4983b = b.c().a();

    /* renamed from: a */
    private final Map<Class<?>, d<Object>> f4982a = g0.e();

    /* renamed from: com.hiya.stingray.util.a0$d */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/util/a0$d.class */
    public static class C1803d {
    }

    /* renamed from: b */
    public <T> v<T> m983b(Class<T> cls) {
        v vVar;
        if (this.f4982a.containsKey(cls)) {
            vVar = this.f4983b.mergeWith(this.f4982a.get(cls));
        } else {
            d<Object> a = a.c().a();
            this.f4982a.put(cls, a);
            vVar = this.f4983b.mergeWith(a);
        }
        return vVar.filter(new c(this)).filter(new b(this, cls)).map(new a(this));
    }

    /* renamed from: c */
    public void m982c(Object obj) {
        this.f4983b.onNext(obj);
    }

    /* renamed from: d */
    public void m981d(Object obj) {
        d<Object> dVar;
        if (this.f4982a.containsKey(obj.getClass())) {
            dVar = this.f4982a.get(obj.getClass());
        } else {
            dVar = a.c().a();
            this.f4982a.put(obj.getClass(), dVar);
        }
        dVar.onNext(obj);
    }

    /* renamed from: e */
    public void m980e(Class<?> cls) {
        d<Object> dVar = this.f4982a.get(cls);
        if (dVar != null) {
            dVar.onNext(f4981c);
        }
    }
}
