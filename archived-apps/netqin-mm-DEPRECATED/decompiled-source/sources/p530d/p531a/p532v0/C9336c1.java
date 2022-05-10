package p530d.p531a.p532v0;

import io.grpc.MethodDescriptor;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4924j;
import p530d.p531a.AbstractC9227f;
import p530d.p531a.AbstractC9251i0;
import p530d.p531a.AbstractC9618y;
import p530d.p531a.C9222d;
import p530d.p531a.C9625z;
import p530d.p531a.p532v0.C9433n;
/* renamed from: d.a.v0.c1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/c1.class */
public final class C9336c1 extends AbstractC9251i0 implements AbstractC9618y<Object> {

    /* renamed from: a */
    public C9453p0 f35978a;

    /* renamed from: b */
    public final C9625z f35979b;

    /* renamed from: c */
    public final String f35980c;

    /* renamed from: d */
    public final Executor f35981d;

    /* renamed from: e */
    public final ScheduledExecutorService f35982e;

    /* renamed from: f */
    public final C9390l f35983f;

    /* renamed from: g */
    public final C9433n.AbstractC9443f f35984g;

    static {
        Logger.getLogger(C9336c1.class.getName());
    }

    @Override // p530d.p531a.AbstractC9225e
    /* renamed from: a */
    public <RequestT, ResponseT> AbstractC9227f<RequestT, ResponseT> mo359a(MethodDescriptor<RequestT, ResponseT> methodDescriptor, C9222d dVar) {
        return new C9433n(methodDescriptor, dVar.m3128e() == null ? this.f35981d : dVar.m3128e(), dVar, this.f35984g, this.f35982e, this.f35983f, false);
    }

    @Override // p530d.p531a.AbstractC9225e
    /* renamed from: a */
    public String mo360a() {
        return this.f35980c;
    }

    @Override // p530d.p531a.AbstractC9224d0
    /* renamed from: b */
    public C9625z mo424b() {
        return this.f35979b;
    }

    /* renamed from: c */
    public C9453p0 m2911c() {
        return this.f35978a;
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24814a("logId", this.f35979b.m2161a());
        a.m24813a("authority", this.f35980c);
        return a.toString();
    }
}
