package p459j.p460a.p572v0.p575e;

import java.util.Arrays;
import kotlinx.coroutines.Dispatchers;
import okhttp3.Interceptor;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p513i.AbstractC12402b;
import p459j.p460a.p513i.p514h.C12413b;
import p459j.p460a.p582w0.C14022h3;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p655o.C15300s;
import p655o.p656x.p657a.C15310a;
/* renamed from: j.a.v0.e.b */
/* loaded from: classes3-dex2jar.jar:j/a/v0/e/b.class */
public final class C13727b extends AbstractC12402b<AbstractC13726a> {

    /* renamed from: b */
    public final long f30825b;

    public C13727b(long j) {
        this.f30825b = j;
    }

    public /* synthetic */ C13727b(long j, int i, C15145g gVar) {
        this((i & 1) != 0 ? 30L : j);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p459j.p460a.p513i.AbstractC12402b
    /* renamed from: a */
    public AbstractC13726a mo3584a() {
        C14022h3 h3Var = C14022h3.f31458a;
        String e = m3582e();
        long j = this.f30825b;
        Interceptor[] interceptorArr = {C12413b.f27989a.m6226a(), C12413b.f27989a.m6224b()};
        C15300s.C15302b bVar = new C15300s.C15302b();
        bVar.m76a(e);
        bVar.m72a(h3Var.m2770a(j, (Interceptor[]) Arrays.copyOf(interceptorArr, interceptorArr.length)));
        bVar.m75a(C15310a.m46a());
        return (AbstractC13726a) bVar.m77a().m87a(AbstractC13726a.class);
    }

    @Override // p459j.p460a.p513i.AbstractC12402b
    /* renamed from: b */
    public AbstractC15049g mo3583b() {
        return Dispatchers.getIO();
    }

    /* renamed from: e */
    public String m3582e() {
        String str = C12378a.f27903h;
        C15149k.m383a((Object) str, "ApiCall.GATEWAY");
        return str;
    }
}
