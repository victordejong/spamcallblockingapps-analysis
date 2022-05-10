package p131c.p161d.p354f.p356t;

import com.google.gson.JsonIOException;
import com.google.gson.internal.LinkedTreeMap;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import p131c.p161d.p354f.AbstractC6119g;
import p131c.p161d.p354f.p356t.p359l.AbstractC6237b;
import p131c.p161d.p354f.p360u.C6239a;
/* renamed from: c.d.f.t.b */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/b.class */
public final class C6138b {

    /* renamed from: a */
    public final Map<Type, AbstractC6119g<?>> f19648a;

    /* renamed from: b */
    public final AbstractC6237b f19649b = AbstractC6237b.m21841a();

    /* renamed from: c.d.f.t.b$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$a.class */
    public class C6139a implements AbstractC6157f<T> {
        public C6139a(C6138b bVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.concurrent.ConcurrentHashMap] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return new ConcurrentHashMap();
        }
    }

    /* renamed from: c.d.f.t.b$b */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$b.class */
    public class C6140b implements AbstractC6157f<T> {
        public C6140b(C6138b bVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.TreeMap, T] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return new TreeMap();
        }
    }

    /* renamed from: c.d.f.t.b$c */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$c.class */
    public class C6141c implements AbstractC6157f<T> {
        public C6141c(C6138b bVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.LinkedHashMap, T] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return new LinkedHashMap();
        }
    }

    /* renamed from: c.d.f.t.b$d */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$d.class */
    public class C6142d implements AbstractC6157f<T> {
        public C6142d(C6138b bVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, com.google.gson.internal.LinkedTreeMap] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return new LinkedTreeMap();
        }
    }

    /* renamed from: c.d.f.t.b$e */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$e.class */
    public class C6143e implements AbstractC6157f<T> {

        /* renamed from: a */
        public final AbstractC6163j f19650a = AbstractC6163j.m21908a();

        /* renamed from: b */
        public final /* synthetic */ Class f19651b;

        /* renamed from: c */
        public final /* synthetic */ Type f19652c;

        public C6143e(C6138b bVar, Class cls, Type type) {
            this.f19651b = cls;
            this.f19652c = type;
        }

        /* JADX WARN: Type inference failed for: r0v10, types: [T, java.lang.Object] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            try {
                return this.f19650a.mo21906a(this.f19651b);
            } catch (Exception e) {
                throw new RuntimeException("Unable to invoke no-args constructor for " + this.f19652c + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e);
            }
        }
    }

    /* renamed from: c.d.f.t.b$f */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$f.class */
    public class C6144f implements AbstractC6157f<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6119g f19653a;

        /* renamed from: b */
        public final /* synthetic */ Type f19654b;

        public C6144f(C6138b bVar, AbstractC6119g gVar, Type type) {
            this.f19653a = gVar;
            this.f19654b = type;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return this.f19653a.m21964a(this.f19654b);
        }
    }

    /* renamed from: c.d.f.t.b$g */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$g.class */
    public class C6145g implements AbstractC6157f<T> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC6119g f19655a;

        /* renamed from: b */
        public final /* synthetic */ Type f19656b;

        public C6145g(C6138b bVar, AbstractC6119g gVar, Type type) {
            this.f19655a = gVar;
            this.f19656b = type;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return this.f19655a.m21964a(this.f19656b);
        }
    }

    /* renamed from: c.d.f.t.b$h */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$h.class */
    public class C6146h implements AbstractC6157f<T> {

        /* renamed from: a */
        public final /* synthetic */ Constructor f19657a;

        public C6146h(C6138b bVar, Constructor constructor) {
            this.f19657a = constructor;
        }

        /* JADX WARN: Type inference failed for: r0v19, types: [T, java.lang.Object] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            try {
                return this.f19657a.newInstance(null);
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Failed to invoke " + this.f19657a + " with no args", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("Failed to invoke " + this.f19657a + " with no args", e3.getTargetException());
            }
        }
    }

    /* renamed from: c.d.f.t.b$i */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$i.class */
    public class C6147i implements AbstractC6157f<T> {
        public C6147i(C6138b bVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.TreeSet] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return new TreeSet();
        }
    }

    /* renamed from: c.d.f.t.b$j */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$j.class */
    public class C6148j implements AbstractC6157f<T> {

        /* renamed from: a */
        public final /* synthetic */ Type f19658a;

        public C6148j(C6138b bVar, Type type) {
            this.f19658a = type;
        }

        /* JADX WARN: Type inference failed for: r0v24, types: [T, java.util.EnumSet] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            Type type = this.f19658a;
            if (type instanceof ParameterizedType) {
                Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
                if (type2 instanceof Class) {
                    return EnumSet.noneOf((Class) type2);
                }
                throw new JsonIOException("Invalid EnumSet type: " + this.f19658a.toString());
            }
            throw new JsonIOException("Invalid EnumSet type: " + this.f19658a.toString());
        }
    }

    /* renamed from: c.d.f.t.b$k */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$k.class */
    public class C6149k implements AbstractC6157f<T> {
        public C6149k(C6138b bVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.LinkedHashSet] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return new LinkedHashSet();
        }
    }

    /* renamed from: c.d.f.t.b$l */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$l.class */
    public class C6150l implements AbstractC6157f<T> {
        public C6150l(C6138b bVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayDeque] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return new ArrayDeque();
        }
    }

    /* renamed from: c.d.f.t.b$m */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$m.class */
    public class C6151m implements AbstractC6157f<T> {
        public C6151m(C6138b bVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [T, java.util.ArrayList] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return new ArrayList();
        }
    }

    /* renamed from: c.d.f.t.b$n */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/b$n.class */
    public class C6152n implements AbstractC6157f<T> {
        public C6152n(C6138b bVar) {
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.ConcurrentSkipListMap, T] */
        @Override // p131c.p161d.p354f.p356t.AbstractC6157f
        /* renamed from: a */
        public T mo21917a() {
            return new ConcurrentSkipListMap();
        }
    }

    public C6138b(Map<Type, AbstractC6119g<?>> map) {
        this.f19648a = map;
    }

    /* renamed from: a */
    public <T> AbstractC6157f<T> m21939a(C6239a<T> aVar) {
        Type b = aVar.m21833b();
        Class<? super T> a = aVar.m21836a();
        AbstractC6119g<?> gVar = this.f19648a.get(b);
        if (gVar != null) {
            return new C6144f(this, gVar, b);
        }
        AbstractC6119g<?> gVar2 = this.f19648a.get(a);
        if (gVar2 != null) {
            return new C6145g(this, gVar2, b);
        }
        AbstractC6157f<T> a2 = m21938a(a);
        if (a2 != null) {
            return a2;
        }
        AbstractC6157f<T> a3 = m21937a(b, a);
        return a3 != null ? a3 : m21936b(b, a);
    }

    /* renamed from: a */
    public final <T> AbstractC6157f<T> m21938a(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f19649b.mo21840a(declaredConstructor);
            }
            return new C6146h(this, declaredConstructor);
        } catch (NoSuchMethodException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final <T> AbstractC6157f<T> m21937a(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new C6147i(this) : EnumSet.class.isAssignableFrom(cls) ? new C6148j(this, type) : Set.class.isAssignableFrom(cls) ? new C6149k(this) : Queue.class.isAssignableFrom(cls) ? new C6150l(this) : new C6151m(this);
        }
        if (Map.class.isAssignableFrom(cls)) {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new C6152n(this) : ConcurrentMap.class.isAssignableFrom(cls) ? new C6139a(this) : SortedMap.class.isAssignableFrom(cls) ? new C6140b(this) : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(C6239a.m21834a(((ParameterizedType) type).getActualTypeArguments()[0]).m21836a())) ? new C6142d(this) : new C6141c(this);
        }
        return null;
    }

    /* renamed from: b */
    public final <T> AbstractC6157f<T> m21936b(Type type, Class<? super T> cls) {
        return new C6143e(this, cls, type);
    }

    public String toString() {
        return this.f19648a.toString();
    }
}
