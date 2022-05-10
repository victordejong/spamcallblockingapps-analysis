package p530d.p531a.p532v0;

import java.net.URI;
import p530d.p531a.AbstractC9271l0;
/* renamed from: d.a.v0.d1 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/d1.class */
public final class C9341d1 extends AbstractC9271l0.AbstractC9276d {

    /* renamed from: e */
    public final AbstractC9271l0.AbstractC9276d f35991e;

    /* renamed from: f */
    public final String f35992f;

    /* renamed from: d.a.v0.d1$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/d1$a.class */
    public class C9342a extends AbstractC9366g0 {
        public C9342a(AbstractC9271l0 l0Var) {
            super(l0Var);
        }

        @Override // p530d.p531a.AbstractC9271l0
        /* renamed from: a */
        public String mo572a() {
            return C9341d1.this.f35992f;
        }
    }

    public C9341d1(AbstractC9271l0.AbstractC9276d dVar, String str) {
        this.f35991e = dVar;
        this.f35992f = str;
    }

    @Override // p530d.p531a.AbstractC9271l0.AbstractC9276d
    /* renamed from: a */
    public AbstractC9271l0 mo2869a(URI uri, AbstractC9271l0.C9273b bVar) {
        AbstractC9271l0 a = this.f35991e.mo2869a(uri, bVar);
        if (a == null) {
            return null;
        }
        return new C9342a(a);
    }

    @Override // p530d.p531a.AbstractC9271l0.AbstractC9276d
    /* renamed from: a */
    public String mo2870a() {
        return this.f35991e.mo2870a();
    }
}
