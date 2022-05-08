package p081h.p203i.p401g;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: h.i.g.r */
/* loaded from: classes2-dex2jar.jar:h/i/g/r.class */
public class C10459r {

    /* renamed from: b */
    public static volatile boolean f23788b = false;

    /* renamed from: c */
    public static boolean f23789c = true;

    /* renamed from: d */
    public static volatile C10459r f23790d;

    /* renamed from: e */
    public static final C10459r f23791e = new C10459r(true);

    /* renamed from: a */
    public final Map<Object, Object<?, ?>> f23792a;

    public C10459r() {
        this.f23792a = new HashMap();
    }

    public C10459r(C10459r rVar) {
        if (rVar == f23791e) {
            this.f23792a = Collections.emptyMap();
        } else {
            this.f23792a = Collections.unmodifiableMap(rVar.f23792a);
        }
    }

    public C10459r(boolean z) {
        this.f23792a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C10459r m11791a() {
        C10459r rVar = f23790d;
        C10459r rVar2 = rVar;
        if (rVar == null) {
            synchronized (C10459r.class) {
                try {
                    C10459r rVar3 = f23790d;
                    rVar2 = rVar3;
                    if (rVar3 == null) {
                        rVar2 = f23789c ? C10457q.m11794a() : f23791e;
                        f23790d = rVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return rVar2;
    }

    /* renamed from: b */
    public static boolean m11790b() {
        return f23788b;
    }
}
