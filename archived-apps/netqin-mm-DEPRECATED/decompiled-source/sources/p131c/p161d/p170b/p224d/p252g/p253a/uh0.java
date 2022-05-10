package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzvn;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzxc;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzzs;
/* renamed from: c.d.b.d.g.a.uh0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/uh0.class */
public final class uh0 extends bi0<zzxc> {

    /* renamed from: b */
    public final /* synthetic */ Context f15643b;

    /* renamed from: c */
    public final /* synthetic */ zzvn f15644c;

    /* renamed from: d */
    public final /* synthetic */ String f15645d;

    /* renamed from: e */
    public final /* synthetic */ zzvx f15646e;

    public uh0(zzvx zzvxVar, Context context, zzvn zzvnVar, String str) {
        this.f15646e = zzvxVar;
        this.f15643b = context;
        this.f15644c = zzvnVar;
        this.f15645d = str;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxc mo26004a() {
        zzvx.m11182a(this.f15643b, AppLovinEventTypes.USER_EXECUTED_SEARCH);
        return new zzzs();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzxc mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11136a(ObjectWrapper.m17020a(this.f15643b), this.f15644c, this.f15645d, 202510000);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzxc mo26002b() throws RemoteException {
        zzve zzveVar;
        zzveVar = this.f15646e.f29061a;
        return zzveVar.m11204a(this.f15643b, this.f15644c, this.f15645d, null, 3);
    }
}
