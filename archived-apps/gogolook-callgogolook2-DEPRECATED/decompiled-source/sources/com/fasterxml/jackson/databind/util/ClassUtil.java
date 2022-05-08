package com.fasterxml.jackson.databind.util;

import androidx.media2.exoplayer.external.audio.Ac3Util;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.annotation.NoClass;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/ClassUtil.class */
public final class ClassUtil {
    public static final Class<?> CLS_OBJECT = Object.class;
    public static final LRUMap<Class<?>, ClassMetadata> sCached = new LRUMap<>(48, 48);

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata.class */
    public static final class ClassMetadata {
        public static final Annotation[] NO_ANNOTATIONS = new Annotation[0];
        public static final Ctor[] NO_CTORS = new Ctor[0];
        public Annotation[] _annotations;
        public Ctor[] _constructors;
        public Field[] _fields;
        public final Class<?> _forClass;
        public Type[] _genericInterfaces;
        public Boolean _hasEnclosingMethod;
        public Class<?>[] _interfaces;
        public Method[] _methods;
        public String _packageName;

        public ClassMetadata(Class<?> cls) {
            this._forClass = cls;
        }

        public Ctor[] getConstructors() {
            Ctor[] ctorArr = this._constructors;
            Ctor[] ctorArr2 = ctorArr;
            if (ctorArr == null) {
                if (this._forClass.isInterface() || isObjectOrPrimitive()) {
                    ctorArr2 = NO_CTORS;
                } else {
                    Constructor<?>[] declaredConstructors = this._forClass.getDeclaredConstructors();
                    int length = declaredConstructors.length;
                    ctorArr2 = new Ctor[length];
                    for (int i = 0; i < length; i++) {
                        ctorArr2[i] = new Ctor(declaredConstructors[i]);
                    }
                }
                this._constructors = ctorArr2;
            }
            return ctorArr2;
        }

        public Annotation[] getDeclaredAnnotations() {
            Annotation[] annotationArr = this._annotations;
            Annotation[] annotationArr2 = annotationArr;
            if (annotationArr == null) {
                annotationArr2 = isObjectOrPrimitive() ? NO_ANNOTATIONS : this._forClass.getDeclaredAnnotations();
                this._annotations = annotationArr2;
            }
            return annotationArr2;
        }

        public Field[] getDeclaredFields() {
            Field[] fieldArr = this._fields;
            Field[] fieldArr2 = fieldArr;
            if (fieldArr == null) {
                fieldArr2 = this._forClass.getDeclaredFields();
                this._fields = fieldArr2;
            }
            return fieldArr2;
        }

        public Method[] getDeclaredMethods() {
            Method[] methodArr = this._methods;
            Method[] methodArr2 = methodArr;
            if (methodArr == null) {
                methodArr2 = this._forClass.getDeclaredMethods();
                this._methods = methodArr2;
            }
            return methodArr2;
        }

        public Type[] getGenericInterfaces() {
            Type[] typeArr = this._genericInterfaces;
            Type[] typeArr2 = typeArr;
            if (typeArr == null) {
                typeArr2 = this._forClass.getGenericInterfaces();
                this._genericInterfaces = typeArr2;
            }
            return typeArr2;
        }

        public Class<?>[] getInterfaces() {
            Class<?>[] clsArr = this._interfaces;
            Class<?>[] clsArr2 = clsArr;
            if (clsArr == null) {
                clsArr2 = this._forClass.getInterfaces();
                this._interfaces = clsArr2;
            }
            return clsArr2;
        }

        public String getPackageName() {
            String str = this._packageName;
            String str2 = str;
            if (str == null) {
                Package r0 = this._forClass.getPackage();
                String name = r0 == null ? null : r0.getName();
                String str3 = name;
                if (name == null) {
                    str3 = "";
                }
                this._packageName = str3;
                str2 = str3;
            }
            String str4 = str2;
            if (str2 == "") {
                str4 = null;
            }
            return str4;
        }

