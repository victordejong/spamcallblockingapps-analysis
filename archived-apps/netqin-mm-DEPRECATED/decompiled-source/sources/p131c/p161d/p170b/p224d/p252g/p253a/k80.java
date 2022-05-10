package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzelb;
import com.google.android.gms.internal.ads.zzeld;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.k80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/k80.class */
public final class k80 implements l80 {
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.l80
    /* renamed from: a */
    public final int mo26701a(int i, Object obj, Object obj2) {
        zzeld zzeldVar = (zzeld) obj;
        zzelb zzelbVar = (zzelb) obj2;
        if (zzeldVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzeldVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.l80
    /* renamed from: a */
    public final j80<?, ?> mo26700a(Object obj) {
        zzelb zzelbVar = (zzelb) obj;
        throw new NoSuchMethodError();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.l80
    /* renamed from: a */
    public final Object mo26699a(Object obj, Object obj2) {
        zzeld zzeldVar = (zzeld) obj;
        zzeld zzeldVar2 = (zzeld) obj2;
        zzeld zzeldVar3 = zzeldVar;
        if (!zzeldVar2.isEmpty()) {
            zzeldVar3 = zzeldVar;
            if (!zzeldVar.isMutable()) {
                zzeldVar3 = zzeldVar.zzbhq();
            }
            zzeldVar3.zza(zzeldVar2);
        }
        return zzeldVar3;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.l80
    /* renamed from: b */
    public final Map<?, ?> mo26698b(Object obj) {
        return (zzeld) obj;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.l80
    /* renamed from: c */
    public final boolean mo26697c(Object obj) {
        return !((zzeld) obj).isMutable();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.l80
    /* renamed from: d */
    public final Object mo26696d(Object obj) {
        ((zzeld) obj).zzbec();
        return obj;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.l80
    /* renamed from: e */
    public final Object mo26695e(Object obj) {
        return zzeld.zzbhp().zzbhq();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.l80
    /* renamed from: f */
    public final Map<?, ?> mo26694f(Object obj) {
        return (zzeld) obj;
    }
}
