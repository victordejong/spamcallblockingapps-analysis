package p131c.p161d.p170b.p224d.p252g.p253a;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: c.d.b.d.g.a.zq */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/zq.class */
public final class RunnableC4299zq implements Runnable {
    public RunnableC4299zq() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            MessageDigest unused = C3364aq.f12307b = MessageDigest.getInstance("MD5");
            C3364aq.f12310e.countDown();
        } catch (NoSuchAlgorithmException e) {
            C3364aq.f12310e.countDown();
        } catch (Throwable th) {
            C3364aq.f12310e.countDown();
            throw th;
        }
    }
}
