package com.google.p051a.p053b;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;
/* renamed from: com.google.a.b.b */
/* loaded from: classes-dex2jar.jar:com/google/a/b/b.class */
public final class C1457b {

    /* renamed from: a */
    static final Type[] f5623a = new Type[0];

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/b$a.class */
    public static final class C1458a implements Serializable, GenericArrayType {

        /* renamed from: a */
        private final Type f5624a;

        public C1458a(Type type) {
            this.f5624a = C1457b.m6300a(type);
        }

        public final boolean equals(Object obj) {
            return (obj instanceof GenericArrayType) && C1457b.m6295a(this, (GenericArrayType) obj);
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f5624a;
        }

        public final int hashCode() {
            return this.f5624a.hashCode();
        }

        public final String toString() {
            return C1457b.m6291c(this.f5624a) + "[]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/b$b.class */
    public static final class C1459b implements Serializable, ParameterizedType {

        /* renamed from: a */
        private final Type f5625a;

        /* renamed from: b */
        private final Type f5626b;

        /* renamed from: c */
        private final Type[] f5627c;

        public C1459b(Type type, Type type2, Type... typeArr) {
            if (type2 instanceof Class) {
                Class cls = (Class) type2;
                C1382a.m6352a(type == null ? Modifier.isStatic(cls.getModifiers()) || cls.getEnclosingClass() == null : true);
            }
            this.f5625a = type == null ? null : C1457b.m6300a(type);
            this.f5626b = C1457b.m6300a(type2);
            this.f5627c = (Type[]) typeArr.clone();
            int length = this.f5627c.length;
            for (int i = 0; i < length; i++) {
                C1382a.m6353a(this.f5627c[i]);
                C1457b.m6289e(this.f5627c[i]);
                Type[] typeArr2 = this.f5627c;
                typeArr2[i] = C1457b.m6300a(typeArr2[i]);
            }
        }

        public final boolean equals(Object obj) {
            return (obj instanceof ParameterizedType) && C1457b.m6295a(this, (ParameterizedType) obj);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            return (Type[]) this.f5627c.clone();
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f5625a;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.f5626b;
        }

        public final int hashCode() {
            return C1457b.m6301a((Object) this.f5625a) ^ (Arrays.hashCode(this.f5627c) ^ this.f5626b.hashCode());
        }

        public final String toString() {
            int length = this.f5627c.length;
            if (length == 0) {
                return C1457b.m6291c(this.f5626b);
            }
            StringBuilder sb = new StringBuilder((length + 1) * 30);
            sb.append(C1457b.m6291c(this.f5626b));
            sb.append("<");
            sb.append(C1457b.m6291c(this.f5627c[0]));
            for (int i = 1; i < length; i++) {
                sb.append(", ");
                sb.append(C1457b.m6291c(this.f5627c[i]));
            }
            sb.append(">");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.a.b.b$c */
    /* loaded from: classes-dex2jar.jar:com/google/a/b/b$c.class */
    public static final class C1460c implements Serializable, WildcardType {

        /* renamed from: a */
        private final Type f5628a;

        /* renamed from: b */
        private final Type f5629b;

        public C1460c(Type[] typeArr, Type[] typeArr2) {
            Type a;
            boolean z = true;
            C1382a.m6352a(typeArr2.length <= 1);
            C1382a.m6352a(typeArr.length == 1);
            if (typeArr2.length == 1) {
                C1382a.m6353a(typeArr2[0]);
                C1457b.m6289e(typeArr2[0]);
                if (typeArr[0] != Object.class) {
                    z = false;
                }
                C1382a.m6352a(z);
                this.f5629b = C1457b.m6300a(typeArr2[0]);
                a = Object.class;
            } else {
                C1382a.m6353a(typeArr[0]);
                C1457b.m6289e(typeArr[0]);
                this.f5629b = null;
                a = C1457b.m6300a(typeArr[0]);
            }
            this.f5628a = a;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof WildcardType) && C1457b.m6295a(this, (WildcardType) obj);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Type type = this.f5629b;
            return type != null ? new Type[]{type} : C1457b.f5623a;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            return new Type[]{this.f5628a};
        }

        public final int hashCode() {
            Type type = this.f5629b;
            return (this.f5628a.hashCode() + 31) ^ (type != null ? type.hashCode() + 31 : 1);
        }

        public final String toString() {
            StringBuilder sb;
            Type type;
            if (this.f5629b != null) {
                sb = new StringBuilder("? super ");
                type = this.f5629b;
            } else if (this.f5628a == Object.class) {
                return "?";
            } else {
                sb = new StringBuilder("? extends ");
                type = this.f5628a;
            }
            sb.append(C1457b.m6291c(type));
            return sb.toString();
        }
    }

    /* renamed from: a */
    static int m6301a(Object obj) {
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    /* renamed from: a */
    public static Type m6300a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            Type type2 = cls;
            if (cls.isArray()) {
                type2 = new C1458a(m6300a((Type) cls.getComponentType()));
            }
            return type2;
        } else if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C1459b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        } else if (type instanceof GenericArrayType) {
            return new C1458a(((GenericArrayType) type).getGenericComponentType());
        } else {
            if (!(type instanceof WildcardType)) {
                return type;
            }
            WildcardType wildcardType = (WildcardType) type;
            return new C1460c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
        }
    }

