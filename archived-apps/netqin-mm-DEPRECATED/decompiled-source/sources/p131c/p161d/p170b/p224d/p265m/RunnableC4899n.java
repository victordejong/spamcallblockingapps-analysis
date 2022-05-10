package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.RuntimeExecutionException;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskExecutors;
import java.util.concurrent.CancellationException;
/* renamed from: c.d.b.d.m.n */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/n.class */
public final class RunnableC4899n implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Task f17530a;

    /* renamed from: b */
    public final /* synthetic */ C4900o f17531b;

    public RunnableC4899n(C4900o oVar, Task task) {
        this.f17531b = oVar;
        this.f17530a = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SuccessContinuation successContinuation;
        try {
            successContinuation = this.f17531b.f17533b;
            Task a = successContinuation.mo8618a(this.f17530a.mo8606b());
            if (a == null) {
                this.f17531b.mo8583a(new NullPointerException("Continuation returned null"));
                return;
            }
            a.mo8608a(TaskExecutors.f30246b, (OnSuccessListener) this.f17531b);
            a.mo8609a(TaskExecutors.f30246b, (OnFailureListener) this.f17531b);
            a.mo8610a(TaskExecutors.f30246b, (OnCanceledListener) this.f17531b);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                this.f17531b.mo8583a((Exception) e.getCause());
            } else {
                this.f17531b.mo8583a(e);
            }
        } catch (CancellationException e2) {
            this.f17531b.mo8584a();
        } catch (Exception e3) {
            this.f17531b.mo8583a(e3);
        }
    }
}
