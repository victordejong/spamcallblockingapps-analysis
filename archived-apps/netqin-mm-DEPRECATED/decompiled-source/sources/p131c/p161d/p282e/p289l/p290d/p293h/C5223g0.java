package p131c.p161d.p282e.p289l.p290d.p293h;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CountDownLatch;
/* renamed from: c.d.e.l.d.h.g0 */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/h/g0.class */
public final /* synthetic */ class C5223g0 implements Continuation {

    /* renamed from: a */
    public final CountDownLatch f17913a;

    public C5223g0(CountDownLatch countDownLatch) {
        this.f17913a = countDownLatch;
    }

    /* renamed from: a */
    public static Continuation m24241a(CountDownLatch countDownLatch) {
        return new C5223g0(countDownLatch);
    }

    @Override // com.google.android.gms.tasks.Continuation
    /* renamed from: a */
    public Object mo8621a(Task task) {
        return this.f17913a.countDown();
    }
}
