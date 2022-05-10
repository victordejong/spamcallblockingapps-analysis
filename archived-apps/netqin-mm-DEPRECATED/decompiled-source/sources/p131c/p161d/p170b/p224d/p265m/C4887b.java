package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.m.b */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/b.class */
public final class C4887b<TResult, TContinuationResult> implements AbstractC4902q<TResult> {

    /* renamed from: a */
    public final Executor f17501a;

    /* renamed from: b */
    public final Continuation<TResult, TContinuationResult> f17502b;

    /* renamed from: c */
    public final C4904s<TContinuationResult> f17503c;

    public C4887b(Executor executor, Continuation<TResult, TContinuationResult> continuation, C4904s<TContinuationResult> sVar) {
        this.f17501a = executor;
        this.f17502b = continuation;
        this.f17503c = sVar;
    }

    @Override // p131c.p161d.p170b.p224d.p265m.AbstractC4902q
    /* renamed from: a */
    public final void mo24855a(Task<TResult> task) {
        this.f17501a.execute(new RunnableC4889d(this, task));
    }
}
