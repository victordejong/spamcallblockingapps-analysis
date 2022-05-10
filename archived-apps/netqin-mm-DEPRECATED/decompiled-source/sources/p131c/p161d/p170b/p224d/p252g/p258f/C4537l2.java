package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzgy;
import java.util.Comparator;
/* renamed from: c.d.b.d.g.f.l2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/l2.class */
public final class C4537l2 implements Comparator<zzgp> {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(zzgp zzgpVar, zzgp zzgpVar2) {
        int zzb;
        int zzb2;
        zzgp zzgpVar3 = zzgpVar;
        zzgp zzgpVar4 = zzgpVar2;
        zzgy zzgyVar = (zzgy) zzgpVar3.iterator();
        zzgy zzgyVar2 = (zzgy) zzgpVar4.iterator();
        while (zzgyVar.hasNext() && zzgyVar2.hasNext()) {
            zzb = zzgp.zzb(zzgyVar.zza());
            zzb2 = zzgp.zzb(zzgyVar2.zza());
            int compare = Integer.compare(zzb, zzb2);
            if (compare != 0) {
                return compare;
            }
        }
        return Integer.compare(zzgpVar3.zza(), zzgpVar4.zza());
    }
}
