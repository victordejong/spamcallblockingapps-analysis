package com.moat.analytics.mobile.mpub;

import com.moat.analytics.mobile.mpub.C8667w;
import com.moat.analytics.mobile.mpub.p522a.p523a.C8614a;
import com.moat.analytics.mobile.mpub.p522a.p524b.C8615a;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.mpub.x */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/x.class */
public class C8677x<T> implements InvocationHandler {

    /* renamed from: a */
    public static final Object[] f33601a = new Object[0];

    /* renamed from: b */
    public final AbstractC8679a<T> f33602b;

    /* renamed from: c */
    public final Class<T> f33603c;

    /* renamed from: d */
    public final LinkedList<C8677x<T>.C8680b> f33604d = new LinkedList<>();

    /* renamed from: e */
    public boolean f33605e;

    /* renamed from: f */
    public T f33606f;

    /* renamed from: com.moat.analytics.mobile.mpub.x$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/x$a.class */
    public interface AbstractC8679a<T> {
        /* renamed from: a */
        C8615a<T> mo4784a();
    }

    /* renamed from: com.moat.analytics.mobile.mpub.x$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/x$b.class */
    public class C8680b {

        /* renamed from: b */
        public final WeakReference[] f33609b;

        /* renamed from: c */
        public final LinkedList<Object> f33610c;

        /* renamed from: d */
        public final Method f33611d;

        public C8680b(Method method, Object... objArr) {
            this.f33610c = new LinkedList<>();
            Object[] objArr2 = objArr == null ? C8677x.f33601a : objArr;
            WeakReference[] weakReferenceArr = new WeakReference[objArr2.length];
            int length = objArr2.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                Object obj = objArr2[i];
                if ((obj instanceof Map) || (obj instanceof Integer) || (obj instanceof Double)) {
                    this.f33610c.add(obj);
                }
                weakReferenceArr[i2] = new WeakReference(obj);
                i++;
                i2++;
            }
            this.f33609b = weakReferenceArr;
            this.f33611d = method;
        }
    }

    public C8677x(AbstractC8679a<T> aVar, Class<T> cls) {
        C8614a.m4988a(aVar);
        C8614a.m4988a(cls);
        this.f33602b = aVar;
        this.f33603c = cls;
        C8667w.m4813a().m4811a(new C8667w.AbstractC8673b() { // from class: com.moat.analytics.mobile.mpub.x.1
            @Override // com.moat.analytics.mobile.mpub.C8667w.AbstractC8673b
            /* renamed from: c */
            public void mo4786c() {
                C8677x.this.m4787c();
            }

            @Override // com.moat.analytics.mobile.mpub.C8667w.AbstractC8673b
            /* renamed from: d */
            public void mo4785d() {
            }
        });
    }

    /* renamed from: a */
    public static <T> T m4793a(AbstractC8679a<T> aVar, Class<T> cls) {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new C8677x(aVar, cls));
    }

    /* renamed from: a */
    private Object m4791a(Method method) {
        try {
            return Boolean.TYPE.equals(method.getReturnType()) ? true : null;
        } catch (Exception e) {
            C8643m.m4879a(e);
            return null;
        }
    }

    /* renamed from: a */
    private Object m4790a(Method method, Object[] objArr) {
        Class<?> declaringClass = method.getDeclaringClass();
        C8667w a = C8667w.m4813a();
        if (Object.class.equals(declaringClass)) {
            String name = method.getName();
            if ("getClass".equals(name)) {
                return this.f33603c;
            }
            boolean equals = "toString".equals(name);
            Object invoke = method.invoke(this, objArr);
            String str = invoke;
            if (equals) {
                String name2 = C8677x.class.getName();
                String name3 = this.f33603c.getName();
                str = (invoke + "").replace(name2, name3);
            }
            return str;
        } else if (!this.f33605e || this.f33606f != null) {
            if (a.f33573a == C8667w.EnumC8675d.ON) {
                m4787c();
                T t = this.f33606f;
                if (t != null) {
                    return method.invoke(t, objArr);
                }
            }
            if (a.f33573a == C8667w.EnumC8675d.OFF && (!this.f33605e || this.f33606f != null)) {
                m4788b(method, objArr);
            }
            return m4791a(method);
        } else {
            this.f33604d.clear();
            return m4791a(method);
        }
    }

    /* renamed from: b */
    private void m4789b() {
        if (!this.f33605e) {
            try {
                this.f33606f = this.f33602b.mo4784a().m4982c(null);
            } catch (Exception e) {
                C8652p.m4844a("OnOffTrackerProxy", this, "Could not create instance", e);
                C8643m.m4879a(e);
            }
            this.f33605e = true;
        }
    }

    /* renamed from: b */
    private void m4788b(Method method, Object[] objArr) {
        if (this.f33604d.size() >= 15) {
            this.f33604d.remove(5);
        }
        this.f33604d.add(new C8680b(method, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m4787c() {
        m4789b();
        if (this.f33606f != null) {
            Iterator<C8677x<T>.C8680b> it = this.f33604d.iterator();
            while (it.hasNext()) {
                C8677x<T>.C8680b next = it.next();
                try {
                    Object[] objArr = new Object[next.f33609b.length];
                    WeakReference[] weakReferenceArr = next.f33609b;
                    int length = weakReferenceArr.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        objArr[i2] = weakReferenceArr[i].get();
                        i++;
                        i2++;
                    }
                    next.f33611d.invoke(this.f33606f, objArr);
                } catch (Exception e) {
                    C8643m.m4879a(e);
                }
            }
            this.f33604d.clear();
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        try {
            return m4790a(method, objArr);
        } catch (Exception e) {
            C8643m.m4879a(e);
            return m4791a(method);
        }
    }
}
