package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzaco;
import com.google.android.gms.internal.ads.zzatk;
import com.google.android.gms.internal.ads.zzatl;
import com.google.android.gms.internal.ads.zzatn;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.g.a.t3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/t3.class */
public final class CallableC4053t3 implements Callable<zzatl> {

    /* renamed from: a */
    public final /* synthetic */ Context f15343a;

    /* renamed from: b */
    public final /* synthetic */ zzatn f15344b;

    public CallableC4053t3(zzatn zzatnVar, Context context) {
        this.f15344b = zzatnVar;
        this.f15343a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ zzatl call() throws Exception {
        WeakHashMap weakHashMap;
        zzatl zzatlVar;
        WeakHashMap weakHashMap2;
        weakHashMap = this.f15344b.f24510a;
        C4090u3 u3Var = (C4090u3) weakHashMap.get(this.f15343a);
        if (u3Var != null) {
            if (!(u3Var.f15444a + zzaco.f23965a.mo16862a().longValue() < zzp.m17962j().mo17091b())) {
                zzatlVar = new zzatk(this.f15343a, u3Var.f15445b).m16366a();
                weakHashMap2 = this.f15344b.f24510a;
                weakHashMap2.put(this.f15343a, new C4090u3(this.f15344b, zzatlVar));
                return zzatlVar;
            }
        }
        zzatlVar = new zzatk(this.f15343a).m16366a();
        weakHashMap2 = this.f15344b.f24510a;
        weakHashMap2.put(this.f15343a, new C4090u3(this.f15344b, zzatlVar));
        return zzatlVar;
    }
}
