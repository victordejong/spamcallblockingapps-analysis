package p131c.p161d.p354f.p356t;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* renamed from: c.d.f.t.j */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/j.class */
public abstract class AbstractC6163j {

    /* renamed from: c.d.f.t.j$a */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/j$a.class */
    public class C6164a extends AbstractC6163j {

        /* renamed from: a */
        public final /* synthetic */ Method f19677a;

        /* renamed from: b */
        public final /* synthetic */ Object f19678b;

        public C6164a(Method method, Object obj) {
            this.f19677a = method;
            this.f19678b = obj;
        }

        @Override // p131c.p161d.p354f.p356t.AbstractC6163j
        /* renamed from: a */
        public <T> T mo21906a(Class<T> cls) throws Exception {
            AbstractC6163j.m21907b(cls);
            return (T) this.f19677a.invoke(this.f19678b, cls);
        }
    }

    /* renamed from: c.d.f.t.j$b */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/j$b.class */
    public class C6165b extends AbstractC6163j {

        /* renamed from: a */
        public final /* synthetic */ Method f19679a;

        /* renamed from: b */
        public final /* synthetic */ int f19680b;

        public C6165b(Method method, int i) {
            this.f19679a = method;
            this.f19680b = i;
        }

        @Override // p131c.p161d.p354f.p356t.AbstractC6163j
        /* renamed from: a */
        public <T> T mo21906a(Class<T> cls) throws Exception {
            AbstractC6163j.m21907b(cls);
            return (T) this.f19679a.invoke(null, cls, Integer.valueOf(this.f19680b));
        }
    }

    /* renamed from: c.d.f.t.j$c */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/j$c.class */
    public class C6166c extends AbstractC6163j {

        /* renamed from: a */
        public final /* synthetic */ Method f19681a;

        public C6166c(Method method) {
            this.f19681a = method;
        }

        @Override // p131c.p161d.p354f.p356t.AbstractC6163j
        /* renamed from: a */
        public <T> T mo21906a(Class<T> cls) throws Exception {
            AbstractC6163j.m21907b(cls);
            return (T) this.f19681a.invoke(null, cls, Object.class);
        }
    }

    /* renamed from: c.d.f.t.j$d */
    /* loaded from: classes2-dex2jar.jar:c/d/f/t/j$d.class */
    public class C6167d extends AbstractC6163j {
        @Override // p131c.p161d.p354f.p356t.AbstractC6163j
        /* renamed from: a */
        public <T> T mo21906a(Class<T> cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls);
        }
    }

    /* renamed from: a */
    public static AbstractC6163j m21908a() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new C6164a(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception e) {
            try {
                Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                declaredMethod.setAccessible(true);
                int intValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                declaredMethod2.setAccessible(true);
                return new C6165b(declaredMethod2, intValue);
            } catch (Exception e2) {
                try {
                    Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                    declaredMethod3.setAccessible(true);
                    return new C6166c(declaredMethod3);
                } catch (Exception e3) {
                    return new C6167d();
                }
            }
        }
    }

    /* renamed from: b */
    public static void m21907b(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + cls.getName());
        } else if (Modifier.isAbstract(modifiers)) {
            throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + cls.getName());
        }
    }

    /* renamed from: a */
    public abstract <T> T mo21906a(Class<T> cls) throws Exception;
}
