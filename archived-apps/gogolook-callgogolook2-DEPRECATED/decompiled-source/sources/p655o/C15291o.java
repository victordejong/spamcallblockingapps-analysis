package p655o;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import p655o.AbstractC15236c;
import p655o.AbstractC15246f;
/* renamed from: o.o */
/* loaded from: classes3-dex2jar.jar:o/o.class */
public class C15291o {

    /* renamed from: a */
    public static final C15291o f33347a = m127e();

    /* renamed from: o.o$a */
    /* loaded from: classes3-dex2jar.jar:o/o$a.class */
    public static class C15292a extends C15291o {

        /* renamed from: o.o$a$a */
        /* loaded from: classes3-dex2jar.jar:o/o$a$a.class */
        public static class ExecutorC15293a implements Executor {

            /* renamed from: a */
            public final Handler f33348a = new Handler(Looper.getMainLooper());

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f33348a.post(runnable);
            }
        }

        @Override // p655o.C15291o
        /* renamed from: a */
        public int mo124a() {
            return Build.VERSION.SDK_INT >= 24 ? 2 : 1;
        }

        @Override // p655o.C15291o
        /* renamed from: a */
        public List<? extends AbstractC15236c.AbstractC15237a> mo121a(@Nullable Executor executor) {
            if (executor != null) {
                C15248g gVar = new C15248g(executor);
                return Build.VERSION.SDK_INT >= 24 ? Arrays.asList(C15239e.f33252a, gVar) : Collections.singletonList(gVar);
            }
            throw new AssertionError();
        }

        @Override // p655o.C15291o
        /* renamed from: a */
        public boolean mo123a(Method method) {
            if (Build.VERSION.SDK_INT < 24) {
                return false;
            }
            return method.isDefault();
        }

        @Override // p655o.C15291o
        /* renamed from: b */
        public Executor mo125b() {
            return new ExecutorC15293a();
        }

        @Override // p655o.C15291o
        /* renamed from: c */
        public List<? extends AbstractC15246f.AbstractC15247a> mo120c() {
            return Build.VERSION.SDK_INT >= 24 ? Collections.singletonList(C15274m.f33306a) : Collections.emptyList();
        }

        @Override // p655o.C15291o
        /* renamed from: d */
        public int mo119d() {
            return Build.VERSION.SDK_INT >= 24 ? 1 : 0;
        }
    }

    /* renamed from: o.o$b */
    /* loaded from: classes3-dex2jar.jar:o/o$b.class */
    public static class C15294b extends C15291o {
        @Override // p655o.C15291o
        /* renamed from: a */
        public int mo124a() {
            return 2;
        }

        @Override // p655o.C15291o
        /* renamed from: a */
        public Object mo122a(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }

        @Override // p655o.C15291o
        /* renamed from: a */
        public List<? extends AbstractC15236c.AbstractC15237a> mo121a(@Nullable Executor executor) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(C15239e.f33252a);
            arrayList.add(new C15248g(executor));
            return Collections.unmodifiableList(arrayList);
        }

        @Override // p655o.C15291o
        /* renamed from: a */
        public boolean mo123a(Method method) {
            return method.isDefault();
        }

        @Override // p655o.C15291o
        /* renamed from: c */
        public List<? extends AbstractC15246f.AbstractC15247a> mo120c() {
            return Collections.singletonList(C15274m.f33306a);
        }

        @Override // p655o.C15291o
        /* renamed from: d */
        public int mo119d() {
            return 1;
        }
    }

    /* renamed from: e */
    public static C15291o m127e() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new C15292a();
            }
        } catch (ClassNotFoundException e) {
        }
        try {
            Class.forName("java.util.Optional");
            return new C15294b();
        } catch (ClassNotFoundException e2) {
            return new C15291o();
        }
    }

    /* renamed from: f */
    public static C15291o m126f() {
        return f33347a;
    }

    /* renamed from: a */
    public int mo124a() {
        return 1;
    }

    @Nullable
    /* renamed from: a */
    public Object mo122a(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    public List<? extends AbstractC15236c.AbstractC15237a> mo121a(@Nullable Executor executor) {
        return Collections.singletonList(new C15248g(executor));
    }

    /* renamed from: a */
    public boolean mo123a(Method method) {
        return false;
    }

    @Nullable
    /* renamed from: b */
    public Executor mo125b() {
        return null;
    }

    /* renamed from: c */
    public List<? extends AbstractC15246f.AbstractC15247a> mo120c() {
        return Collections.emptyList();
    }

    /* renamed from: d */
    public int mo119d() {
        return 0;
    }
}
