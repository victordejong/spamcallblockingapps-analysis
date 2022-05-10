package p131c.p161d.p282e.p335s;

import com.google.android.gms.tasks.TaskCompletionSource;
import p131c.p161d.p282e.p335s.p336o.AbstractC5911c;
/* renamed from: c.d.e.s.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/s/j.class */
public class C5901j implements AbstractC5905m {

    /* renamed from: a */
    public final TaskCompletionSource<String> f19221a;

    public C5901j(TaskCompletionSource<String> taskCompletionSource) {
        this.f19221a = taskCompletionSource;
    }

    @Override // p131c.p161d.p282e.p335s.AbstractC5905m
    /* renamed from: a */
    public boolean mo22770a(AbstractC5911c cVar) {
        if (!cVar.m22737k() && !cVar.m22738j() && !cVar.m22740h()) {
            return false;
        }
        this.f19221a.m8596b((TaskCompletionSource<String>) cVar.mo22745c());
        return true;
    }

    @Override // p131c.p161d.p282e.p335s.AbstractC5905m
    /* renamed from: a */
    public boolean mo22769a(Exception exc) {
        return false;
    }
}
