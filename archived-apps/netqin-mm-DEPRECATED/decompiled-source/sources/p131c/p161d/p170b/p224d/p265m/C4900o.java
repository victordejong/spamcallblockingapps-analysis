package p131c.p161d.p170b.p224d.p265m;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.m.o */
/* loaded from: classes2-dex2jar.jar:c/d/b/d/m/o.class */
public final class C4900o<TResult, TContinuationResult> implements OnCanceledListener, OnFailureListener, OnSuccessListener<TContinuationResult>, AbstractC4902q<TResult> {

    /* renamed from: a */
    public final Executor f17532a;

    /* renamed from: b */
    public final SuccessContinuation<TResult, TContinuationResult> f17533b;

    /* renamed from: c */
    public final C4904s<TContinuationResult> f17534c;

    public C4900o(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation, C4904s<TContinuationResult> sVar) {
        this.f17532a = executor;
        this.f17533b = successContinuation;
        this.f17534c = sVar;
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    /* renamed from: a */
    public final void mo8584a() {
        this.f17534c.m24849f();
    }

    @Override // p131c.p161d.p170b.p224d.p265m.AbstractC4902q
    /* renamed from: a */
    public final void mo24855a(Task<TResult> task) {
        this.f17532a.execute(new RunnableC4899n(this, task));
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    /* renamed from: a */
    public final void mo8583a(Exception exc) {
        this.f17534c.m24854a(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(TContinuationResult tcontinuationresult) {
        this.f17534c.m24853a((C4904s<TContinuationResult>) tcontinuationresult);
    }
}
