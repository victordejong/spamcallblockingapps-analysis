package p081h.p203i.p204a.p224e.p285m.p287b;

import com.google.android.gms.measurement.internal.zzh;
import com.google.android.gms.measurement.internal.zzl;
import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: h.i.a.e.m.b.d1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/d1.class */
public final class CallableC8962d1 implements Callable<List<zzl>> {

    /* renamed from: a */
    public final /* synthetic */ zzh f20267a;

    /* renamed from: b */
    public final /* synthetic */ String f20268b;

    /* renamed from: c */
    public final /* synthetic */ String f20269c;

    /* renamed from: d */
    public final /* synthetic */ BinderC9065u0 f20270d;

    public CallableC8962d1(BinderC9065u0 u0Var, zzh zzhVar, String str, String str2) {
        this.f20270d = u0Var;
        this.f20267a = zzhVar;
        this.f20268b = str;
        this.f20269c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzl> call() throws Exception {
        C9061t3 t3Var;
        C9061t3 t3Var2;
        t3Var = this.f20270d.f20677a;
        t3Var.m16154x();
        t3Var2 = this.f20270d.f20677a;
        return t3Var2.m16166l().m16409b(this.f20267a.f7158a, this.f20268b, this.f20269c);
    }
}