    /* renamed from: a */
    public static Type m6299a(Type type, Class<?> cls) {
        Type b = m6292b(type, cls, Collection.class);
        Type type2 = b;
        if (b instanceof WildcardType) {
            type2 = ((WildcardType) b).getUpperBounds()[0];
        }
        return type2 instanceof ParameterizedType ? ((ParameterizedType) type2).getActualTypeArguments()[0] : Object.class;
    }

    /* renamed from: a */
    private static Type m6298a(Type type, Class<?> cls, Class<?> cls2) {
        while (cls2 != cls) {
            if (cls2.isInterface()) {
                Class<?>[] interfaces = cls.getInterfaces();
                int length = interfaces.length;
                for (int i = 0; i < length; i++) {
                    if (interfaces[i] == cls2) {
                        return cls.getGenericInterfaces()[i];
                    }
                    if (cls2.isAssignableFrom(interfaces[i])) {
                        type = cls.getGenericInterfaces()[i];
                        cls = interfaces[i];
                        break;
                    }
                }
            }
            if (!cls.isInterface()) {
                while (cls != Object.class) {
                    cls = cls.getSuperclass();
                    if (cls == cls2) {
                        return cls.getGenericSuperclass();
                    }
                    if (cls2.isAssignableFrom(cls)) {
                        type = cls.getGenericSuperclass();
                    }
                }
            }
            return cls2;
        }
        return type;
    }

    /* renamed from: a */
    public static Type m6297a(Type type, Class<?> cls, Type type2) {
        return m6296a(type, cls, type2, new HashSet());
    }

    /* renamed from: a */
    private static Type m6296a(Type type, Class<?> cls, Type type2, Collection<TypeVariable> collection) {
        TypeVariable typeVariable;
        TypeVariable typeVariable2;
        do {
            if (type2 instanceof TypeVariable) {
                typeVariable = (TypeVariable) type2;
                if (collection.contains(typeVariable)) {
                    return type2;
                }
                collection.add(typeVariable);
                GenericDeclaration genericDeclaration = typeVariable.getGenericDeclaration();
                Class cls2 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
                if (cls2 != null) {
                    Type a = m6298a(type, cls, (Class<?>) cls2);
                    if (a instanceof ParameterizedType) {
                        TypeVariable[] typeParameters = cls2.getTypeParameters();
                        int length = typeParameters.length;
                        for (int i = 0; i < length; i++) {
                            if (typeVariable.equals(typeParameters[i])) {
                                typeVariable2 = ((ParameterizedType) a).getActualTypeArguments()[i];
                                type2 = typeVariable2;
                            }
                        }
                        throw new NoSuchElementException();
                    }
                }
                typeVariable2 = typeVariable;
                type2 = typeVariable2;
            } else {
                if (type2 instanceof Class) {
                    Class cls3 = (Class) type2;
                    if (cls3.isArray()) {
                        Class<?> componentType = cls3.getComponentType();
                        Type a2 = m6296a(type, cls, componentType, collection);
                        return componentType == a2 ? cls3 : m6288f(a2);
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    GenericArrayType genericArrayType = (GenericArrayType) type2;
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    Type a3 = m6296a(type, cls, genericComponentType, collection);
                    return genericComponentType == a3 ? genericArrayType : m6288f(a3);
                } else if (type2 instanceof ParameterizedType) {
                    ParameterizedType parameterizedType = (ParameterizedType) type2;
                    Type ownerType = parameterizedType.getOwnerType();
                    Type a4 = m6296a(type, cls, ownerType, collection);
                    boolean z = a4 != ownerType;
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    int length2 = actualTypeArguments.length;
                    for (int i2 = 0; i2 < length2; i2++) {
                        Type a5 = m6296a(type, cls, actualTypeArguments[i2], collection);
                        z = z;
                        actualTypeArguments = actualTypeArguments;
                        if (a5 != actualTypeArguments[i2]) {
                            z = z;
                            actualTypeArguments = actualTypeArguments;
                            if (!z) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z = true;
                            }
                            actualTypeArguments[i2] = a5;
                        }
                    }
                    return z ? new C1459b(a4, parameterizedType.getRawType(), actualTypeArguments) : parameterizedType;
                } else {
                    WildcardType wildcardType = type2;
                    if (type2 instanceof WildcardType) {
                        WildcardType wildcardType2 = (WildcardType) type2;
                        Type[] lowerBounds = wildcardType2.getLowerBounds();
                        Type[] upperBounds = wildcardType2.getUpperBounds();
                        if (lowerBounds.length == 1) {
                            Type a6 = m6296a(type, cls, lowerBounds[0], collection);
                            wildcardType = wildcardType2;
                            if (a6 != lowerBounds[0]) {
                                return new C1460c(new Type[]{Object.class}, a6 instanceof WildcardType ? ((WildcardType) a6).getLowerBounds() : new Type[]{a6});
                            }
                        } else {
                            wildcardType = wildcardType2;
                            if (upperBounds.length == 1) {
                                Type a7 = m6296a(type, cls, upperBounds[0], collection);
                                wildcardType = wildcardType2;
                                if (a7 != upperBounds[0]) {
                                    return new C1460c(a7 instanceof WildcardType ? ((WildcardType) a7).getUpperBounds() : new Type[]{a7}, f5623a);
                                }
                            }
                        }
                    }
                    return wildcardType;
                }
            }
        } while (typeVariable2 != typeVariable);
        return typeVariable2;
    }

