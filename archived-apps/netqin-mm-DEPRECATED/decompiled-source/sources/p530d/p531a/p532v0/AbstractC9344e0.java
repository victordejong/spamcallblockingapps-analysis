package p530d.p531a.p532v0;

import io.grpc.MethodDescriptor;
import io.grpc.Status;
import java.util.concurrent.Executor;
import p131c.p161d.p266c.p267a.C4924j;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.C9625z;
import p530d.p531a.p532v0.AbstractC9451p;
import p530d.p531a.p532v0.AbstractC9543x0;
/* renamed from: d.a.v0.e0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/e0.class */
public abstract class AbstractC9344e0 implements AbstractC9493s {
    @Override // p530d.p531a.p532v0.AbstractC9451p
    /* renamed from: a */
    public AbstractC9448o mo520a(MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9222d dVar) {
        return mo2678a().mo520a(methodDescriptor, k0Var, dVar);
    }

    /* renamed from: a */
    public abstract AbstractC9493s mo2678a();

    @Override // p530d.p531a.p532v0.AbstractC9543x0
    /* renamed from: a */
    public Runnable mo2426a(AbstractC9543x0.AbstractC9544a aVar) {
        return mo2678a().mo2426a(aVar);
    }

    @Override // p530d.p531a.p532v0.AbstractC9451p
    /* renamed from: a */
    public void mo521a(AbstractC9451p.AbstractC9452a aVar, Executor executor) {
        mo2678a().mo521a(aVar, executor);
    }

    @Override // p530d.p531a.p532v0.AbstractC9543x0
    /* renamed from: a */
    public void mo2413a(Status status) {
        mo2678a().mo2413a(status);
    }

    @Override // p530d.p531a.AbstractC9224d0
    /* renamed from: b */
    public C9625z mo424b() {
        return mo2678a().mo424b();
    }

    @Override // p530d.p531a.p532v0.AbstractC9543x0
    /* renamed from: b */
    public void mo2402b(Status status) {
        mo2678a().mo2402b(status);
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("delegate", mo2678a());
        return a.toString();
    }
}
