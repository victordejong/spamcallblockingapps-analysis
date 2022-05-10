package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzanb;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzxc;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzzs;
/* renamed from: c.d.b.d.g.a.vh0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/vh0.class */
public final class vh0 extends bi0<zzxc> {

    /* renamed from: b */
    public final /* synthetic */ Context f15864b;

    /* renamed from: c */
    public final /* synthetic */ zzvn f15865c;

    /* renamed from: d */
    public final /* synthetic */ String f15866d;

    /* renamed from: e */
    public final /* synthetic */ zzanb f15867e;

    /* renamed from: f */
    public final /* synthetic */ zzvx f15868f;

    public vh0(zzvx zzvxVar, Context context, zzvn zzvnVar, String str, zzanb zzanbVar) {
        this.f15868f = zzvxVar;
        this.f15864b = context;
        this.f15865c = zzvnVar;
        this.f15866d = str;
        this.f15867e = zzanbVar;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxc mo26004a() {
        zzvx.m11182a(this.f15864b, "app_open");
        return new zzzs();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxc mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11135a(ObjectWrapper.m17020a(this.f15864b), this.f15865c, this.f15866d, this.f15867e, 202510000);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzxc mo26002b() throws RemoteException {
        zzve zzveVar;
        zzveVar = this.f15868f.f29061a;
        return zzveVar.m11204a(this.f15864b, this.f15865c, this.f15866d, this.f15867e, 4);
    }
}