    /* renamed from: a */
    public static boolean m6295a(Type type, Type type2) {
        while (type != type2) {
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
                return (ownerType == ownerType2 || (ownerType != null && ownerType.equals(ownerType2))) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
            } else if (type instanceof GenericArrayType) {
                if (!(type2 instanceof GenericArrayType)) {
                    return false;
                }
                type = ((GenericArrayType) type).getGenericComponentType();
                type2 = ((GenericArrayType) type2).getGenericComponentType();
            } else if (type instanceof WildcardType) {
                if (!(type2 instanceof WildcardType)) {
                    return false;
                }
                WildcardType wildcardType = (WildcardType) type;
                WildcardType wildcardType2 = (WildcardType) type2;
                return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
            } else if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
                return false;
            } else {
                TypeVariable typeVariable = (TypeVariable) type;
                TypeVariable typeVariable2 = (TypeVariable) type2;
                return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
            }
        }
        return true;
    }

    /* renamed from: b */
    public static Class<?> m6294b(Type type) {
        while (!(type instanceof Class)) {
            if (type instanceof ParameterizedType) {
                Type rawType = ((ParameterizedType) type).getRawType();
                C1382a.m6352a(rawType instanceof Class);
                return (Class) rawType;
            } else if (type instanceof GenericArrayType) {
                return Array.newInstance(m6294b(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
            } else {
                if (type instanceof TypeVariable) {
                    return Object.class;
                }
                if (type instanceof WildcardType) {
                    type = ((WildcardType) type).getUpperBounds()[0];
                } else {
                    String name = type == null ? "null" : type.getClass().getName();
                    throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + type + "> is of type " + name);
                }
            }
        }
        return (Class) type;
    }

    /* renamed from: b */
    private static Type m6292b(Type type, Class<?> cls, Class<?> cls2) {
        Type type2 = type;
        if (type instanceof WildcardType) {
            type2 = ((WildcardType) type).getUpperBounds()[0];
        }
        C1382a.m6352a(cls2.isAssignableFrom(cls));
        return m6297a(type2, cls, m6298a(type2, cls, cls2));
    }

    /* renamed from: b */
    public static Type[] m6293b(Type type, Class<?> cls) {
        if (type == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type b = m6292b(type, cls, Map.class);
        return b instanceof ParameterizedType ? ((ParameterizedType) b).getActualTypeArguments() : new Type[]{Object.class, Object.class};
    }

    /* renamed from: c */
    public static String m6291c(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    /* renamed from: d */
    public static Type m6290d(Type type) {
        return type instanceof GenericArrayType ? ((GenericArrayType) type).getGenericComponentType() : ((Class) type).getComponentType();
    }

    /* renamed from: e */
    static void m6289e(Type type) {
        C1382a.m6352a(!(type instanceof Class) || !((Class) type).isPrimitive());
    }

    /* renamed from: f */
    private static GenericArrayType m6288f(Type type) {
        return new C1458a(type);
    }
}
