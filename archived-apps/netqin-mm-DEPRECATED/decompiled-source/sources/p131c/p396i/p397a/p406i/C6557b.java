package p131c.p396i.p397a.p406i;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p396i.p397a.p398e.AbstractC6508d;
import p131c.p396i.p397a.p398e.AbstractViewTreeObserver$OnScrollChangedListenerC6512e;
/* renamed from: c.i.a.i.b */
/* loaded from: classes2-dex2jar.jar:c/i/a/i/b.class */
public class C6557b {

    /* renamed from: c */
    public static C6557b f20344c;

    /* renamed from: a */
    public ConcurrentHashMap<String, Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>>> f20345a = new ConcurrentHashMap<>();

    /* renamed from: b */
    public ConcurrentHashMap<String, Map<String, Map<Integer, Class<? extends AbstractC6508d>>>> f20346b = new ConcurrentHashMap<>();

    /* renamed from: b */
    public static C6557b m20501b() {
        if (f20344c == null) {
            synchronized (C6557b.class) {
                try {
                    if (f20344c == null) {
                        f20344c = new C6557b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f20344c;
    }

    /* renamed from: a */
    public Class<? extends AbstractC6508d> m20502a(String str, String str2, int i) {
        Map<Integer, Class<? extends AbstractC6508d>> map;
        Map<String, Map<Integer, Class<? extends AbstractC6508d>>> a = m20503a(str);
        if (a == null || (map = a.get(str2)) == null) {
            return null;
        }
        return map.get(Integer.valueOf(i));
    }

    /* renamed from: a */
    public Map<String, Map<Integer, Class<? extends AbstractC6508d>>> m20503a(String str) {
        return this.f20346b.get(str);
    }

    /* renamed from: a */
    public ConcurrentHashMap<String, Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>>> m20505a() {
        return this.f20345a;
    }

    /* renamed from: a */
    public void m20504a(AbstractC6556a aVar) {
        if (aVar != null && aVar.mo20031a() != null) {
            this.f20345a.put(aVar.mo20031a(), aVar.mo20029c() != null ? aVar.mo20029c() : new HashMap<>());
            this.f20346b.put(aVar.mo20031a(), aVar.mo20030b() != null ? aVar.mo20030b() : new HashMap<>());
        }
    }

    /* renamed from: b */
    public Map<String, Class<? extends AbstractViewTreeObserver$OnScrollChangedListenerC6512e>> m20500b(String str) {
        return this.f20345a.get(str);
    }
}