        public boolean hasEnclosingMethod() {
            Boolean bool = this._hasEnclosingMethod;
            Boolean bool2 = bool;
            if (bool == null) {
                if (isObjectOrPrimitive()) {
                    bool2 = Boolean.FALSE;
                } else {
                    bool2 = Boolean.valueOf(this._forClass.getEnclosingMethod() != null);
                }
                this._hasEnclosingMethod = bool2;
            }
            return bool2.booleanValue();
        }

        public final boolean isObjectOrPrimitive() {
            return this._forClass == ClassUtil.CLS_OBJECT || this._forClass.isPrimitive();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/ClassUtil$Ctor.class */
    public static final class Ctor {
        public Annotation[] _annotations;
        public final Constructor<?> _ctor;
        public Annotation[][] _paramAnnotations;
        public int _paramCount = -1;

        public Ctor(Constructor<?> constructor) {
            this._ctor = constructor;
        }

        public Constructor<?> getConstructor() {
            return this._ctor;
        }

        public Annotation[] getDeclaredAnnotations() {
            Annotation[] annotationArr = this._annotations;
            Annotation[] annotationArr2 = annotationArr;
            if (annotationArr == null) {
                annotationArr2 = this._ctor.getDeclaredAnnotations();
                this._annotations = annotationArr2;
            }
            return annotationArr2;
        }

        public Class<?> getDeclaringClass() {
            return this._ctor.getDeclaringClass();
        }

        public int getParamCount() {
            int i = this._paramCount;
            int i2 = i;
            if (i < 0) {
                i2 = this._ctor.getParameterTypes().length;
                this._paramCount = i2;
            }
            return i2;
        }

        public Annotation[][] getParameterAnnotations() {
            Annotation[][] annotationArr = this._paramAnnotations;
            Annotation[][] annotationArr2 = annotationArr;
            if (annotationArr == null) {
                annotationArr2 = this._ctor.getParameterAnnotations();
                this._paramAnnotations = annotationArr2;
            }
            return annotationArr2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator.class */
    public static class EnumTypeLocator {
        public static final EnumTypeLocator instance = new EnumTypeLocator();
        public final Field enumSetTypeField = locateField(EnumSet.class, "elementType", Class.class);
        public final Field enumMapTypeField = locateField(EnumMap.class, "elementType", Class.class);

        public static Field locateField(Class<?> cls, String str, Class<?> cls2) {
            Field field;
            Field[] declaredFields = ClassUtil.getDeclaredFields(cls);
            int length = declaredFields.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    field = null;
                    break;
                }
                field = declaredFields[i2];
                if (str.equals(field.getName()) && field.getType() == cls2) {
                    break;
                }
                i2++;
            }
            Field field2 = field;
            if (field == null) {
                int length2 = declaredFields.length;
                while (true) {
                    field2 = field;
                    if (i >= length2) {
                        break;
                    }
                    Field field3 = declaredFields[i];
                    field = field;
                    if (field3.getType() == cls2) {
                        if (field != null) {
                            return null;
                        }
                        field = field3;
                    }
                    i++;
                }
            }
            if (field2 != null) {
                try {
                    field2.setAccessible(true);
                } catch (Throwable th) {
                }
            }
            return field2;
        }

        public Class<? extends Enum<?>> enumTypeFor(EnumMap<?, ?> enumMap) {
            Field field = this.enumMapTypeField;
            if (field != null) {
                return (Class) get(enumMap, field);
            }
            throw new IllegalStateException("Can not figure out type for EnumMap (odd JDK platform?)");
        }

        public Class<? extends Enum<?>> enumTypeFor(EnumSet<?> enumSet) {
            Field field = this.enumSetTypeField;
            if (field != null) {
                return (Class) get(enumSet, field);
            }
            throw new IllegalStateException("Can not figure out type for EnumSet (odd JDK platform?)");
        }

        public final Object get(Object obj, Field field) {
            try {
                return field.get(obj);
            } catch (Exception e) {
                throw new IllegalArgumentException(e);
            }
        }
    }

    public static void _addRawSuperTypes(Class<?> cls, Class<?> cls2, Collection<Class<?>> collection, boolean z) {
        if (!(cls == cls2 || cls == null || cls == Object.class)) {
            if (z) {
                if (!collection.contains(cls)) {
                    collection.add(cls);
                } else {
                    return;
                }
            }
            for (Class<?> cls3 : _interfaces(cls)) {
                _addRawSuperTypes(cls3, cls2, collection, true);
            }
            _addRawSuperTypes(cls.getSuperclass(), cls2, collection, true);
        }
    }

    public static void _addSuperTypes(JavaType javaType, Class<?> cls, Collection<JavaType> collection, boolean z) {
        Class<?> rawClass;
        if (!(javaType == null || (rawClass = javaType.getRawClass()) == cls || rawClass == Object.class)) {
            if (z) {
                if (!collection.contains(javaType)) {
                    collection.add(javaType);
                } else {
                    return;
                }
            }
            for (JavaType javaType2 : javaType.getInterfaces()) {
                _addSuperTypes(javaType2, cls, collection, true);
            }
            _addSuperTypes(javaType.getSuperClass(), cls, collection, true);
        }
    }

    public static ClassMetadata _getMetadata(Class<?> cls) {
        ClassMetadata classMetadata = sCached.get(cls);
        ClassMetadata classMetadata2 = classMetadata;
        if (classMetadata == null) {
            classMetadata2 = new ClassMetadata(cls);
            ClassMetadata putIfAbsent = sCached.putIfAbsent(cls, classMetadata2);
            if (putIfAbsent != null) {
                classMetadata2 = putIfAbsent;
            }
        }
        return classMetadata2;
    }

    public static Class<?>[] _interfaces(Class<?> cls) {
        return _getMetadata(cls).getInterfaces();
    }

    public static String canBeABeanType(Class<?> cls) {
        if (cls.isAnnotation()) {
            return "annotation";
        }
        if (cls.isArray()) {
            return "array";
        }
        if (cls.isEnum()) {
            return "enum";
        }
        if (cls.isPrimitive()) {
            return "primitive";
        }
        return null;
    }

    @Deprecated
    public static void checkAndFixAccess(Member member) {
        checkAndFixAccess(member, false);
    }

    public static void checkAndFixAccess(Member member, boolean z) {
        AccessibleObject accessibleObject = (AccessibleObject) member;
        if (!z) {
            try {
                if (Modifier.isPublic(member.getModifiers()) && Modifier.isPublic(member.getDeclaringClass().getModifiers())) {
                    return;
                }
            } catch (SecurityException e) {
                if (!accessibleObject.isAccessible()) {
                    Class<?> declaringClass = member.getDeclaringClass();
                    throw new IllegalArgumentException("Can not access " + member + " (from class " + declaringClass.getName() + "; failed to set access: " + e.getMessage());
                }
                return;
            }
        }
        accessibleObject.setAccessible(true);
    }

    public static <T> T createInstance(Class<T> cls, boolean z) throws IllegalArgumentException {
        Constructor findConstructor = findConstructor(cls, z);
        if (findConstructor != null) {
            try {
                return (T) findConstructor.newInstance(new Object[0]);
            } catch (Exception e) {
                unwrapAndThrowAsIAE(e, "Failed to instantiate class " + cls.getName() + ", problem: " + e.getMessage());
                throw null;
            }
        } else {
            throw new IllegalArgumentException("Class " + cls.getName() + " has no default (no arg) constructor");
        }
    }

    public static Object defaultValue(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return 0;
        }
        if (cls == Long.TYPE) {
            return 0L;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.FALSE;
        }
        if (cls == Double.TYPE) {
            return Double.valueOf(0.0d);
        }
        if (cls == Float.TYPE) {
            return Float.valueOf(0.0f);
        }
        if (cls == Byte.TYPE) {
            return (byte) 0;
        }
        if (cls == Short.TYPE) {
            return (short) 0;
        }
        if (cls == Character.TYPE) {
            return (char) 0;
        }
        throw new IllegalArgumentException("Class " + cls.getName() + " is not a primitive type");
    }

