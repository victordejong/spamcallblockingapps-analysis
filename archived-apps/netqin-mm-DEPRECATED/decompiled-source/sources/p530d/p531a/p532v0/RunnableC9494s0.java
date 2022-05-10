package p530d.p531a.p532v0;

import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4942t;
/* renamed from: d.a.v0.s0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/s0.class */
public final class RunnableC9494s0 implements Runnable {

    /* renamed from: b */
    public static final Logger f36319b = Logger.getLogger(RunnableC9494s0.class.getName());

    /* renamed from: a */
    public final Runnable f36320a;

    public RunnableC9494s0(Runnable runnable) {
        C4933n.m24794a(runnable, "task");
        this.f36320a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.f36320a.run();
        } catch (Throwable th) {
            Logger logger = f36319b;
            Level level = Level.SEVERE;
            logger.log(level, "Exception while executing runnable " + this.f36320a, th);
            C4942t.m24749b(th);
            throw new AssertionError(th);
        }
    }

    public String toString() {
        return "LogExceptionRunnable(" + this.f36320a + ")";
    }
}
