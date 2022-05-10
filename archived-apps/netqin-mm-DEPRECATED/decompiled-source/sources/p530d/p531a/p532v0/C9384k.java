package p530d.p531a.p532v0;

import io.grpc.ChannelLogger;
import io.grpc.MethodDescriptor;
import io.grpc.Status;
import java.net.SocketAddress;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9218c;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.p532v0.AbstractC9477q;
/* renamed from: d.a.v0.k */
/* loaded from: classes2-dex2jar.jar:d/a/v0/k.class */
public final class C9384k implements AbstractC9477q {

    /* renamed from: a */
    public final AbstractC9477q f36049a;

    /* renamed from: b */
    public final Executor f36050b;

    /* renamed from: d.a.v0.k$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/k$a.class */
    public class C9385a extends AbstractC9344e0 {

        /* renamed from: a */
        public final AbstractC9493s f36051a;

        /* renamed from: d.a.v0.k$a$a */
        /* loaded from: classes2-dex2jar.jar:d/a/v0/k$a$a.class */
        public class C9386a extends AbstractC9218c.AbstractC9220b {
            public C9386a(C9385a aVar, MethodDescriptor methodDescriptor, C9222d dVar) {
            }
        }

        public C9385a(AbstractC9493s sVar, String str) {
            C4933n.m24794a(sVar, "delegate");
            this.f36051a = sVar;
            C4933n.m24794a(str, "authority");
        }

        @Override // p530d.p531a.p532v0.AbstractC9344e0, p530d.p531a.p532v0.AbstractC9451p
        /* renamed from: a */
        public AbstractC9448o mo520a(MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9222d dVar) {
            AbstractC9218c c = dVar.m3130c();
            if (c == null) {
                return this.f36051a.mo520a(methodDescriptor, k0Var, dVar);
            }
            C9556z0 z0Var = new C9556z0(this.f36051a, methodDescriptor, k0Var, dVar);
            try {
                c.m3141a(new C9386a(this, methodDescriptor, dVar), (Executor) C4924j.m24819a(dVar.m3128e(), C9384k.this.f36050b), z0Var);
            } catch (Throwable th) {
                z0Var.m2486a(Status.f37993k.m609b("Credentials should use fail() instead of throwing exceptions").m612a(th));
            }
            return z0Var.m2488a();
        }

        @Override // p530d.p531a.p532v0.AbstractC9344e0
        /* renamed from: a */
        public AbstractC9493s mo2678a() {
            return this.f36051a;
        }
    }

    public C9384k(AbstractC9477q qVar, Executor executor) {
        C4933n.m24794a(qVar, "delegate");
        this.f36049a = qVar;
        C4933n.m24794a(executor, "appExecutor");
        this.f36050b = executor;
    }

    @Override // p530d.p531a.p532v0.AbstractC9477q
    /* renamed from: T1 */
    public ScheduledExecutorService mo311T1() {
        return this.f36049a.mo311T1();
    }

    @Override // p530d.p531a.p532v0.AbstractC9477q
    /* renamed from: a */
    public AbstractC9493s mo310a(SocketAddress socketAddress, AbstractC9477q.C9478a aVar, ChannelLogger channelLogger) {
        return new C9385a(this.f36049a.mo310a(socketAddress, aVar, channelLogger), aVar.m2660a());
    }

    @Override // p530d.p531a.p532v0.AbstractC9477q, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f36049a.close();
    }
}
