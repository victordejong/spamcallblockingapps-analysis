package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.m.h */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/h.class */
public final class C4893h<TResult> implements AbstractC4902q<TResult> {

    /* renamed from: a */
    public final Executor f17515a;

    /* renamed from: b */
    public final Object f17516b = new Object();

    /* renamed from: c */
    public OnCompleteListener<TResult> f17517c;

    public C4893h(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        this.f17515a = executor;
        this.f17517c = onCompleteListener;
    }

    @Override // p131c.p161d.p170b.p224d.p265m.AbstractC4902q
    /* renamed from: a */
    public final void mo24855a(Task<TResult> task) {
        synchronized (this.f17516b) {
            if (this.f17517c != null) {
                this.f17515a.execute(new RunnableC4894i(this, task));
            }
        }
    }
}
