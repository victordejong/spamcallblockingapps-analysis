package p613k.p614d;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import p613k.p614d.AbstractC10456i;
/* renamed from: k.d.l */
/* loaded from: classes2-dex2jar.jar:k/d/l.class */
public class C10460l implements Cloneable {

    /* renamed from: m */
    public static Class[] f38703m;

    /* renamed from: n */
    public static Class[] f38704n;

    /* renamed from: o */
    public static Class[] f38705o;

    /* renamed from: a */
    public String f38708a;

    /* renamed from: b */
    public AbstractC10459k f38709b;

    /* renamed from: c */
    public Method f38710c;

    /* renamed from: d */
    public Method f38711d;

    /* renamed from: e */
    public Class f38712e;

    /* renamed from: f */
    public AbstractC10456i f38713f;

    /* renamed from: g */
    public final ReentrantReadWriteLock f38714g;

    /* renamed from: h */
    public final Object[] f38715h;

    /* renamed from: i */
    public AbstractC10464n f38716i;

    /* renamed from: j */
    public Object f38717j;

    /* renamed from: k */
    public AbstractC10463m f38718k;

    /* renamed from: l */
    public static final AbstractC10464n f38702l = new C10450d();

    /* renamed from: p */
    public static final HashMap<Class, HashMap<String, Method>> f38706p = new HashMap<>();

    /* renamed from: q */
    public static final HashMap<Class, HashMap<String, Method>> f38707q = new HashMap<>();

    /* renamed from: k.d.l$b */
    /* loaded from: classes2-dex2jar.jar:k/d/l$b.class */
    public static class C10462b extends C10460l {

        /* renamed from: r */
        public AbstractC10452f f38719r;

        /* renamed from: s */
        public AbstractC10456i.AbstractC10457a f38720s;

        /* renamed from: t */
        public float f38721t;

        public C10462b(String str, float... fArr) {
            super(str);
            mo85a(fArr);
        }

        public C10462b(AbstractC10459k kVar, float... fArr) {
            super(kVar);
            mo85a(fArr);
            if (kVar instanceof AbstractC10452f) {
                this.f38719r = (AbstractC10452f) this.f38709b;
            }
        }

        @Override // p613k.p614d.C10460l
        /* renamed from: a */
        public void mo85a(float... fArr) {
            C10460l.super.mo85a(fArr);
            this.f38720s = (AbstractC10456i.AbstractC10457a) this.f38713f;
        }

        @Override // p613k.p614d.C10460l
        /* renamed from: b */
        public void mo84b(Class cls) {
            if (this.f38709b == null) {
                C10460l.super.mo84b(cls);
            }
        }

        @Override // p613k.p614d.C10460l
        /* renamed from: b */
        public void mo83b(Object obj) {
            AbstractC10452f fVar = this.f38719r;
            if (fVar != null) {
                fVar.m123a((AbstractC10452f) obj, this.f38721t);
                return;
            }
            AbstractC10459k kVar = this.f38709b;
            if (kVar != null) {
                kVar.mo97a(obj, Float.valueOf(this.f38721t));
            } else if (this.f38710c != null) {
                try {
                    this.f38715h[0] = Float.valueOf(this.f38721t);
                    this.f38710c.invoke(obj, this.f38715h);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InvocationTargetException e2) {
                    e2.printStackTrace();
                }
            }
        }

        @Override // p613k.p614d.C10460l
        /* renamed from: c */
        public Object mo82c() {
            return Float.valueOf(this.f38721t);
        }

        @Override // p613k.p614d.C10460l
        /* renamed from: c */
        public void mo81c(float f) {
            this.f38721t = this.f38720s.mo105a(f);
        }

        @Override // p613k.p614d.C10460l
        public C10462b clone() {
            C10462b bVar = (C10462b) C10460l.super.clone();
            bVar.f38720s = (AbstractC10456i.AbstractC10457a) bVar.f38713f;
            return bVar;
        }
    }

    static {
        Class cls = Float.TYPE;
        Class cls2 = Double.TYPE;
        Class cls3 = Integer.TYPE;
        f38703m = new Class[]{cls, Float.class, cls2, cls3, Double.class, Integer.class};
        Class cls4 = Float.TYPE;
        Class cls5 = Double.TYPE;
        f38704n = new Class[]{cls3, Integer.class, cls4, cls5, Float.class, Double.class};
        f38705o = new Class[]{cls5, Double.class, Float.TYPE, Integer.TYPE, Float.class, Integer.class};
    }

    public C10460l(String str) {
        this.f38710c = null;
        this.f38711d = null;
        this.f38713f = null;
        this.f38714g = new ReentrantReadWriteLock();
        this.f38715h = new Object[1];
        this.f38708a = str;
    }

    public C10460l(AbstractC10459k kVar) {
        this.f38710c = null;
        this.f38711d = null;
        this.f38713f = null;
        this.f38714g = new ReentrantReadWriteLock();
        this.f38715h = new Object[1];
        this.f38709b = kVar;
        if (kVar != null) {
            this.f38708a = kVar.m99a();
        }
    }

