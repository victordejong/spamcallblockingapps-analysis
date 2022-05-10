package com.moat.analytics.mobile.inm;

import com.moat.analytics.mobile.inm.C8586w;
import com.moat.analytics.mobile.inm.p519a.p520a.C8533a;
import com.moat.analytics.mobile.inm.p519a.p521b.C8534a;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
/* renamed from: com.moat.analytics.mobile.inm.x */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/x.class */
public class C8596x<T> implements InvocationHandler {

    /* renamed from: a */
    public static final Object[] f33384a = new Object[0];

    /* renamed from: b */
    public final AbstractC8598a<T> f33385b;

    /* renamed from: c */
    public final Class<T> f33386c;

    /* renamed from: d */
    public final LinkedList<C8596x<T>.C8599b> f33387d = new LinkedList<>();

    /* renamed from: e */
    public boolean f33388e;

    /* renamed from: f */
    public T f33389f;

    /* renamed from: com.moat.analytics.mobile.inm.x$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/x$a.class */
    public interface AbstractC8598a<T> {
        /* renamed from: a */
        C8534a<T> mo5040a();
    }

    /* renamed from: com.moat.analytics.mobile.inm.x$b */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/x$b.class */
    public class C8599b {

        /* renamed from: b */
        public final WeakReference[] f33392b;

        /* renamed from: c */
        public final LinkedList<Object> f33393c;

        /* renamed from: d */
        public final Method f33394d;

        public C8599b(Method method, Object... objArr) {
            this.f33393c = new LinkedList<>();
            Object[] objArr2 = objArr == null ? C8596x.f33384a : objArr;
            WeakReference[] weakReferenceArr = new WeakReference[objArr2.length];
            int length = objArr2.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                Object obj = objArr2[i];
                if ((obj instanceof Map) || (obj instanceof Integer) || (obj instanceof Double)) {
                    this.f33393c.add(obj);
                }
                weakReferenceArr[i2] = new WeakReference(obj);
                i++;
                i2++;
            }
            this.f33392b = weakReferenceArr;
            this.f33394d = method;
        }
    }

    public C8596x(AbstractC8598a<T> aVar, Class<T> cls) {
        C8533a.m5244a(aVar);
        C8533a.m5244a(cls);
        this.f33385b = aVar;
        this.f33386c = cls;
        C8586w.m5069a().m5067a(new C8586w.AbstractC8592b() { // from class: com.moat.analytics.mobile.inm.x.1
            @Override // com.moat.analytics.mobile.inm.C8586w.AbstractC8592b
            /* renamed from: c */
            public void mo5042c() {
                C8596x.this.m5043c();
            }

            @Override // com.moat.analytics.mobile.inm.C8586w.AbstractC8592b
            /* renamed from: d */
            public void mo5041d() {
            }
        });
    }

    /* renamed from: a */
    public static <T> T m5049a(AbstractC8598a<T> aVar, Class<T> cls) {
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new C8596x(aVar, cls));
    }

    /* renamed from: a */
    private Object m5047a(Method method) {
        try {
            return Boolean.TYPE.equals(method.getReturnType()) ? true : null;
        } catch (Exception e) {
            C8562m.m5135a(e);
            return null;
        }
    }

    /* renamed from: a */
    private Object m5046a(Method method, Object[] objArr) {
        Class<?> declaringClass = method.getDeclaringClass();
        C8586w a = C8586w.m5069a();
        if (Object.class.equals(declaringClass)) {
            String name = method.getName();
            if ("getClass".equals(name)) {
                return this.f33386c;
            }
            boolean equals = "toString".equals(name);
            Object invoke = method.invoke(this, objArr);
            String str = invoke;
            if (equals) {
                str = String.valueOf(invoke).replace(C8596x.class.getName(), this.f33386c.getName());
            }
            return str;
        } else if (!this.f33388e || this.f33389f != null) {
            if (a.f33356a == C8586w.EnumC8594d.ON) {
                m5043c();
                T t = this.f33389f;
                if (t != null) {
                    return method.invoke(t, objArr);
                }
            }
            if (a.f33356a == C8586w.EnumC8594d.OFF && (!this.f33388e || this.f33389f != null)) {
                m5044b(method, objArr);
            }
            return m5047a(method);
        } else {
            this.f33387d.clear();
            return m5047a(method);
        }
    }

    /* renamed from: b */
    private void m5045b() {
        if (!this.f33388e) {
            try {
                this.f33389f = this.f33385b.mo5040a().m5238c(null);
            } catch (Exception e) {
                C8571p.m5100a("OnOffTrackerProxy", this, "Could not create instance", e);
                C8562m.m5135a(e);
            }
            this.f33388e = true;
        }
    }

    /* renamed from: b */
    private void m5044b(Method method, Object[] objArr) {
        if (this.f33387d.size() >= 15) {
            this.f33387d.remove(5);
        }
        this.f33387d.add(new C8599b(method, objArr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m5043c() {
        m5045b();
        if (this.f33389f != null) {
            Iterator<C8596x<T>.C8599b> it = this.f33387d.iterator();
            while (it.hasNext()) {
                C8596x<T>.C8599b next = it.next();
                try {
                    Object[] objArr = new Object[next.f33392b.length];
                    WeakReference[] weakReferenceArr = next.f33392b;
                    int length = weakReferenceArr.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        objArr[i2] = weakReferenceArr[i].get();
                        i++;
                        i2++;
                    }
                    next.f33394d.invoke(this.f33389f, objArr);
                } catch (Exception e) {
                    C8562m.m5135a(e);
                }
            }
            this.f33387d.clear();
        }
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object obj, Method method, Object[] objArr) {
        try {
            return m5046a(method, objArr);
        } catch (Exception e) {
            C8562m.m5135a(e);
            return m5047a(method);
        }
    }
}
