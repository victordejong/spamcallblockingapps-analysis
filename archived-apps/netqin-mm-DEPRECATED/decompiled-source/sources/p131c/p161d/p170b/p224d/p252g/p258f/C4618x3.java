package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzjb;
import com.google.android.gms.internal.measurement.zzjd;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.x3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/x3.class */
public final class C4618x3 implements AbstractC4606v3 {
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4606v3
    /* renamed from: a */
    public final int mo25172a(int i, Object obj, Object obj2) {
        zzjd zzjdVar = (zzjd) obj;
        zzjb zzjbVar = (zzjb) obj2;
        if (zzjdVar.isEmpty()) {
            return 0;
        }
        Iterator it = zzjdVar.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw new NoSuchMethodError();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4606v3
    /* renamed from: a */
    public final Object mo25170a(Object obj, Object obj2) {
        zzjd zzjdVar = (zzjd) obj;
        zzjd zzjdVar2 = (zzjd) obj2;
        zzjd zzjdVar3 = zzjdVar;
        if (!zzjdVar2.isEmpty()) {
            zzjdVar3 = zzjdVar;
            if (!zzjdVar.zzd()) {
                zzjdVar3 = zzjdVar.zzb();
            }
            zzjdVar3.zza(zzjdVar2);
        }
        return zzjdVar3;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4606v3
    /* renamed from: a */
    public final boolean mo25171a(Object obj) {
        return !((zzjd) obj).zzd();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4606v3
    /* renamed from: b */
    public final Map<?, ?> mo25169b(Object obj) {
        return (zzjd) obj;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4606v3
    /* renamed from: c */
    public final Map<?, ?> mo25168c(Object obj) {
        return (zzjd) obj;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4606v3
    /* renamed from: d */
    public final C4600u3<?, ?> mo25167d(Object obj) {
        zzjb zzjbVar = (zzjb) obj;
        throw new NoSuchMethodError();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4606v3
    /* renamed from: e */
    public final Object mo25166e(Object obj) {
        return zzjd.zza().zzb();
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4606v3
    /* renamed from: f */
    public final Object mo25165f(Object obj) {
        ((zzjd) obj).zzc();
        return obj;
    }
}