    /* renamed from: a */
    public static String m91a(String str, String str2) {
        String str3 = str;
        if (str2 != null) {
            if (str2.length() == 0) {
                str3 = str;
            } else {
                str3 = str + Character.toUpperCase(str2.charAt(0)) + str2.substring(1);
            }
        }
        return str3;
    }

    /* renamed from: a */
    public static C10460l m90a(String str, float... fArr) {
        return new C10462b(str, fArr);
    }

    /* renamed from: a */
    public static C10460l m89a(AbstractC10459k<?, Float> kVar, float... fArr) {
        return new C10462b(kVar, fArr);
    }

    /* renamed from: a */
    public final Object m93a(Object obj) {
        AbstractC10463m mVar = this.f38718k;
        Object obj2 = obj;
        if (mVar != null) {
            if (mVar instanceof AbstractC10449c) {
                obj2 = ((AbstractC10449c) mVar).m125b(obj);
            } else {
                throw new IllegalArgumentException("Converter " + this.f38718k.getClass().getName() + " must be a BidirectionalTypeConverter");
            }
        }
        return obj2;
    }

    /* renamed from: a */
    public final Method m95a(Class cls, String str, Class cls2) {
        Method method;
        String a = m91a(str, this.f38708a);
        Method method2 = null;
        Method method3 = null;
        if (cls2 == null) {
            try {
                method2 = cls.getMethod(a, null);
            } catch (NoSuchMethodException e) {
            }
        } else {
            Class<?>[] clsArr = new Class[1];
            Class<?>[] clsArr2 = cls2.equals(Float.class) ? f38703m : cls2.equals(Integer.class) ? f38704n : cls2.equals(Double.class) ? f38705o : new Class[]{cls2};
            int length = clsArr2.length;
            int i = 0;
            while (true) {
                method2 = method3;
                if (i >= length) {
                    break;
                }
                Class<?> cls3 = clsArr2[i];
                clsArr[0] = cls3;
                try {
                    method = cls.getMethod(a, clsArr);
                    if (this.f38718k != null) {
                        break;
                    }
                    method3 = method;
                    this.f38712e = cls3;
                    break;
                } catch (NoSuchMethodException e2) {
                    i++;
                }
            }
            return method;
        }
        return method2;
    }

    /* renamed from: a */
    public final Method m94a(Class cls, HashMap<Class, HashMap<String, Method>> hashMap, String str, Class cls2) {
        try {
            this.f38714g.writeLock().lock();
            HashMap<String, Method> hashMap2 = hashMap.get(cls);
            Method method = hashMap2 != null ? hashMap2.get(this.f38708a) : null;
            Method method2 = method;
            if (method == null) {
                method2 = m95a(cls, str, cls2);
                HashMap<String, Method> hashMap3 = hashMap2;
                if (hashMap2 == null) {
                    hashMap3 = new HashMap<>();
                    hashMap.put(cls, hashMap3);
                }
                hashMap3.put(this.f38708a, method2);
            }
            return method2;
        } finally {
            this.f38714g.writeLock().unlock();
        }
    }

    /* renamed from: a */
    public final void m96a(Class cls) {
        this.f38711d = m94a(cls, f38707q, "get", null);
    }

    /* renamed from: a */
    public void m92a(String str) {
        this.f38708a = str;
    }

    /* renamed from: a */
    public void mo85a(float... fArr) {
        this.f38712e = Float.TYPE;
        this.f38713f = C10455h.m110a(fArr);
    }

    /* renamed from: b */
    public void mo84b(Class cls) {
        AbstractC10463m mVar = this.f38718k;
        this.f38710c = m94a(cls, f38706p, "set", mVar == null ? this.f38712e : mVar.m80a());
    }

    /* renamed from: b */
    public void mo83b(Object obj) {
        AbstractC10459k kVar = this.f38709b;
        if (kVar != null) {
            kVar.mo97a(obj, mo82c());
        }
        if (this.f38710c != null) {
            try {
                this.f38715h[0] = mo82c();
                this.f38710c.invoke(obj, this.f38715h);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InvocationTargetException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: c */
    public Object mo82c() {
        return this.f38717j;
    }

    /* renamed from: c */
    public void mo81c(float f) {
        Object b = this.f38713f.mo107b(f);
        AbstractC10463m mVar = this.f38718k;
        if (mVar != null) {
            b = mVar.m79a(b);
        }
        this.f38717j = b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
        if (r0.m114j() != false) goto L_0x0057;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m88c(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p613k.p614d.C10460l.m88c(java.lang.Object):void");
    }

    public C10460l clone() {
        try {
            C10460l lVar = (C10460l) super.clone();
            lVar.f38708a = this.f38708a;
            lVar.f38709b = this.f38709b;
            lVar.f38713f = this.f38713f.clone();
            lVar.f38716i = this.f38716i;
            return lVar;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* renamed from: e */
    public String m87e() {
        return this.f38708a;
    }

    /* renamed from: g */
    public void m86g() {
        if (this.f38716i == null) {
            this.f38716i = this.f38712e == Float.class ? f38702l : null;
        }
        AbstractC10464n nVar = this.f38716i;
        if (nVar != null) {
            this.f38713f.mo108a(nVar);
        }
    }

    public String toString() {
        return this.f38708a + ": " + this.f38713f.toString();
    }
}
