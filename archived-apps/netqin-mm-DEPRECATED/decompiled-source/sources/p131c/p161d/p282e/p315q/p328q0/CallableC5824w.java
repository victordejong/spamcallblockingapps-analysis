package p131c.p161d.p282e.p315q.p328q0;

import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.Callable;
/* renamed from: c.d.e.q.q0.w */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/w.class */
public final /* synthetic */ class CallableC5824w implements Callable {

    /* renamed from: a */
    public final TaskCompletionSource f19091a;

    public CallableC5824w(TaskCompletionSource taskCompletionSource) {
        this.f19091a = taskCompletionSource;
    }

    /* renamed from: a */
    public static Callable m22963a(TaskCompletionSource taskCompletionSource) {
        return new CallableC5824w(taskCompletionSource);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        return this.f19091a.m8598a((TaskCompletionSource) null);
    }
}
