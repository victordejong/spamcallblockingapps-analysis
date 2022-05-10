package p530d.p531a.p538y0;

import io.grpc.stub.ClientCalls;
import p530d.p531a.AbstractC9225e;
import p530d.p531a.C9222d;
import p530d.p531a.p538y0.AbstractC9619a;
import p530d.p531a.p538y0.AbstractC9620b;
/* renamed from: d.a.y0.a */
/* loaded from: classes2-dex2jar.jar:d/a/y0/a.class */
public abstract class AbstractC9619a<S extends AbstractC9619a<S>> extends AbstractC9620b<S> {
    public AbstractC9619a(AbstractC9225e eVar, C9222d dVar) {
        super(eVar, dVar);
    }

    /* renamed from: a */
    public static <T extends AbstractC9620b<T>> T m2172a(AbstractC9620b.AbstractC9621a<T> aVar, AbstractC9225e eVar) {
        return (T) m2171a(aVar, eVar, C9222d.f35769k);
    }

    /* renamed from: a */
    public static <T extends AbstractC9620b<T>> T m2171a(AbstractC9620b.AbstractC9621a<T> aVar, AbstractC9225e eVar, C9222d dVar) {
        return aVar.mo2166a(eVar, dVar.m3136a((C9222d.C9223a<C9222d.C9223a<ClientCalls.StubType>>) ClientCalls.f38313b, (C9222d.C9223a<ClientCalls.StubType>) ClientCalls.StubType.BLOCKING));
    }
}