    public static <T> Iterator<T> emptyIterator() {
        return Collections.emptyIterator();
    }

    public static Annotation[] findClassAnnotations(Class<?> cls) {
        return _getMetadata(cls).getDeclaredAnnotations();
    }

    public static <T> Constructor<T> findConstructor(Class<T> cls, boolean z) throws IllegalArgumentException {
        try {
            Constructor<T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (z) {
                checkAndFixAccess(declaredConstructor);
            } else if (!Modifier.isPublic(declaredConstructor.getModifiers())) {
                throw new IllegalArgumentException("Default constructor for " + cls.getName() + " is not accessible (non-public?): not allowed to try modify access via Reflection: can not instantiate type");
            }
            return declaredConstructor;
        } catch (NoSuchMethodException e) {
            return null;
        } catch (Exception e2) {
            unwrapAndThrowAsIAE(e2, "Failed to find default constructor of class " + cls.getName() + ", problem: " + e2.getMessage());
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Class<? extends Enum<?>> findEnumType(Class<?> cls) {
        Class<? extends Enum<?>> cls2 = cls;
        if (cls.getSuperclass() != Enum.class) {
            cls2 = cls.getSuperclass();
        }
        return cls2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Class<? extends Enum<?>> findEnumType(Enum<?> r3) {
        Class<?> cls = r3.getClass();
        Class<? extends Enum<?>> cls2 = cls;
        if (cls.getSuperclass() != Enum.class) {
            cls2 = cls.getSuperclass();
        }
        return cls2;
    }

    public static Class<? extends Enum<?>> findEnumType(EnumMap<?, ?> enumMap) {
        return !enumMap.isEmpty() ? findEnumType((Enum) enumMap.keySet().iterator().next()) : EnumTypeLocator.instance.enumTypeFor(enumMap);
    }

    public static Class<? extends Enum<?>> findEnumType(EnumSet<?> enumSet) {
        return !enumSet.isEmpty() ? findEnumType((Enum) enumSet.iterator().next()) : EnumTypeLocator.instance.enumTypeFor(enumSet);
    }

    public static List<Class<?>> findRawSuperTypes(Class<?> cls, Class<?> cls2, boolean z) {
        if (cls == null || cls == cls2 || cls == Object.class) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(8);
        _addRawSuperTypes(cls, cls2, arrayList, z);
        return arrayList;
    }

    public static List<Class<?>> findSuperClasses(Class<?> cls, Class<?> cls2, boolean z) {
        LinkedList linkedList = new LinkedList();
        if (cls != null && cls != cls2) {
            Class<?> cls3 = cls;
            if (z) {
                linkedList.add(cls);
                cls3 = cls;
            }
            while (true) {
                cls3 = cls3.getSuperclass();
                if (cls3 == null || cls3 == cls2) {
                    break;
                }
                linkedList.add(cls3);
            }
        }
        return linkedList;
    }

    public static List<JavaType> findSuperTypes(JavaType javaType, Class<?> cls, boolean z) {
        if (javaType == null || javaType.hasRawClass(cls) || javaType.hasRawClass(Object.class)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(8);
        _addSuperTypes(javaType, cls, arrayList, z);
        return arrayList;
    }

    public static Ctor[] getConstructors(Class<?> cls) {
        return _getMetadata(cls).getConstructors();
    }

    public static Field[] getDeclaredFields(Class<?> cls) {
        return _getMetadata(cls).getDeclaredFields();
    }

    public static Method[] getDeclaredMethods(Class<?> cls) {
        return _getMetadata(cls).getDeclaredMethods();
    }

    public static Class<?> getEnclosingClass(Class<?> cls) {
        return isObjectOrPrimitive(cls) ? null : cls.getEnclosingClass();
    }

    public static Type[] getGenericInterfaces(Class<?> cls) {
        return _getMetadata(cls).getGenericInterfaces();
    }

    public static Type getGenericSuperclass(Class<?> cls) {
        return cls.getGenericSuperclass();
    }

    public static Class<?> getOuterClass(Class<?> cls) {
        try {
            if (!hasEnclosingMethod(cls) && !Modifier.isStatic(cls.getModifiers())) {
                return getEnclosingClass(cls);
            }
            return null;
        } catch (SecurityException e) {
            return null;
        }
    }

    public static String getPackageName(Class<?> cls) {
        return _getMetadata(cls).getPackageName();
    }

    public static Throwable getRootCause(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    public static boolean hasEnclosingMethod(Class<?> cls) {
        return _getMetadata(cls).hasEnclosingMethod();
    }

    public static boolean isBogusClass(Class<?> cls) {
        return cls == Void.class || cls == Void.TYPE || cls == NoClass.class;
    }

    public static boolean isCollectionMapOrArray(Class<?> cls) {
        return cls.isArray() || Collection.class.isAssignableFrom(cls) || Map.class.isAssignableFrom(cls);
    }

    public static boolean isConcrete(Class<?> cls) {
        return (cls.getModifiers() & Ac3Util.AC3_SYNCFRAME_AUDIO_SAMPLE_COUNT) == 0;
    }

    public static boolean isJacksonStdImpl(Class<?> cls) {
        return cls.getAnnotation(JacksonStdImpl.class) != null;
    }

    public static boolean isJacksonStdImpl(Object obj) {
        return obj != null && isJacksonStdImpl(obj.getClass());
    }

    public static String isLocalType(Class<?> cls, boolean z) {
        try {
            if (hasEnclosingMethod(cls)) {
                return "local/anonymous";
            }
            if (z || Modifier.isStatic(cls.getModifiers())) {
                return null;
            }
            if (getEnclosingClass(cls) != null) {
                return "non-static member class";
            }
            return null;
        } catch (NullPointerException | SecurityException e) {
            return null;
        }
    }

    public static boolean isNonStaticInnerClass(Class<?> cls) {
        return !Modifier.isStatic(cls.getModifiers()) && getEnclosingClass(cls) != null;
    }

    public static boolean isObjectOrPrimitive(Class<?> cls) {
        return cls == CLS_OBJECT || cls.isPrimitive();
    }

    public static boolean isProxyType(Class<?> cls) {
        String name = cls.getName();
        return name.startsWith("net.sf.cglib.proxy.") || name.startsWith("org.hibernate.proxy.");
    }

    public static Class<?> primitiveType(Class<?> cls) {
        if (cls.isPrimitive()) {
            return cls;
        }
        if (cls == Integer.class) {
            return Integer.TYPE;
        }
        if (cls == Long.class) {
            return Long.TYPE;
        }
        if (cls == Boolean.class) {
            return Boolean.TYPE;
        }
        if (cls == Double.class) {
            return Double.TYPE;
        }
        if (cls == Float.class) {
            return Float.TYPE;
        }
        if (cls == Byte.class) {
            return Byte.TYPE;
        }
        if (cls == Short.class) {
            return Short.TYPE;
        }
        if (cls == Character.class) {
            return Character.TYPE;
        }
        return null;
    }

    public static void throwAsIAE(Throwable th) {
        throwAsIAE(th, th.getMessage());
        throw null;
    }

    public static void throwAsIAE(Throwable th, String str) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        } else {
            throw new IllegalArgumentException(str, th);
        }
    }

    public static void unwrapAndThrowAsIAE(Throwable th) {
        throwAsIAE(getRootCause(th));
        throw null;
    }

    public static void unwrapAndThrowAsIAE(Throwable th, String str) {
        throwAsIAE(getRootCause(th), str);
        throw null;
    }

    public static Class<?> wrapperType(Class<?> cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        throw new IllegalArgumentException("Class " + cls.getName() + " is not a primitive type");
    }
}
