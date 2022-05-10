package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzcas;
import com.google.android.gms.internal.ads.zzctc;
import com.google.android.gms.internal.ads.zzcxl;
import com.google.android.gms.internal.ads.zzdnv;
import com.google.android.gms.internal.ads.zzdog;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.jq */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/jq.class */
public final class C3703jq implements zzcas {

    /* renamed from: a */
    public final /* synthetic */ zzdog f13809a;

    /* renamed from: b */
    public final /* synthetic */ zzdnv f13810b;

    /* renamed from: c */
    public final /* synthetic */ zzctc f13811c;

    /* renamed from: d */
    public final /* synthetic */ zzcxl f13812d;

    public C3703jq(zzcxl zzcxlVar, zzdog zzdogVar, zzdnv zzdnvVar, zzctc zzctcVar) {
        this.f13812d = zzcxlVar;
        this.f13809a = zzdogVar;
        this.f13810b = zzdnvVar;
        this.f13811c = zzctcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    /* renamed from: Q */
    public final void mo14858Q() {
        Executor executor;
        executor = this.f13812d.f26707b;
        final zzdog zzdogVar = this.f13809a;
        final zzdnv zzdnvVar = this.f13810b;
        final zzctc zzctcVar = this.f13811c;
        executor.execute(new Runnable(this, zzdogVar, zzdnvVar, zzctcVar) { // from class: c.d.b.d.g.a.mq

            /* renamed from: a */
            public final C3703jq f14192a;

            /* renamed from: b */
            public final zzdog f14193b;

            /* renamed from: c */
            public final zzdnv f14194c;

            /* renamed from: d */
            public final zzctc f14195d;

            {
                this.f14192a = this;
                this.f14193b = zzdogVar;
                this.f14194c = zzdnvVar;
                this.f14195d = zzctcVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C3703jq jqVar = this.f14192a;
                zzdog zzdogVar2 = this.f14193b;
                zzdnv zzdnvVar2 = this.f14194c;
                zzctc zzctcVar2 = this.f14195d;
                zzcxl zzcxlVar = jqVar.f13812d;
                zzcxl.m13805c(zzdogVar2, zzdnvVar2, zzctcVar2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcas
    /* renamed from: a */
    public final void mo14857a(int i) {
        String valueOf = String.valueOf(this.f13811c.f26496a);
        zzbbq.m15852d(valueOf.length() != 0 ? "Fail to initialize adapter ".concat(valueOf) : new String("Fail to initialize adapter "));
    }
}
