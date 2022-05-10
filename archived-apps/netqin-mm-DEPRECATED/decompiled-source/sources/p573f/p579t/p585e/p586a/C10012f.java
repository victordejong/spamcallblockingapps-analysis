package p573f.p579t.p585e.p586a;

import java.lang.reflect.Method;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import p573f.p590w.p592c.C10059q;
/* renamed from: f.t.e.a.f */
/* loaded from: classes2-dex2jar.jar:f/t/e/a/f.class */
public final class C10012f {

    /* renamed from: b */
    public static C10013a f37166b;

    /* renamed from: c */
    public static final C10012f f37167c = new C10012f();

    /* renamed from: a */
    public static final C10013a f37165a = new C10013a(null, null, null);

    /* renamed from: f.t.e.a.f$a */
    /* loaded from: classes2-dex2jar.jar:f/t/e/a/f$a.class */
    public static final class C10013a {

        /* renamed from: a */
        public final Method f37168a;

        /* renamed from: b */
        public final Method f37169b;

        /* renamed from: c */
        public final Method f37170c;

        public C10013a(Method method, Method method2, Method method3) {
            this.f37168a = method;
            this.f37169b = method2;
            this.f37170c = method3;
        }
    }

    /* renamed from: a */
    public final C10013a m1673a(BaseContinuationImpl baseContinuationImpl) {
        try {
            C10013a aVar = new C10013a(Class.class.getDeclaredMethod("getModule", new Class[0]), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.Module").getDeclaredMethod("getDescriptor", new Class[0]), baseContinuationImpl.getClass().getClassLoader().loadClass("java.lang.module.ModuleDescriptor").getDeclaredMethod("name", new Class[0]));
            f37166b = aVar;
            return aVar;
        } catch (Exception e) {
            C10013a aVar2 = f37165a;
            f37166b = aVar2;
            return aVar2;
        }
    }

    /* renamed from: b */
    public final String m1672b(BaseContinuationImpl baseContinuationImpl) {
        C10059q.m1637b(baseContinuationImpl, "continuation");
        C10013a aVar = f37166b;
        if (aVar == null) {
            aVar = m1673a(baseContinuationImpl);
        }
        Object invoke = null;
        if (aVar == f37165a) {
            return null;
        }
        Method method = aVar.f37168a;
        String str = null;
        if (method != null) {
            Object invoke2 = method.invoke(baseContinuationImpl.getClass(), new Object[0]);
            str = null;
            if (invoke2 != null) {
                Method method2 = aVar.f37169b;
                str = null;
                if (method2 != null) {
                    Object invoke3 = method2.invoke(invoke2, new Object[0]);
                    str = null;
                    if (invoke3 != null) {
                        Method method3 = aVar.f37170c;
                        invoke = method3 != null ? method3.invoke(invoke3, new Object[0]) : null;
                        if (!(invoke instanceof String)) {
                        }
                        str = (String) invoke;
                    }
                }
            }
        }
        return str;
    }
}
