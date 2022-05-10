package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzdxu;
import com.google.android.gms.internal.ads.zzdyg;
import com.google.android.gms.internal.ads.zzdyh;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* renamed from: c.d.b.d.g.a.v10 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/v10.class */
public final class v10<V> extends zzdxu<Object, V> {

    /* renamed from: p */
    public zzdyg<?> f15691p;

    public v10(zzdwk<? extends zzdzc<?>> zzdwkVar, boolean z, Executor executor, Callable<V> callable) {
        super(zzdwkVar, z, false);
        this.f15691p = new zzdyh(this, callable, executor);
        m13028k();
    }

    @Override // com.google.android.gms.internal.ads.zzdxu
    /* renamed from: a */
    public final void mo13041a(int i, Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzdxu
    /* renamed from: a */
    public final void mo13038a(zzdxu.zza zzaVar) {
        super.mo13038a(zzaVar);
        if (zzaVar == zzdxu.zza.OUTPUT_FUTURE_DONE) {
            this.f15691p = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdxq
    /* renamed from: c */
    public final void mo13055c() {
        zzdyg<?> zzdygVar = this.f15691p;
        if (zzdygVar != null) {
            zzdygVar.interruptTask();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdxu
    /* renamed from: l */
    public final void mo13027l() {
        zzdyg<?> zzdygVar = this.f15691p;
        if (zzdygVar != null) {
            zzdygVar.execute();
        }
    }
}
