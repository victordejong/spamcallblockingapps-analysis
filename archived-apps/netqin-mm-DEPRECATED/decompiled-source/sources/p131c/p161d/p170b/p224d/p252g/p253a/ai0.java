package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzaaa;
import com.google.android.gms.internal.ads.zzanb;
import com.google.android.gms.internal.ads.zzaud;
import com.google.android.gms.internal.ads.zzauk;
import com.google.android.gms.internal.ads.zzvx;
import com.google.android.gms.internal.ads.zzxp;
import com.mopub.common.AdType;
/* renamed from: c.d.b.d.g.a.ai0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ai0.class */
public final class ai0 extends bi0<zzaud> {

    /* renamed from: b */
    public final /* synthetic */ Context f12293b;

    /* renamed from: c */
    public final /* synthetic */ zzanb f12294c;

    /* renamed from: d */
    public final /* synthetic */ zzvx f12295d;

    public ai0(zzvx zzvxVar, Context context, zzanb zzanbVar) {
        this.f12295d = zzvxVar;
        this.f12293b = context;
        this.f12294c = zzanbVar;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzaud mo26004a() {
        zzvx.m11182a(this.f12293b, AdType.REWARDED_VIDEO);
        return new zzaaa();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: a */
    public final /* synthetic */ zzaud mo26003a(zzxp zzxpVar) throws RemoteException {
        return zzxpVar.mo11129c(ObjectWrapper.m17020a(this.f12293b), this.f12294c, 202510000);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bi0
    /* renamed from: b */
    public final /* synthetic */ zzaud mo26002b() throws RemoteException {
        zzauk zzaukVar;
        zzaukVar = this.f12295d.f29065e;
        return zzaukVar.m16338a(this.f12293b, this.f12294c);
    }
}
