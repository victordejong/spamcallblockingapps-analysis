package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzbxq;
import com.google.android.gms.internal.ads.zzcjg;
import com.google.android.gms.internal.ads.zzcjj;
import com.google.android.gms.internal.ads.zzcjm;
import com.google.android.gms.internal.ads.zzctd;
import com.google.android.gms.internal.ads.zzdag;
import com.google.android.gms.internal.ads.zzdlv;
import com.google.android.gms.internal.ads.zzdmc;
import com.google.android.gms.internal.ads.zzdnb;
import com.google.android.gms.internal.ads.zzdox;
import com.google.android.gms.internal.ads.zzdpe;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzwm;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.ux */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ux.class */
public final class C4120ux implements zzdyr<zzcjg> {

    /* renamed from: a */
    public final /* synthetic */ zzdag f15681a;

    /* renamed from: b */
    public final /* synthetic */ C4268yx f15682b;

    /* renamed from: c */
    public final /* synthetic */ zzdnb f15683c;

    public C4120ux(zzdnb zzdnbVar, zzdag zzdagVar, C4268yx yxVar) {
        this.f15683c = zzdnbVar;
        this.f15681a = zzdagVar;
        this.f15682b = yxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        zzdlv zzdlvVar;
        zzdmc zzdmcVar;
        zzcjm a;
        Executor executor;
        zzdlvVar = this.f15683c.f27517e;
        zzcjj zzcjjVar = (zzcjj) zzdlvVar.mo13518a();
        final zzva a2 = zzcjjVar == null ? zzdpe.m13337a(th, (zzctd) null) : zzcjjVar.mo14140a().m15124a(th);
        synchronized (this.f15683c) {
            if (zzcjjVar != null) {
                zzcjjVar.mo14138b().mo13335a(a2);
                if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23801d4)).booleanValue()) {
                    executor = this.f15683c.f27514b;
                    executor.execute(new Runnable(this, a2) { // from class: c.d.b.d.g.a.wx

                        /* renamed from: a */
                        public final C4120ux f15978a;

                        /* renamed from: b */
                        public final zzva f15979b;

                        {
                            this.f15978a = this;
                            this.f15979b = a2;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            zzdmc zzdmcVar2;
                            C4120ux uxVar = this.f15978a;
                            zzva zzvaVar = this.f15979b;
                            zzdmcVar2 = uxVar.f15683c.f27516d;
                            zzdmcVar2.mo13335a(zzvaVar);
                        }
                    });
                }
            } else {
                zzdmcVar = this.f15683c.f27516d;
                zzdmcVar.mo13335a(a2);
                a = this.f15683c.m13488b(this.f15682b);
                a.mo14136a().mo14140a().m15120c().mo14078j();
            }
            zzdox.m13387a(a2.f28995a, th, "RewardedAdLoader.onFailure");
            this.f15681a.mo13703a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(zzcjg zzcjgVar) {
        zzdmc zzdmcVar;
        Executor executor;
        zzdmc zzdmcVar2;
        zzcjg zzcjgVar2 = zzcjgVar;
        synchronized (this.f15683c) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23801d4)).booleanValue()) {
                zzbxq f = zzcjgVar2.m15164f();
                zzdmcVar2 = this.f15683c.f27516d;
                f.m14962a(zzdmcVar2);
            }
            this.f15681a.onSuccess(zzcjgVar2);
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23801d4)).booleanValue()) {
                executor = this.f15683c.f27514b;
                executor.execute(new Runnable(this) { // from class: c.d.b.d.g.a.xx

                    /* renamed from: a */
                    public final C4120ux f16070a;

                    {
                        this.f16070a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdmc zzdmcVar3;
                        zzdmcVar3 = this.f16070a.f15683c.f27516d;
                        zzdmcVar3.mo13495x();
                    }
                });
            }
            zzdmcVar = this.f15683c.f27516d;
            zzdmcVar.mo13510a();
        }
    }
}
