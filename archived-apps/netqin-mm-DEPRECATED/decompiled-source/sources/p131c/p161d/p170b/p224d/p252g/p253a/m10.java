package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdya;
import com.google.android.gms.internal.ads.zzdzc;
/* renamed from: c.d.b.d.g.a.m10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/m10.class */
public final class m10<I, O> extends n10<I, O, zzdya<? super I, ? extends O>, zzdzc<? extends O>> {
    public m10(zzdzc<? extends I> zzdzcVar, zzdya<? super I, ? extends O> zzdyaVar) {
        super(zzdzcVar, zzdyaVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.n10
    /* renamed from: a */
    public final /* synthetic */ Object mo26612a(Object obj, Object obj2) throws Exception {
        zzdya zzdyaVar = (zzdya) obj;
        zzdzc<O> d = zzdyaVar.mo13006d(obj2);
        zzdwd.m13094a(d, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzdyaVar);
        return d;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.n10
    /* renamed from: c */
    public final /* synthetic */ void mo26611c(Object obj) {
        m13064a((zzdzc) ((zzdzc) obj));
    }
}
