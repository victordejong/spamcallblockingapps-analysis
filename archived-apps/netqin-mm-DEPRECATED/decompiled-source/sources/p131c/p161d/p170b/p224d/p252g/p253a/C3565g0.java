package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.internal.ads.zzahq;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbgj;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.g0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/g0.class */
public final class C3565g0 implements zzahq<zzbgj> {
    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbgj zzbgjVar, Map map) {
        zzbgj zzbgjVar2 = zzbgjVar;
        if (zzbgjVar2.mo15601I() != null) {
            zzbgjVar2.mo15601I().mo11478z0();
        }
        zze O = zzbgjVar2.mo15595O();
        if (O != null) {
            O.m18018Q1();
            return;
        }
        zze l = zzbgjVar2.mo15555l();
        if (l != null) {
            l.m18018Q1();
        } else {
            zzbbq.m15852d("A GMSG tried to close something that wasn't an overlay.");
        }
    }
}
