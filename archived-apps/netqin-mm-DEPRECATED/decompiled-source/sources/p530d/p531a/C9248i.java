package p530d.p531a;

import io.grpc.MethodDescriptor;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9227f;
/* renamed from: d.a.i */
/* loaded from: classes2-dex2jar.jar:d/a/i.class */
public class C9248i {

    /* renamed from: d.a.i$a */
    /* loaded from: classes2-dex2jar.jar:d/a/i$a.class */
    public class C9249a extends AbstractC9227f<Object, Object> {
        @Override // p530d.p531a.AbstractC9227f
        /* renamed from: a */
        public void mo2763a() {
        }

        @Override // p530d.p531a.AbstractC9227f
        /* renamed from: a */
        public void mo2762a(int i) {
        }

        @Override // p530d.p531a.AbstractC9227f
        /* renamed from: a */
        public void mo2162a(AbstractC9227f.AbstractC9228a<Object> aVar, C9260k0 k0Var) {
        }

        @Override // p530d.p531a.AbstractC9227f
        /* renamed from: a */
        public void mo2746a(Object obj) {
        }

        @Override // p530d.p531a.AbstractC9227f
        /* renamed from: a */
        public void mo2745a(String str, Throwable th) {
        }
    }

    /* renamed from: d.a.i$b */
    /* loaded from: classes2-dex2jar.jar:d/a/i$b.class */
    public static class C9250b extends AbstractC9225e {

        /* renamed from: a */
        public final AbstractC9225e f35806a;

        /* renamed from: b */
        public final AbstractC9242g f35807b;

        public C9250b(AbstractC9225e eVar, AbstractC9242g gVar) {
            this.f35806a = eVar;
            C4933n.m24794a(gVar, "interceptor");
            this.f35807b = gVar;
        }

        public /* synthetic */ C9250b(AbstractC9225e eVar, AbstractC9242g gVar, C9245h hVar) {
            this(eVar, gVar);
        }

        @Override // p530d.p531a.AbstractC9225e
        /* renamed from: a */
        public <ReqT, RespT> AbstractC9227f<ReqT, RespT> mo359a(MethodDescriptor<ReqT, RespT> methodDescriptor, C9222d dVar) {
            return this.f35807b.mo2163a(methodDescriptor, dVar, this.f35806a);
        }

        @Override // p530d.p531a.AbstractC9225e
        /* renamed from: a */
        public String mo360a() {
            return this.f35806a.mo360a();
        }
    }

    static {
        new C9249a();
    }

    /* renamed from: a */
    public static AbstractC9225e m3085a(AbstractC9225e eVar, List<? extends AbstractC9242g> list) {
        C4933n.m24794a(eVar, "channel");
        for (AbstractC9242g gVar : list) {
            eVar = new C9250b(eVar, gVar, null);
        }
        return eVar;
    }

    /* renamed from: a */
    public static AbstractC9225e m3084a(AbstractC9225e eVar, AbstractC9242g... gVarArr) {
        return m3085a(eVar, Arrays.asList(gVarArr));
    }
}
