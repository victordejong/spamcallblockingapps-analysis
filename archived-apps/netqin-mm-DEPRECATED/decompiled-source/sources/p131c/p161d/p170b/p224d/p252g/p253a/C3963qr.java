package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzabb;
import com.google.android.gms.internal.ads.zzbix;
import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbxq;
import com.google.android.gms.internal.ads.zzcda;
import com.google.android.gms.internal.ads.zzdac;
import com.google.android.gms.internal.ads.zzdag;
import com.google.android.gms.internal.ads.zzdai;
import com.google.android.gms.internal.ads.zzdox;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzva;
import com.google.android.gms.internal.ads.zzwm;
/* renamed from: c.d.b.d.g.a.qr */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/qr.class */
public final class C3963qr implements zzdyr<zzbqo> {

    /* renamed from: a */
    public final /* synthetic */ zzdag f14837a;

    /* renamed from: b */
    public final /* synthetic */ zzcda f14838b;

    /* renamed from: c */
    public final /* synthetic */ zzdai f14839c;

    public C3963qr(zzdai zzdaiVar, zzdag zzdagVar, zzcda zzcdaVar) {
        this.f14839c = zzdaiVar;
        this.f14837a = zzdagVar;
        this.f14838b = zzcdaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        zzbix zzbixVar;
        final zzva a = this.f14838b.mo14792a().m15124a(th);
        this.f14838b.mo14789b().mo13335a(a);
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23819g4)).booleanValue()) {
            zzbixVar = this.f14839c.f26843b;
            zzbixVar.mo15396a().execute(new Runnable(this, a) { // from class: c.d.b.d.g.a.sr

                /* renamed from: a */
                public final C3963qr f15318a;

                /* renamed from: b */
                public final zzva f15319b;

                {
                    this.f15318a = this;
                    this.f15319b = a;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    zzdac zzdacVar;
                    C3963qr qrVar = this.f15318a;
                    zzva zzvaVar = this.f15319b;
                    zzdacVar = qrVar.f14839c.f26845d;
                    zzdacVar.m13706e().mo13335a(zzvaVar);
                }
            });
        }
        zzdox.m13387a(a.f28995a, th, "NativeAdLoader.onFailure");
        this.f14837a.mo13703a();
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(zzbqo zzbqoVar) {
        zzbix zzbixVar;
        zzdac zzdacVar;
        zzbqo zzbqoVar2 = zzbqoVar;
        synchronized (this.f14839c) {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23819g4)).booleanValue()) {
                zzbxq f = zzbqoVar2.m15164f();
                zzdacVar = this.f14839c.f26845d;
                f.m14964a(zzdacVar.m13709b());
            }
            this.f14837a.onSuccess(zzbqoVar2);
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23819g4)).booleanValue()) {
                zzbixVar = this.f14839c.f26843b;
                zzbixVar.mo15396a().execute(new Runnable(this) { // from class: c.d.b.d.g.a.tr

                    /* renamed from: a */
                    public final C3963qr f15423a;

                    {
                        this.f15423a = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        zzdac zzdacVar2;
                        zzdacVar2 = this.f15423a.f14839c.f26845d;
                        zzdacVar2.m13707d().mo13495x();
                    }
                });
            }
        }
    }
}
