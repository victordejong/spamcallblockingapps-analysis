package p081h.p119d.p120a.p124s.p131j;

import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
/* renamed from: h.d.a.s.j.c */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/c.class */
public class C5902c {

    /* renamed from: d */
    public static final AbstractC5918l f14827d = new C5903a();

    /* renamed from: a */
    public final Map<Class, Map<Class, AbstractC5919m>> f14828a = new HashMap();

    /* renamed from: b */
    public final Map<Class, Map<Class, AbstractC5918l>> f14829b = new HashMap();

    /* renamed from: c */
    public final Context f14830c;

    /* renamed from: h.d.a.s.j.c$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/j/c$a.class */
    public static final class C5903a implements AbstractC5918l {
        @Override // p081h.p119d.p120a.p124s.p131j.AbstractC5918l
        /* renamed from: a */
        public AbstractC5813c mo24060a(Object obj, int i, int i2) {
            throw new NoSuchMethodError("This should never be called!");
        }

        public String toString() {
            return "NULL_MODEL_LOADER";
        }
    }

    public C5902c(Context context) {
        this.f14830c = context.getApplicationContext();
    }

    /* renamed from: a */
    public <T, Y> AbstractC5918l<T, Y> m24161a(Class<T> cls, Class<Y> cls2) {
        AbstractC5918l<T, Y> lVar;
        synchronized (this) {
            AbstractC5918l<T, Y> c = m24157c(cls, cls2);
            if (c == null) {
                AbstractC5919m<T, Y> d = m24156d(cls, cls2);
                if (d != null) {
                    AbstractC5918l<T, Y> a = d.mo24128a(this.f14830c, this);
                    m24160a(cls, cls2, a);
                    lVar = a;
                } else {
                    m24158b(cls, cls2);
                    lVar = c;
                }
                return lVar;
            } else if (f14827d.equals(c)) {
                return null;
            } else {
                return c;
            }
        }
    }

    /* renamed from: a */
    public <T, Y> AbstractC5919m<T, Y> m24159a(Class<T> cls, Class<Y> cls2, AbstractC5919m<T, Y> mVar) {
        AbstractC5919m<T, Y> mVar2;
        synchronized (this) {
            this.f14829b.clear();
            Map<Class, AbstractC5919m> map = this.f14828a.get(cls);
            Map<Class, AbstractC5919m> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                this.f14828a.put(cls, map2);
            }
            AbstractC5919m<T, Y> put = map2.put(cls2, mVar);
            mVar2 = put;
            if (put != null) {
                Iterator<Map<Class, AbstractC5919m>> it = this.f14828a.values().iterator();
                while (true) {
                    mVar2 = put;
                    if (it.hasNext()) {
                        if (it.next().containsValue(put)) {
                            mVar2 = null;
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
        return mVar2;
    }

    /* renamed from: a */
    public final <T, Y> void m24160a(Class<T> cls, Class<Y> cls2, AbstractC5918l<T, Y> lVar) {
        Map<Class, AbstractC5918l> map = this.f14829b.get(cls);
        Map<Class, AbstractC5918l> map2 = map;
        if (map == null) {
            map2 = new HashMap<>();
            this.f14829b.put(cls, map2);
        }
        map2.put(cls2, lVar);
    }

    /* renamed from: b */
    public final <T, Y> void m24158b(Class<T> cls, Class<Y> cls2) {
        m24160a(cls, cls2, f14827d);
    }

    /* renamed from: c */
    public final <T, Y> AbstractC5918l<T, Y> m24157c(Class<T> cls, Class<Y> cls2) {
        Map<Class, AbstractC5918l> map = this.f14829b.get(cls);
        return map != null ? map.get(cls2) : null;
    }

    /* renamed from: d */
    public final <T, Y> AbstractC5919m<T, Y> m24156d(Class<T> cls, Class<Y> cls2) {
        Map<Class, AbstractC5919m> map;
        Map<Class, AbstractC5919m> map2 = this.f14828a.get(cls);
        AbstractC5919m<T, Y> mVar = map2 != null ? map2.get(cls2) : null;
        AbstractC5919m mVar2 = mVar;
        if (mVar == null) {
            Iterator<Class> it = this.f14828a.keySet().iterator();
            while (true) {
                mVar2 = mVar;
                if (!it.hasNext()) {
                    break;
                }
                Class next = it.next();
                if (next.isAssignableFrom(cls) && (map = this.f14828a.get(next)) != null) {
                    mVar2 = map.get(cls2);
                    mVar = mVar2;
                    if (mVar2 != null) {
                        break;
                    }
                }
            }
        }
        return mVar2;
    }
}
