package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzdaa;
import com.google.android.gms.internal.ads.zzdag;
/* renamed from: c.d.b.d.g.a.lr */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/lr.class */
public final class C3778lr implements zzdag<zzbqo> {

    /* renamed from: a */
    public final /* synthetic */ zzdaa f13998a;

    public C3778lr(zzdaa zzdaaVar) {
        this.f13998a = zzdaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdag
    /* renamed from: a */
    public final void mo13703a() {
        synchronized (this.f13998a) {
            this.f13998a.f26837d = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdag
    public final /* synthetic */ void onSuccess(zzbqo zzbqoVar) {
        zzbqo zzbqoVar2 = zzbqoVar;
        synchronized (this.f13998a) {
            this.f13998a.f26837d = false;
            this.f13998a.f26836c = zzbqoVar2.m15166d();
            zzbqoVar2.mo14749b();
        }
    }
}
