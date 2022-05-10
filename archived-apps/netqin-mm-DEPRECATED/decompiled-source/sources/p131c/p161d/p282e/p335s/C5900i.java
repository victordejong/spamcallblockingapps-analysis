package p131c.p161d.p282e.p335s;

import com.google.android.gms.tasks.TaskCompletionSource;
import p131c.p161d.p282e.p335s.AbstractC5902k;
import p131c.p161d.p282e.p335s.p336o.AbstractC5911c;
/* renamed from: c.d.e.s.i */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/i.class */
public class C5900i implements AbstractC5905m {

    /* renamed from: a */
    public final C5906n f19219a;

    /* renamed from: b */
    public final TaskCompletionSource<AbstractC5902k> f19220b;

    public C5900i(C5906n nVar, TaskCompletionSource<AbstractC5902k> taskCompletionSource) {
        this.f19219a = nVar;
        this.f19220b = taskCompletionSource;
    }

    @Override // p131c.p161d.p282e.p335s.AbstractC5905m
    /* renamed from: a */
    public boolean mo22770a(AbstractC5911c cVar) {
        if (!cVar.m22738j() || this.f19219a.m22767a(cVar)) {
            return false;
        }
        TaskCompletionSource<AbstractC5902k> taskCompletionSource = this.f19220b;
        AbstractC5902k.AbstractC5903a d = AbstractC5902k.m22778d();
        d.mo22775a(cVar.mo22751a());
        d.mo22774b(cVar.mo22747b());
        d.mo22776a(cVar.mo22741g());
        taskCompletionSource.m8598a((TaskCompletionSource<AbstractC5902k>) d.mo22777a());
        return true;
    }

    @Override // p131c.p161d.p282e.p335s.AbstractC5905m
    /* renamed from: a */
    public boolean mo22769a(Exception exc) {
        this.f19220b.m8597b(exc);
        return true;
    }
}
