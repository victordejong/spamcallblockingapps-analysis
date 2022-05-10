package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzaki;
import com.google.android.gms.internal.ads.zzakr;
import com.google.android.gms.internal.ads.zzalm;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbck;
/* renamed from: c.d.b.d.g.a.v1 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v1.class */
public final class C4125v1 implements zzbck<zzaki> {

    /* renamed from: a */
    public final /* synthetic */ zzalm f15689a;

    /* renamed from: b */
    public final /* synthetic */ zzakr f15690b;

    public C4125v1(zzakr zzakrVar, zzalm zzalmVar) {
        this.f15690b = zzakrVar;
        this.f15689a = zzalmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    /* renamed from: a */
    public final /* synthetic */ void mo15830a(zzaki zzakiVar) {
        Object obj;
        zzalm zzalmVar;
        zzalm zzalmVar2;
        zzalm zzalmVar3;
        obj = this.f15690b.f24158a;
        synchronized (obj) {
            this.f15690b.f24165h = 0;
            zzalmVar = this.f15690b.f24164g;
            if (zzalmVar != null) {
                zzalm zzalmVar4 = this.f15689a;
                zzalmVar2 = this.f15690b.f24164g;
                if (zzalmVar4 != zzalmVar2) {
                    zzayp.m16153g("New JS engine is loaded, marking previous one as destroyable.");
                    zzalmVar3 = this.f15690b.f24164g;
                    zzalmVar3.m16675e();
                }
            }
            this.f15690b.f24164g = this.f15689a;
        }
    }
}
