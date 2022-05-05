package com.google.p051a.p057c;

import com.google.p051a.p053b.C1382a;
import com.google.p051a.p053b.C1457b;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/* renamed from: com.google.a.c.a */
/* loaded from: classes-dex2jar.jar:com/google/a/c/a.class */
public final class C1493a<T> {

    /* renamed from: a */
    final Class<? super T> f5706a;

    /* renamed from: b */
    final Type f5707b;

    /* renamed from: c */
    final int f5708c;

    protected C1493a() {
        Type genericSuperclass = getClass().getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            this.f5707b = C1457b.m6300a(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
            this.f5706a = (Class<? super T>) C1457b.m6294b(this.f5707b);
            this.f5708c = this.f5707b.hashCode();
            return;
        }
        throw new RuntimeException("Missing type parameter.");
    }

    private C1493a(Type type) {
        this.f5707b = C1457b.m6300a((Type) C1382a.m6353a(type));
        this.f5706a = (Class<? super T>) C1457b.m6294b(this.f5707b);
        this.f5708c = this.f5707b.hashCode();
    }

    /* renamed from: a */
    public static <T> C1493a<T> m6253a(Class<T> cls) {
        return new C1493a<>(cls);
    }

    /* renamed from: a */
    public static C1493a<?> m6252a(Type type) {
        return new C1493a<>(type);
    }

    /* renamed from: a */
    public final Class<? super T> m6254a() {
        return this.f5706a;
    }

    /* renamed from: b */
    public final Type m6251b() {
        return this.f5707b;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C1493a) && C1457b.m6295a(this.f5707b, ((C1493a) obj).f5707b);
    }

    public final int hashCode() {
        return this.f5708c;
    }

    public final String toString() {
        return C1457b.m6291c(this.f5707b);
    }
}
