package p081h.p203i.p325c.p358p;

import android.content.Intent;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p259j.p276q.C8557b2;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p325c.C9435c;
/* renamed from: h.i.c.p.a */
/* loaded from: classes2-dex2jar.jar:h/i/c/p/a.class */
public abstract class AbstractC9834a {
    @GuardedBy("FirebaseDynamicLinks.class")

    /* renamed from: a */
    public static WeakReference<AbstractC9834a> f22307a;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [h.i.c.p.a] */
    /* renamed from: a */
    public static AbstractC9834a m14118a() {
        C8557b2 b2Var;
        synchronized (AbstractC9834a.class) {
            try {
                C8557b2 b2Var2 = f22307a == null ? null : f22307a.get();
                b2Var = b2Var2;
                if (b2Var2 == null) {
                    b2Var = new C8557b2(C9435c.m15163j().m15173b());
                    f22307a = new WeakReference<>(b2Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b2Var;
    }

    /* renamed from: a */
    public abstract AbstractC9143h<C9835b> mo14117a(@NonNull Intent intent);
}
