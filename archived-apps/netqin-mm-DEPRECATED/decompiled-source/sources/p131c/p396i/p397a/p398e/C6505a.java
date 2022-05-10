package p131c.p396i.p397a.p398e;

import java.util.HashMap;
/* renamed from: c.i.a.e.a */
/* loaded from: classes2-dex2jar.jar:c/i/a/e/a.class */
public class C6505a {

    /* renamed from: b */
    public static volatile C6505a f20245b;

    /* renamed from: a */
    public final HashMap<String, AbstractC6514f<?>> f20246a = new HashMap<>(10);

    /* renamed from: a */
    public static C6505a m20638a() {
        if (f20245b == null) {
            synchronized (C6505a.class) {
                try {
                    if (f20245b == null) {
                        f20245b = new C6505a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f20245b;
    }

    /* renamed from: a */
    public int m20637a(String str) {
        int i;
        AbstractC6514f<?> fVar = this.f20246a.get(str);
        if (fVar != null) {
            if (fVar.mo20607d()) {
                int size = fVar.m20609b().size();
                i = size;
                if (size == 0) {
                    fVar.m20611a();
                    this.f20246a.remove(str);
                    i = size;
                }
                return i;
            }
            fVar.m20611a();
            this.f20246a.remove(str);
        }
        i = 0;
        return i;
    }

    /* renamed from: a */
    public void m20636a(String str, AbstractC6514f<?> fVar) {
        this.f20246a.put(str, fVar);
    }

    /* renamed from: b */
    public AbstractC6514f<?> m20635b(String str) {
        return m20637a(str) > 0 ? this.f20246a.get(str) : null;
    }

    /* renamed from: c */
    public void m20634c(String str) {
        String str2 = "移除缓存:" + str;
        this.f20246a.remove(str);
    }
}
