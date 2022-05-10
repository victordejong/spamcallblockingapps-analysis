package p131c.p161d.p170b.p224d.p252g.p253a;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzaxg;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzdaq;
import com.google.android.gms.internal.ads.zzdbm;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzwm;
/* renamed from: c.d.b.d.g.a.ds */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ds.class */
public final class C3482ds implements zzdyr<zzdbm> {

    /* renamed from: a */
    public final /* synthetic */ zzaxg f12770a;

    /* renamed from: b */
    public final /* synthetic */ zzdaq f12771b;

    public C3482ds(zzdaq zzdaqVar, zzaxg zzaxgVar) {
        this.f12771b = zzdaqVar;
        this.f12770a = zzaxgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        try {
            zzaxg zzaxgVar = this.f12770a;
            String valueOf = String.valueOf(th.getMessage());
            zzaxgVar.mo16215h(valueOf.length() != 0 ? "Internal error. ".concat(valueOf) : new String("Internal error. "));
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(zzdbm zzdbmVar) {
        zzbbx zzbbxVar;
        zzdbm zzdbmVar2 = zzdbmVar;
        try {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23717N3)).booleanValue()) {
                zzbbxVar = this.f12771b.f26854d;
                if (zzbbxVar.f24761c >= ((Integer) zzwm.m11166e().m16921a(zzabb.f23727P3)).intValue()) {
                    if (zzdbmVar2 == null) {
                        this.f12770a.mo16217a(null, null, null);
                        return;
                    } else {
                        this.f12770a.mo16217a(zzdbmVar2.f26878a, zzdbmVar2.f26879b, zzdbmVar2.f26880c);
                        return;
                    }
                }
            }
            if (zzdbmVar2 == null) {
                this.f12770a.mo16216c(null, null);
            } else {
                this.f12770a.mo16216c(zzdbmVar2.f26878a, zzdbmVar2.f26879b);
            }
        } catch (RemoteException e) {
            zzbbq.m15855b("", e);
        }
    }
}
