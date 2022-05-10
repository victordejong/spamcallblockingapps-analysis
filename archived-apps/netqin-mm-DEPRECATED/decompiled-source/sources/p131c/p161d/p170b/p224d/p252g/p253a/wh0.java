package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzanb;
import com.google.android.gms.internal.ads.zzvf;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzwz;
import com.google.android.gms.internal.ads.zzxp;
import com.google.android.gms.internal.ads.zzzo;
/* renamed from: c.d.b.d.g.a.wh0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/wh0.class */
public final class wh0 extends bi0<zzwz> {

    /* renamed from: b */
    public final /* synthetic */ Context f15948b;

    /* renamed from: c */
    public final /* synthetic */ String f15949c;

    /* renamed from: d */
    public final /* synthetic */ zzanb f15950d;

    /* renamed from: e */
    public final /* synthetic */ zzvx f15951e;

    public wh0(zzvx zzvxVar, Context context, String str, zzanb zzanbVar) {
        this.f15951e = zzvxVar;
        this.f15948b = context;
        this.f15949c = str;
        this.f15950d = zzanbVar;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzwz mo26004a() {
        zzvx.m11182a(this.f15948b, "native_ad");
        return new zzzo();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzwz mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11134a(ObjectWrapper.m17020a(this.f15948b), this.f15949c, this.f15950d, 202510000);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzwz mo26002b() throws RemoteException {
        zzvf zzvfVar;
        zzvfVar = this.f15951e.f29062b;
        return zzvfVar.m11203a(this.f15948b, this.f15949c, this.f15950d);
    }
}
