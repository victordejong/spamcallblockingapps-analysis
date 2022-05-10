package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwd;
import com.google.android.gms.internal.ads.zzdya;
import com.google.android.gms.internal.ads.zzdzc;
import java.lang.Throwable;
/* renamed from: c.d.b.d.g.a.l10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/l10.class */
public final class l10<V, X extends Throwable> extends j10<V, X, zzdya<? super X, ? extends V>, zzdzc<? extends V>> {
    public l10(zzdzc<? extends V> zzdzcVar, Class<X> cls, zzdya<? super X, ? extends V> zzdyaVar) {
        super(zzdzcVar, cls, zzdyaVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.j10
    /* renamed from: a */
    public final /* synthetic */ Object mo26706a(Object obj, Throwable th) throws Exception {
        zzdya zzdyaVar = (zzdya) obj;
        zzdzc d = zzdyaVar.mo13006d(th);
        zzdwd.m13094a(d, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzdyaVar);
        return d;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.j10
    /* renamed from: c */
    public final /* synthetic */ void mo26705c(Object obj) {
        m13064a((zzdzc) ((zzdzc) obj));
    }
}
