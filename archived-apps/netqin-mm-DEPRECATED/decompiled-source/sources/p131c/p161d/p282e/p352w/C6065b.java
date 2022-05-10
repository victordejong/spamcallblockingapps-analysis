package p131c.p161d.p282e.p352w;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
/* renamed from: c.d.e.w.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/w/b.class */
public final /* synthetic */ class C6065b implements SuccessContinuation {

    /* renamed from: a */
    public final C6070g f19504a;

    public C6065b(C6070g gVar) {
        this.f19504a = gVar;
    }

    /* renamed from: a */
    public static SuccessContinuation m22159a(C6070g gVar) {
        return new C6065b(gVar);
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    /* renamed from: a */
    public Task mo8618a(Object obj) {
        Task a;
        Void r1 = (Void) obj;
        a = this.f19504a.m22154a();
        return a;
    }
}
