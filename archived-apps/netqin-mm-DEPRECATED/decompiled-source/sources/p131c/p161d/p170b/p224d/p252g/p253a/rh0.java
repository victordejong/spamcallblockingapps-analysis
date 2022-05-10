package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzanb;
import com.google.android.gms.internal.ads.zzauy;
import com.google.android.gms.internal.ads.zzavo;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzzy;
/* renamed from: c.d.b.d.g.a.rh0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/rh0.class */
public final class rh0 extends bi0<zzauy> {

    /* renamed from: b */
    public final /* synthetic */ Context f15011b;

    /* renamed from: c */
    public final /* synthetic */ String f15012c;

    /* renamed from: d */
    public final /* synthetic */ zzanb f15013d;

    public rh0(zzvx zzvxVar, Context context, String str, zzanb zzanbVar) {
        this.f15011b = context;
        this.f15012c = str;
        this.f15013d = zzanbVar;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzauy mo26004a() {
        zzvx.m11182a(this.f15011b, "rewarded");
        return new zzzy();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzauy mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11130b(ObjectWrapper.m17020a(this.f15011b), this.f15012c, this.f15013d, 202510000);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzauy mo26002b() throws RemoteException {
        return zzavo.m16294a(this.f15011b, this.f15012c, this.f15013d);
    }
}
