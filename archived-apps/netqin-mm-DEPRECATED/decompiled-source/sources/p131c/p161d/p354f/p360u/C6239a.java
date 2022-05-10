package p131c.p161d.p354f.p360u;

import com.google.gson.internal.C$Gson$Types;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import p131c.p161d.p354f.p356t.C6137a;
/* renamed from: c.d.f.u.a */
/* loaded from: classes2-dex2jar.jar:c/d/f/u/a.class */
public class C6239a<T> {

    /* renamed from: a */
    public final Class<? super T> f19814a;

    /* renamed from: b */
    public final Type f19815b;

    /* renamed from: c */
    public final int f19816c;

    public C6239a() {
        Type b = m21832b(C6239a.class);
        this.f19815b = b;
        this.f19814a = (Class<? super T>) C$Gson$Types.m7116e(b);
        this.f19816c = this.f19815b.hashCode();
    }

    public C6239a(Type type) {
        C6137a.m21941a(type);
        Type b = C$Gson$Types.m7121b(type);
        this.f19815b = b;
        this.f19814a = (Class<? super T>) C$Gson$Types.m7116e(b);
        this.f19816c = this.f19815b.hashCode();
    }

    /* renamed from: a */
    public static <T> C6239a<T> m21835a(Class<T> cls) {
        return new C6239a<>(cls);
    }

    /* renamed from: a */
    public static C6239a<?> m21834a(Type type) {
        return new C6239a<>(type);
    }

    /* renamed from: b */
    public static Type m21832b(Class<?> cls) {
        Type genericSuperclass = cls.getGenericSuperclass();
        if (!(genericSuperclass instanceof Class)) {
            return C$Gson$Types.m7121b(((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
        }
        throw new RuntimeException("Missing type parameter.");
    }

    /* renamed from: a */
    public final Class<? super T> m21836a() {
        return this.f19814a;
    }

    /* renamed from: b */
    public final Type m21833b() {
        return this.f19815b;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C6239a) && C$Gson$Types.m7125a(this.f19815b, ((C6239a) obj).f19815b);
    }

    public final int hashCode() {
        return this.f19816c;
    }

    public final String toString() {
        return C$Gson$Types.m7113h(this.f19815b);
    }
}
