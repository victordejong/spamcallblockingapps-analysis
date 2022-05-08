package p081h.p203i.p204a.p224e.p282l;

import android.content.Context;
import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p235d.C6795e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8874b0;
import p081h.p203i.p204a.p224e.p282l.p283j.C8872a0;
import p081h.p203i.p204a.p224e.p282l.p284k.C8907b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8909d;
/* renamed from: h.i.a.e.l.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/d.class */
public final class C8865d {
    @GuardedBy("MapsInitializer.class")

    /* renamed from: a */
    public static boolean f20176a = false;

    /* renamed from: a */
    public static int m16858a(Context context) {
        synchronized (C8865d.class) {
            try {
                C7021t.m21289a(context, "Context is null");
                if (f20176a) {
                    return 0;
                }
                try {
                    AbstractC8874b0 a = C8872a0.m16850a(context);
                    try {
                        C8855b.m16876a(a.mo16844a());
                        C8907b.m16804a(a.mo16845A0());
                        f20176a = true;
                        return 0;
                    } catch (RemoteException e) {
                        throw new C8909d(e);
                    }
                } catch (C6795e e2) {
                    return e2.f16690a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
