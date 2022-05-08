package com.mopub.common.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Reflection.class */
public class Reflection {

    /* loaded from: classes2-dex2jar.jar:com/mopub/common/util/Reflection$MethodBuilder.class */
    public static class MethodBuilder {
        @Nullable

        /* renamed from: a */
        public final Object f8344a;
        @NonNull

        /* renamed from: b */
        public final String f8345b;
        @Nullable

        /* renamed from: c */
        public Class<?> f8346c;
        @NonNull

        /* renamed from: d */
        public List<Class<?>> f8347d = new ArrayList();
        @NonNull

        /* renamed from: e */
        public List<Object> f8348e = new ArrayList();

        /* renamed from: f */
        public boolean f8349f;

        /* renamed from: g */
        public boolean f8350g;

        public MethodBuilder(@Nullable Object obj, @NonNull String str) {
            Preconditions.checkNotNull(str);
            this.f8344a = obj;
            this.f8345b = str;
            this.f8346c = obj != null ? obj.getClass() : null;
        }

        @NonNull
        public <T> MethodBuilder addParam(@NonNull Class<T> cls, @Nullable T t) {
            Preconditions.checkNotNull(cls);
            this.f8347d.add(cls);
            this.f8348e.add(t);
            return this;
        }

        @NonNull
        public MethodBuilder addParam(@NonNull String str, @Nullable Object obj) throws ClassNotFoundException {
            Preconditions.checkNotNull(str);
            this.f8347d.add(Class.forName(str));
            this.f8348e.add(obj);
            return this;
        }

        @Nullable
        public Object execute() throws Exception {
            Method declaredMethodWithTraversal = Reflection.getDeclaredMethodWithTraversal(this.f8346c, this.f8345b, (Class[]) this.f8347d.toArray(new Class[this.f8347d.size()]));
            if (this.f8349f) {
                declaredMethodWithTraversal.setAccessible(true);
            }
            Object[] array = this.f8348e.toArray();
            return this.f8350g ? declaredMethodWithTraversal.invoke(null, array) : declaredMethodWithTraversal.invoke(this.f8344a, array);
        }

        @NonNull
        public MethodBuilder setAccessible() {
            this.f8349f = true;
            return this;
        }

        @NonNull
        public MethodBuilder setStatic(@NonNull Class<?> cls) {
            Preconditions.checkNotNull(cls);
            this.f8350g = true;
            this.f8346c = cls;
            return this;
        }

        @NonNull
        public MethodBuilder setStatic(@NonNull String str) throws ClassNotFoundException {
            Preconditions.checkNotNull(str);
            this.f8350g = true;
            this.f8346c = Class.forName(str);
            return this;
        }
    }

    public static boolean classFound(@NonNull String str) {
        Preconditions.checkNotNull(str);
        try {
            Class.forName(str);
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    @Nullable
    public static Method getDeclaredMethodWithTraversal(@Nullable Class<?> cls, @NonNull String str, @NonNull Class<?>... clsArr) throws NoSuchMethodException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(clsArr);
        while (cls != null) {
            try {
                return cls.getDeclaredMethod(str, clsArr);
            } catch (NoSuchMethodException e) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException();
    }

    public static Field getPrivateField(@NonNull Class cls, @NonNull String str) throws NoSuchFieldException {
        Field declaredField = cls.getDeclaredField(str);
        declaredField.setAccessible(true);
        return declaredField;
    }

    @NonNull
    public static <T> T instantiateClassWithConstructor(@NonNull String str, @NonNull Class<? extends T> cls, @NonNull Class[] clsArr, @NonNull Object[] objArr) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(clsArr);
        Preconditions.checkNotNull(objArr);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(clsArr);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(objArr);
    }

    @NonNull
    public static <T> T instantiateClassWithEmptyConstructor(@NonNull String str, @NonNull Class<? extends T> cls) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, InstantiationException, NullPointerException {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(cls);
        Constructor declaredConstructor = Class.forName(str).asSubclass(cls).getDeclaredConstructor(null);
        declaredConstructor.setAccessible(true);
        return (T) declaredConstructor.newInstance(new Object[0]);
    }
}
