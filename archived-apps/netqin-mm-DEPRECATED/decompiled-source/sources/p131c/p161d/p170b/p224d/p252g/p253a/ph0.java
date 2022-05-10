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
/* renamed from: c.d.b.d.g.a.ph0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ph0.class */
public final class ph0 extends bi0<zzxc> {

    /* renamed from: b */
    public final /* synthetic */ Context f14543b;

    /* renamed from: c */
    public final /* synthetic */ zzvn f14544c;

    /* renamed from: d */
    public final /* synthetic */ String f14545d;

    /* renamed from: e */
    public final /* synthetic */ zzanb f14546e;

    /* renamed from: f */
    public final /* synthetic */ zzvx f14547f;

    public ph0(zzvx zzvxVar, Context context, zzvn zzvnVar, String str, zzanb zzanbVar) {
        this.f14547f = zzvxVar;
        this.f14543b = context;
        this.f14544c = zzvnVar;
        this.f14545d = str;
        this.f14546e = zzanbVar;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxc mo26004a() {
        zzvx.m11182a(this.f14543b, "banner");
        return new zzzs();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxc mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11131b(ObjectWrapper.m17020a(this.f14543b), this.f14544c, this.f14545d, this.f14546e, 202510000);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzxc mo26002b() throws RemoteException {
        zzve zzveVar;
        zzveVar = this.f14547f.f29061a;
        return zzveVar.m11204a(this.f14543b, this.f14544c, this.f14545d, this.f14546e, 1);
    }
}
