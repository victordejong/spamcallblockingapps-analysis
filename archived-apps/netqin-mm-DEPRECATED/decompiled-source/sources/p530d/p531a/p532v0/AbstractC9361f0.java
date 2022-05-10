package p530d.p531a.p532v0;

import io.grpc.MethodDescriptor;
import p131c.p161d.p266c.p267a.C4924j;
import p530d.p531a.AbstractC9227f;
import p530d.p531a.AbstractC9251i0;
import p530d.p531a.C9222d;
/* renamed from: d.a.v0.f0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/f0.class */
public abstract class AbstractC9361f0 extends AbstractC9251i0 {

    /* renamed from: a */
    public final AbstractC9251i0 f36023a;

    public AbstractC9361f0(AbstractC9251i0 i0Var) {
        this.f36023a = i0Var;
    }

    @Override // p530d.p531a.AbstractC9225e
    /* renamed from: a */
    public <RequestT, ResponseT> AbstractC9227f<RequestT, ResponseT> mo359a(MethodDescriptor<RequestT, ResponseT> methodDescriptor, C9222d dVar) {
        return this.f36023a.mo359a(methodDescriptor, dVar);
    }

    @Override // p530d.p531a.AbstractC9225e
    /* renamed from: a */
    public String mo360a() {
        return this.f36023a.mo360a();
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24813a("delegate", this.f36023a);
        return a.toString();
    }
}
