package p033i.p034a.p046d.p050e;

import p033i.p034a.p046d.p050e.p052b0.AbstractC0371c;
import p033i.p034a.p046d.p050e.p053c0.AbstractC0375k;
import p033i.p034a.p046d.p050e.p054e0.AbstractC0384b;
import p033i.p034a.p046d.p050e.p054e0.AbstractC0385c;
/* renamed from: i.a.d.e.z */
/* loaded from: classes2-dex2jar.jar:i/a/d/e/z.class */
class C0402z {

    /* renamed from: a */
    private final C0393m f942a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0402z() {
        this(new C0393m());
    }

    C0402z(C0393m mVar) {
        this.f942a = mVar;
    }

    /* renamed from: a */
    C0397q m234a(AbstractC0399u uVar, AbstractC0400v vVar, AbstractC0371c cVar) {
        AbstractC0385c a = this.f942a.m256a(cVar);
        AbstractC0384b a2 = a.m281a();
        if (AbstractC0375k.EnumC0376a.CUMULATIVE == a.m279c()) {
            return C0397q.m246c(cVar, uVar, vVar, a2);
        }
        if (AbstractC0375k.EnumC0376a.DELTA == a.m279c()) {
            return C0397q.m245d(cVar, uVar, vVar, a2);
        }
        throw new IllegalStateException("unsupported Temporality: " + a.m279c());
    }
}
