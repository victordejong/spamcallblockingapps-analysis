package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzair;
import com.google.android.gms.internal.ads.zzbcg;
import com.google.android.gms.internal.ads.zzcne;
import com.google.android.gms.internal.ads.zzcnu;
/* renamed from: c.d.b.d.g.a.rl */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/rl.class */
public final class BinderC3997rl extends zzair {

    /* renamed from: a */
    public final /* synthetic */ Object f15025a;

    /* renamed from: b */
    public final /* synthetic */ String f15026b;

    /* renamed from: c */
    public final /* synthetic */ long f15027c;

    /* renamed from: d */
    public final /* synthetic */ zzbcg f15028d;

    /* renamed from: e */
    public final /* synthetic */ zzcnu f15029e;

    public BinderC3997rl(zzcnu zzcnuVar, Object obj, String str, long j, zzbcg zzbcgVar) {
        this.f15029e = zzcnuVar;
        this.f15025a = obj;
        this.f15026b = str;
        this.f15027c = j;
        this.f15028d = zzbcgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzais
    /* renamed from: Q */
    public final void mo16735Q() {
        zzcne zzcneVar;
        synchronized (this.f15025a) {
            this.f15029e.m13987a(this.f15026b, true, "", (int) (zzp.m17962j().mo17092a() - this.f15027c));
            zzcneVar = this.f15029e.f26328k;
            zzcneVar.m14027b(this.f15026b);
            this.f15028d.m15835a((zzbcg) true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzais
    /* renamed from: e */
    public final void mo16734e(String str) {
        zzcne zzcneVar;
        synchronized (this.f15025a) {
            this.f15029e.m13987a(this.f15026b, false, str, (int) (zzp.m17962j().mo17092a() - this.f15027c));
            zzcneVar = this.f15029e.f26328k;
            zzcneVar.m14029a(this.f15026b, "error");
            this.f15028d.m15835a((zzbcg) false);
        }
    }
}
