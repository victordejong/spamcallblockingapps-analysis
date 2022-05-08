package p081h.p203i.p204a.p224e.p235d.p236k.p237q;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p081h.p203i.p204a.p224e.p235d.p249s.p250t.ThreadFactoryC7090c;
/* renamed from: h.i.a.e.d.k.q.o1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/k/q/o1.class */
public final class C6907o1 {

    /* renamed from: a */
    public static final ExecutorService f16914a = new ThreadPoolExecutor(0, 4, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC7090c("GAC_Transform"));

    /* renamed from: a */
    public static ExecutorService m21623a() {
        return f16914a;
    }
}
