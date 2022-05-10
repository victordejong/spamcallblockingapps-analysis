package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzdwx;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: c.d.b.d.g.a.t10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/t10.class */
public final class t10<V> extends u10<V, List<V>> {
    public t10(zzdwk<? extends zzdzc<? extends V>> zzdwkVar, boolean z) {
        super(zzdwkVar, true);
        m13028k();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.u10
    /* renamed from: a */
    public final /* synthetic */ Object mo26311a(List list) {
        ArrayList a = zzdwx.m13075a(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            w10 w10Var = (w10) it.next();
            a.add(w10Var != null ? w10Var.f15897a : null);
        }
        return Collections.unmodifiableList(a);
    }
}
