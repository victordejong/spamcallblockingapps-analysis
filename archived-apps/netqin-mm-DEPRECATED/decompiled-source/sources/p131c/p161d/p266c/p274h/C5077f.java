package p131c.p161d.p266c.p274h;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.reflect.Types;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import p131c.p161d.p266c.p267a.C4922i;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.h.f */
/* loaded from: classes2-dex2jar.jar:c/d/c/h/f.class */
public final class C5077f {

    /* renamed from: a */
    public final C5080c f17668a;

    /* renamed from: c.d.c.h.f$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/h/f$a.class */
    public static final class C5078a extends AbstractC5085g {

        /* renamed from: b */
        public final /* synthetic */ Map f17669b;

        /* renamed from: c */
        public final /* synthetic */ Type f17670c;

        public C5078a(Map map, Type type) {
            this.f17669b = map;
            this.f17670c = type;
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7729a(Class<?> cls) {
            if (!(this.f17670c instanceof WildcardType)) {
                throw new IllegalArgumentException("No type mapping from " + cls + " to " + this.f17670c);
            }
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7728a(GenericArrayType genericArrayType) {
            Type type = this.f17670c;
            if (!(type instanceof WildcardType)) {
                Type a = Types.m7745a(type);
                C4933n.m24782a(a != null, "%s is not an array type.", this.f17670c);
                C5077f.m24543b(this.f17669b, genericArrayType.getGenericComponentType(), a);
            }
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7767a(ParameterizedType parameterizedType) {
            Type type = this.f17670c;
            if (!(type instanceof WildcardType)) {
                ParameterizedType parameterizedType2 = (ParameterizedType) C5077f.m24545b(ParameterizedType.class, type);
                if (!(parameterizedType.getOwnerType() == null || parameterizedType2.getOwnerType() == null)) {
                    C5077f.m24543b(this.f17669b, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
                }
                C4933n.m24781a(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, this.f17670c);
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
                C4933n.m24781a(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    C5077f.m24543b(this.f17669b, actualTypeArguments[i], actualTypeArguments2[i]);
                }
            }
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7727a(TypeVariable<?> typeVariable) {
            this.f17669b.put(new C5082d(typeVariable), this.f17670c);
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7726a(WildcardType wildcardType) {
            Type type = this.f17670c;
            if (type instanceof WildcardType) {
                WildcardType wildcardType2 = (WildcardType) type;
                Type[] upperBounds = wildcardType.getUpperBounds();
                Type[] upperBounds2 = wildcardType2.getUpperBounds();
                Type[] lowerBounds = wildcardType.getLowerBounds();
                Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                C4933n.m24781a(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, this.f17670c);
                for (int i = 0; i < upperBounds.length; i++) {
                    C5077f.m24543b(this.f17669b, upperBounds[i], upperBounds2[i]);
                }
                for (int i2 = 0; i2 < lowerBounds.length; i2++) {
                    C5077f.m24543b(this.f17669b, lowerBounds[i2], lowerBounds2[i2]);
                }
            }
        }
    }

    /* renamed from: c.d.c.h.f$b */
    /* loaded from: classes2-dex2jar.jar:c/d/c/h/f$b.class */
    public static final class C5079b extends AbstractC5085g {

        /* renamed from: b */
        public final Map<C5082d, Type> f17671b = Maps.m8133b();

        /* renamed from: a */
        public static ImmutableMap<C5082d, Type> m24539a(Type type) {
            C4933n.m24795a(type);
            C5079b bVar = new C5079b();
            bVar.m24527a(type);
            return ImmutableMap.copyOf(bVar.f17671b);
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x001d, code lost:
            if (r6 == null) goto L_0x0034;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
            r6 = r4.f17671b.remove(p131c.p161d.p266c.p274h.C5077f.C5082d.m24533b(r6));
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x0034, code lost:
            return;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m24540a(p131c.p161d.p266c.p274h.C5077f.C5082d r5, java.lang.reflect.Type r6) {
            /*
                r4 = this;
                r0 = r4
                java.util.Map<c.d.c.h.f$d, java.lang.reflect.Type> r0 = r0.f17671b
                r1 = r5
                boolean r0 = r0.containsKey(r1)
                if (r0 == 0) goto L_0x000e
                return
            L_0x000e:
                r0 = r6
                r7 = r0
            L_0x0010:
                r0 = r7
                if (r0 == 0) goto L_0x0049
                r0 = r5
                r1 = r7
                boolean r0 = r0.m24535a(r1)
                if (r0 == 0) goto L_0x0035
            L_0x001c:
                r0 = r6
                if (r0 == 0) goto L_0x0034
                r0 = r4
                java.util.Map<c.d.c.h.f$d, java.lang.reflect.Type> r0 = r0.f17671b
                r1 = r6
                c.d.c.h.f$d r1 = p131c.p161d.p266c.p274h.C5077f.C5082d.m24533b(r1)
                java.lang.Object r0 = r0.remove(r1)
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r6 = r0
                goto L_0x001c
            L_0x0034:
                return
            L_0x0035:
                r0 = r4
                java.util.Map<c.d.c.h.f$d, java.lang.reflect.Type> r0 = r0.f17671b
                r1 = r7
                c.d.c.h.f$d r1 = p131c.p161d.p266c.p274h.C5077f.C5082d.m24533b(r1)
                java.lang.Object r0 = r0.get(r1)
                java.lang.reflect.Type r0 = (java.lang.reflect.Type) r0
                r7 = r0
                goto L_0x0010
            L_0x0049:
                r0 = r4
                java.util.Map<c.d.c.h.f$d, java.lang.reflect.Type> r0 = r0.f17671b
                r1 = r5
                r2 = r6
                java.lang.Object r0 = r0.put(r1, r2)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p266c.p274h.C5077f.C5079b.m24540a(c.d.c.h.f$d, java.lang.reflect.Type):void");
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7729a(Class<?> cls) {
            m24527a(cls.getGenericSuperclass());
            m24527a(cls.getGenericInterfaces());
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7767a(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            C4933n.m24776b(typeParameters.length == actualTypeArguments.length);
            for (int i = 0; i < typeParameters.length; i++) {
                m24540a(new C5082d(typeParameters[i]), actualTypeArguments[i]);
            }
            m24527a(cls);
            m24527a(parameterizedType.getOwnerType());
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7727a(TypeVariable<?> typeVariable) {
            m24527a(typeVariable.getBounds());
        }

        @Override // p131c.p161d.p266c.p274h.AbstractC5085g
        /* renamed from: a */
        public void mo7726a(WildcardType wildcardType) {
            m24527a(wildcardType.getUpperBounds());
        }
    }

    /* renamed from: c.d.c.h.f$c */
    /* loaded from: classes2-dex2jar.jar:c/d/c/h/f$c.class */
    public static class C5080c {

        /* renamed from: a */
        public final ImmutableMap<C5082d, Type> f17672a;

        /* renamed from: c.d.c.h.f$c$a */
        /* loaded from: classes2-dex2jar.jar:c/d/c/h/f$c$a.class */
        public class C5081a extends C5080c {

            /* renamed from: b */
            public final /* synthetic */ TypeVariable f17673b;

            /* renamed from: c */
            public final /* synthetic */ C5080c f17674c;

            public C5081a(C5080c cVar, TypeVariable typeVariable, C5080c cVar2) {
                this.f17673b = typeVariable;
                this.f17674c = cVar2;
            }

            @Override // p131c.p161d.p266c.p274h.C5077f.C5080c
            /* renamed from: a */
            public Type mo24536a(TypeVariable<?> typeVariable, C5080c cVar) {
                return typeVariable.getGenericDeclaration().equals(this.f17673b.getGenericDeclaration()) ? typeVariable : this.f17674c.mo24536a(typeVariable, cVar);
            }
        }

        public C5080c() {
            this.f17672a = ImmutableMap.m8380of();
        }

        public C5080c(ImmutableMap<C5082d, Type> immutableMap) {
            this.f17672a = immutableMap;
        }

        /* renamed from: a */
        public final C5080c m24537a(Map<C5082d, ? extends Type> map) {
            ImmutableMap.C7476b builder = ImmutableMap.builder();
            builder.mo8317a(this.f17672a);
            for (Map.Entry<C5082d, ? extends Type> entry : map.entrySet()) {
                C5082d key = entry.getKey();
                Type type = (Type) entry.getValue();
                C4933n.m24782a(!key.m24535a(type), "Type variable %s bound to itself", key);
                builder.mo8319a(key, type);
            }
            return new C5080c(builder.mo8322a());
        }

        /* renamed from: a */
        public final Type m24538a(TypeVariable<?> typeVariable) {
            return mo24536a(typeVariable, new C5081a(this, typeVariable, this));
        }

        /* renamed from: a */
        public Type mo24536a(TypeVariable<?> typeVariable, C5080c cVar) {
            Type type = this.f17672a.get(new C5082d(typeVariable));
            if (type != null) {
                return new C5077f(cVar, null).m24551a(type);
            }
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length == 0) {
                return typeVariable;
            }
            Type[] a = new C5077f(cVar, null).m24546a(bounds);
            return (!Types.C7742c.f30899a || !Arrays.equals(bounds, a)) ? Types.m7746a(typeVariable.getGenericDeclaration(), typeVariable.getName(), a) : typeVariable;
        }
    }

    /* renamed from: c.d.c.h.f$d */
    /* loaded from: classes2-dex2jar.jar:c/d/c/h/f$d.class */
    public static final class C5082d {

        /* renamed from: a */
        public final TypeVariable<?> f17675a;

        public C5082d(TypeVariable<?> typeVariable) {
            C4933n.m24795a(typeVariable);
            this.f17675a = typeVariable;
        }

        /* renamed from: b */
        public static C5082d m24533b(Type type) {
            if (type instanceof TypeVariable) {
                return new C5082d((TypeVariable) type);
            }
            return null;
        }

        /* renamed from: a */
        public boolean m24535a(Type type) {
            if (type instanceof TypeVariable) {
                return m24534a((TypeVariable) type);
            }
            return false;
        }

        /* renamed from: a */
        public final boolean m24534a(TypeVariable<?> typeVariable) {
            return this.f17675a.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.f17675a.getName().equals(typeVariable.getName());
        }

        public boolean equals(Object obj) {
            if (obj instanceof C5082d) {
                return m24534a(((C5082d) obj).f17675a);
            }
            return false;
        }

        public int hashCode() {
            return C4928k.m24807a(this.f17675a.getGenericDeclaration(), this.f17675a.getName());
        }

        public String toString() {
            return this.f17675a.toString();
        }
    }

    /* renamed from: c.d.c.h.f$e */
    /* loaded from: classes2-dex2jar.jar:c/d/c/h/f$e.class */
    public static class C5083e {

        /* renamed from: b */
        public static final C5083e f17676b = new C5083e();

        /* renamed from: a */
        public final AtomicInteger f17677a;

        /* renamed from: c.d.c.h.f$e$a */
        /* loaded from: classes2-dex2jar.jar:c/d/c/h/f$e$a.class */
        public class C5084a extends C5083e {

            /* renamed from: c */
            public final /* synthetic */ TypeVariable f17678c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5084a(C5083e eVar, AtomicInteger atomicInteger, TypeVariable typeVariable) {
                super(atomicInteger, null);
                this.f17678c = typeVariable;
            }

            @Override // p131c.p161d.p266c.p274h.C5077f.C5083e
            /* renamed from: a */
            public TypeVariable<?> mo24528a(Type[] typeArr) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                linkedHashSet.addAll(Arrays.asList(this.f17678c.getBounds()));
                if (linkedHashSet.size() > 1) {
                    linkedHashSet.remove(Object.class);
                }
                return super.mo24528a((Type[]) linkedHashSet.toArray(new Type[0]));
            }
        }

        public C5083e() {
            this(new AtomicInteger());
        }

        public C5083e(AtomicInteger atomicInteger) {
            this.f17677a = atomicInteger;
        }

        public /* synthetic */ C5083e(AtomicInteger atomicInteger, C5078a aVar) {
            this(atomicInteger);
        }

        /* renamed from: a */
        public final C5083e m24532a() {
            return new C5083e(this.f17677a);
        }

        /* renamed from: a */
        public final C5083e m24530a(TypeVariable<?> typeVariable) {
            return new C5084a(this, this.f17677a, typeVariable);
        }

        /* renamed from: a */
        public final Type m24531a(Type type) {
            C4933n.m24795a(type);
            if (!(type instanceof Class) && !(type instanceof TypeVariable)) {
                if (type instanceof GenericArrayType) {
                    return Types.m7737b(m24532a().m24531a(((GenericArrayType) type).getGenericComponentType()));
                }
                if (type instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    Class cls = (Class) parameterizedType.getRawType();
                    TypeVariable<?>[] typeParameters = cls.getTypeParameters();
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    for (int i = 0; i < actualTypeArguments.length; i++) {
                        actualTypeArguments[i] = m24530a(typeParameters[i]).m24531a(actualTypeArguments[i]);
                    }
                    return Types.m7744a(m24532a().m24529b(parameterizedType.getOwnerType()), cls, actualTypeArguments);
                } else if (type instanceof WildcardType) {
                    WildcardType wildcardType = (WildcardType) type;
                    if (wildcardType.getLowerBounds().length == 0) {
                        type = mo24528a(wildcardType.getUpperBounds());
                    }
                    return type;
                } else {
                    throw new AssertionError("must have been one of the known types");
                }
            }
            return type;
        }

        /* renamed from: a */
        public TypeVariable<?> mo24528a(Type[] typeArr) {
            return Types.m7746a(C5083e.class, "capture#" + this.f17677a.incrementAndGet() + "-of ? extends " + C4922i.m24830a('&').m24825a((Object[]) typeArr), typeArr);
        }

        /* renamed from: b */
        public final Type m24529b(Type type) {
            if (type == null) {
                return null;
            }
            return m24531a(type);
        }
    }

    public C5077f() {
        this.f17668a = new C5080c();
    }

    public C5077f(C5080c cVar) {
        this.f17668a = cVar;
    }

    public /* synthetic */ C5077f(C5080c cVar, C5078a aVar) {
        this(cVar);
    }

    /* renamed from: b */
    public static C5077f m24544b(Type type) {
        return new C5077f().m24548a(C5079b.m24539a(type));
    }

    /* renamed from: b */
    public static <T> T m24545b(Class<T> cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException e) {
            throw new IllegalArgumentException(obj + " is not a " + cls.getSimpleName());
        }
    }

    /* renamed from: b */
    public static void m24543b(Map<C5082d, Type> map, Type type, Type type2) {
        if (!type.equals(type2)) {
            new C5078a(map, type2).m24527a(type);
        }
    }

    /* renamed from: c */
    public static C5077f m24541c(Type type) {
        return new C5077f().m24548a(C5079b.m24539a(C5083e.f17676b.m24531a(type)));
    }

    /* renamed from: a */
    public C5077f m24550a(Type type, Type type2) {
        HashMap b = Maps.m8133b();
        C4933n.m24795a(type);
        C4933n.m24795a(type2);
        m24543b(b, type, type2);
        return m24548a(b);
    }

    /* renamed from: a */
    public C5077f m24548a(Map<C5082d, ? extends Type> map) {
        return new C5077f(this.f17668a.m24537a(map));
    }

    /* renamed from: a */
    public final ParameterizedType m24552a(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return Types.m7744a(ownerType == null ? null : m24551a(ownerType), (Class) m24551a(parameterizedType.getRawType()), m24546a(parameterizedType.getActualTypeArguments()));
    }

    /* renamed from: a */
    public final Type m24553a(GenericArrayType genericArrayType) {
        return Types.m7737b(m24551a(genericArrayType.getGenericComponentType()));
    }

    /* renamed from: a */
    public Type m24551a(Type type) {
        C4933n.m24795a(type);
        if (type instanceof TypeVariable) {
            return this.f17668a.m24538a((TypeVariable) type);
        }
        if (type instanceof ParameterizedType) {
            return m24552a((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return m24553a((GenericArrayType) type);
        }
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = m24549a((WildcardType) type);
        }
        return type2;
    }

    /* renamed from: a */
    public final WildcardType m24549a(WildcardType wildcardType) {
        return new Types.WildcardTypeImpl(m24546a(wildcardType.getLowerBounds()), m24546a(wildcardType.getUpperBounds()));
    }

    /* renamed from: a */
    public final Type[] m24546a(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = m24551a(typeArr[i]);
        }
        return typeArr2;
    }

    /* renamed from: b */
    public Type[] m24542b(Type[] typeArr) {
        for (int i = 0; i < typeArr.length; i++) {
            typeArr[i] = m24551a(typeArr[i]);
        }
        return typeArr;
    }
}
