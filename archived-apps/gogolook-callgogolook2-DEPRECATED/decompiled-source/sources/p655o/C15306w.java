package p655o;

import androidx.media2.session.MediaSessionImplBase;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.NoSuchElementException;
import javax.annotation.Nullable;
import okhttp3.ResponseBody;
import p459j.p460a.p582w0.p590x4.C14247d;
import p645m.C15170c;
/* renamed from: o.w */
/* loaded from: classes3-dex2jar.jar:o/w.class */
public final class C15306w {

    /* renamed from: a */
    public static final Type[] f33422a = new Type[0];

    /* renamed from: o.w$a */
    /* loaded from: classes3-dex2jar.jar:o/w$a.class */
    public static final class C15307a implements GenericArrayType {

        /* renamed from: a */
        public final Type f33423a;

        public C15307a(Type type) {
            this.f33423a = type;
        }

        public boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C15306w.m56a(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public Type getGenericComponentType() {
            return this.f33423a;
        }

        public int hashCode() {
            return this.f33423a.hashCode();
        }

        public String toString() {
            return C15306w.m47d(this.f33423a) + "[]";
        }
    }

    /* renamed from: o.w$b */
    /* loaded from: classes3-dex2jar.jar:o/w$b.class */
    public static final class C15308b implements ParameterizedType {
        @Nullable

        /* renamed from: a */
        public final Type f33424a;

        /* renamed from: b */
        public final Type f33425b;

        /* renamed from: c */
        public final Type[] f33426c;

        public C15308b(@Nullable Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                if ((type == null) != (((Class) type2).getEnclosingClass() != null ? false : true)) {
                    throw new IllegalArgumentException();
                }
            }
            for (Type type3 : typeArr) {
                C15306w.m66a(type3, "typeArgument == null");
                C15306w.m60a(type3);
            }
            this.f33424a = type;
            this.f33425b = type2;
            this.f33426c = (Type[]) typeArr.clone();
        }

        public boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C15306w.m56a(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type[] getActualTypeArguments() {
            return (Type[]) this.f33426c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        @Nullable
        public Type getOwnerType() {
            return this.f33424a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public Type getRawType() {
            return this.f33425b;
        }

        public int hashCode() {
            int hashCode = Arrays.hashCode(this.f33426c);
            int hashCode2 = this.f33425b.hashCode();
            Type type = this.f33424a;
            return (hashCode ^ hashCode2) ^ (type != null ? type.hashCode() : 0);
        }

        public String toString() {
            Type[] typeArr = this.f33426c;
            if (typeArr.length == 0) {
                return C15306w.m47d(this.f33425b);
            }
            StringBuilder sb = new StringBuilder((typeArr.length + 1) * 30);
            sb.append(C15306w.m47d(this.f33425b));
            sb.append("<");
            sb.append(C15306w.m47d(this.f33426c[0]));
            for (int i = 1; i < this.f33426c.length; i++) {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
                sb.append(C15306w.m47d(this.f33426c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* renamed from: o.w$c */
    /* loaded from: classes3-dex2jar.jar:o/w$c.class */
    public static final class C15309c implements WildcardType {

        /* renamed from: a */
        public final Type f33427a;
        @Nullable

        /* renamed from: b */
        public final Type f33428b;

        public C15309c(Type[] typeArr, Type[] typeArr2) {
            if (typeArr2.length > 1) {
                throw new IllegalArgumentException();
            } else if (typeArr.length != 1) {
                throw new IllegalArgumentException();
            } else if (typeArr2.length == 1) {
                if (typeArr2[0] != null) {
                    C15306w.m60a(typeArr2[0]);
                    if (typeArr[0] == Object.class) {
                        this.f33428b = typeArr2[0];
                        this.f33427a = Object.class;
                        return;
                    }
                    throw new IllegalArgumentException();
                }
                throw new NullPointerException();
            } else if (typeArr[0] != null) {
                C15306w.m60a(typeArr[0]);
                this.f33428b = null;
                this.f33427a = typeArr[0];
            } else {
                throw new NullPointerException();
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C15306w.m56a(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getLowerBounds() {
            Type type = this.f33428b;
            return type != null ? new Type[]{type} : C15306w.f33422a;
        }

        @Override // java.lang.reflect.WildcardType
        public Type[] getUpperBounds() {
            return new Type[]{this.f33427a};
        }

        public int hashCode() {
            Type type = this.f33428b;
            return (type != null ? type.hashCode() + 31 : 1) ^ (this.f33427a.hashCode() + 31);
        }

        public String toString() {
            if (this.f33428b != null) {
                return "? super " + C15306w.m47d(this.f33428b);
            } else if (this.f33427a == Object.class) {
                return "?";
            } else {
                return "? extends " + C15306w.m47d(this.f33427a);
            }
        }
    }

    /* renamed from: a */
    public static int m53a(Object[] objArr, Object obj) {
        for (int i = 0; i < objArr.length; i++) {
            if (obj.equals(objArr[i])) {
                return i;
            }
        }
        throw new NoSuchElementException();
    }

    @Nullable
    /* renamed from: a */
    public static Class<?> m55a(TypeVariable<?> typeVariable) {
        GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
        return genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
    }

    /* renamed from: a */
    public static <T> T m66a(@Nullable T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: a */
    public static RuntimeException m64a(Method method, int i, String str, Object... objArr) {
        return m63a(method, str + " (parameter #" + (i + 1) + ")", objArr);
    }

    /* renamed from: a */
    public static RuntimeException m63a(Method method, String str, Object... objArr) {
        return m61a(method, (Throwable) null, str, objArr);
    }

    /* renamed from: a */
    public static RuntimeException m62a(Method method, Throwable th, int i, String str, Object... objArr) {
        return m61a(method, th, str + " (parameter #" + (i + 1) + ")", objArr);
    }

    /* renamed from: a */
    public static RuntimeException m61a(Method method, @Nullable Throwable th, String str, Object... objArr) {
        String format = String.format(str, objArr);
        return new IllegalArgumentException(format + "\n    for method " + method.getDeclaringClass().getSimpleName() + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + method.getName(), th);
    }

    /* renamed from: a */
    public static Type m68a(int i, ParameterizedType parameterizedType) {
        Type type = parameterizedType.getActualTypeArguments()[i];
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getLowerBounds()[0];
        }
        return type2;
    }

    /* renamed from: a */
    public static Type m59a(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i = 0; i < length; i++) {
                if (interfaces[i] == cls2) {
                    return cls.getGenericInterfaces()[i];
                }
                if (cls2.isAssignableFrom(interfaces[i])) {
                    return m59a(cls.getGenericInterfaces()[i], interfaces[i], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return m59a(cls.getGenericSuperclass(), (Class<?>) superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    /* renamed from: a */
    public static Type m58a(Type type, Class<?> cls, Type type2) {
        while (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            type2 = m57a(type, cls, (TypeVariable<?>) typeVariable);
            if (type2 == typeVariable) {
                return type2;
            }
        }
        if (type2 instanceof Class) {
            Class cls2 = (Class) type2;
            if (cls2.isArray()) {
                Class<?> componentType = cls2.getComponentType();
                Type a = m58a(type, cls, (Type) componentType);
                return componentType == a ? cls2 : new C15307a(a);
            }
        }
        if (type2 instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type2;
            Type genericComponentType = genericArrayType.getGenericComponentType();
            Type a2 = m58a(type, cls, genericComponentType);
            return genericComponentType == a2 ? genericArrayType : new C15307a(a2);
        }
        if (type2 instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type a3 = m58a(type, cls, ownerType);
            boolean z = a3 != ownerType;
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            int length = actualTypeArguments.length;
            for (int i = 0; i < length; i++) {
                Type a4 = m58a(type, cls, actualTypeArguments[i]);
                z = z;
                actualTypeArguments = actualTypeArguments;
                if (a4 != actualTypeArguments[i]) {
                    z = z;
                    actualTypeArguments = actualTypeArguments;
                    if (!z) {
                        actualTypeArguments = (Type[]) actualTypeArguments.clone();
                        z = true;
                    }
                    actualTypeArguments[i] = a4;
                }
            }
            return z ? new C15308b(a3, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
        }
        WildcardType wildcardType = type2;
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType2 = (WildcardType) type2;
            Type[] lowerBounds = wildcardType2.getLowerBounds();
            Type[] upperBounds = wildcardType2.getUpperBounds();
            if (lowerBounds.length == 1) {
                Type a5 = m58a(type, cls, lowerBounds[0]);
                wildcardType = wildcardType2;
                if (a5 != lowerBounds[0]) {
                    return new C15309c(new Type[]{Object.class}, new Type[]{a5});
                }
            } else {
                wildcardType = wildcardType2;
                if (upperBounds.length == 1) {
                    Type a6 = m58a(type, cls, upperBounds[0]);
                    wildcardType = wildcardType2;
                    if (a6 != upperBounds[0]) {
                        return new C15309c(new Type[]{a6}, f33422a);
                    }
                }
            }
        }
        return wildcardType;
    }

    /* renamed from: a */
    public static Type m57a(Type type, Class<?> cls, TypeVariable<?> typeVariable) {
        Class<?> a = m55a(typeVariable);
        if (a == null) {
            return typeVariable;
        }
        Type a2 = m59a(type, cls, a);
        if (!(a2 instanceof ParameterizedType)) {
            return typeVariable;
        }
        return ((ParameterizedType) a2).getActualTypeArguments()[m53a(a.getTypeParameters(), typeVariable)];
    }

    /* renamed from: a */
    public static ResponseBody m54a(ResponseBody responseBody) throws IOException {
        C15170c cVar = new C15170c();
        responseBody.source().mo301a(cVar);
        return ResponseBody.create(responseBody.contentType(), responseBody.contentLength(), cVar);
    }

    /* renamed from: a */
    public static <T> void m67a(Class<T> cls) {
        if (!cls.isInterface()) {
            throw new IllegalArgumentException("API declarations must be interfaces.");
        } else if (cls.getInterfaces().length > 0) {
            throw new IllegalArgumentException("API interfaces must not extend other interfaces.");
        }
    }

    /* renamed from: a */
    public static void m65a(Throwable th) {
        if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }

    /* renamed from: a */
    public static void m60a(Type type) {
        if ((type instanceof Class) && ((Class) type).isPrimitive()) {
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: a */
    public static boolean m56a(Type type, Type type2) {
        boolean z = true;
        boolean z2 = true;
        boolean z3 = true;
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            Type ownerType = parameterizedType.getOwnerType();
            Type ownerType2 = parameterizedType2.getOwnerType();
            if ((ownerType != ownerType2 && (ownerType == null || !ownerType.equals(ownerType2))) || !parameterizedType.getRawType().equals(parameterizedType2.getRawType()) || !Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments())) {
                z3 = false;
            }
            return z3;
        } else if (type instanceof GenericArrayType) {
            if (!(type2 instanceof GenericArrayType)) {
                return false;
            }
            return m56a(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
        } else if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            if (!Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) || !Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds())) {
                z = false;
            }
            return z;
        } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        } else {
            TypeVariable typeVariable = (TypeVariable) type;
            TypeVariable typeVariable2 = (TypeVariable) type2;
            if (typeVariable.getGenericDeclaration() != typeVariable2.getGenericDeclaration() || !typeVariable.getName().equals(typeVariable2.getName())) {
                z2 = false;
            }
            return z2;
        }
    }

    /* renamed from: a */
    public static boolean m52a(Annotation[] annotationArr, Class<? extends Annotation> cls) {
        for (Annotation annotation : annotationArr) {
            if (cls.isInstance(annotation)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static Class<?> m50b(Type type) {
        m66a(type, "type == null");
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        } else if (type instanceof GenericArrayType) {
            return Array.newInstance(m50b(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        } else {
            if (type instanceof TypeVariable) {
                return Object.class;
            }
            if (type instanceof WildcardType) {
                return m50b(((WildcardType) type).getUpperBounds()[0]);
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + type.getClass().getName());
        }
    }

    /* renamed from: b */
    public static Type m51b(int i, ParameterizedType parameterizedType) {
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        if (i < 0 || i >= actualTypeArguments.length) {
            throw new IllegalArgumentException("Index " + i + " not in range [0," + actualTypeArguments.length + ") for " + parameterizedType);
        }
        Type type = actualTypeArguments[i];
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        return type2;
    }

    /* renamed from: b */
    public static Type m49b(Type type, Class<?> cls, Class<?> cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return m58a(type, cls, m59a(type, cls, cls2));
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: c */
    public static boolean m48c(@Nullable Type type) {
        if (type instanceof Class) {
            return false;
        }
        if (type instanceof ParameterizedType) {
            for (Type type2 : ((ParameterizedType) type).getActualTypeArguments()) {
                if (m48c(type2)) {
                    return true;
                }
            }
            return false;
        } else if (type instanceof GenericArrayType) {
            return m48c(((GenericArrayType) type).getGenericComponentType());
        } else {
            if ((type instanceof TypeVariable) || (type instanceof WildcardType)) {
                return true;
            }
            throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + (type == null ? C14247d.f31851f : type.getClass().getName()));
        }
    }

    /* renamed from: d */
    public static String m47d(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
