package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzig;
import java.util.List;
/* renamed from: c.d.b.d.g.f.o3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/o3.class */
public final class C4559o3 extends AbstractC4552n3 {
    public C4559o3() {
        super();
    }

    /* renamed from: c */
    public static <E> zzig<E> m25352c(Object obj, long j) {
        return (zzig) C4522j5.m25407f(obj, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4552n3
    /* renamed from: a */
    public final <L> List<L> mo25341a(Object obj, long j) {
        zzig c = m25352c(obj, j);
        zzig zzigVar = c;
        if (!c.zza()) {
            int size = c.size();
            zzigVar = c.zza(size == 0 ? 10 : size << 1);
            C4522j5.m25430a(obj, j, zzigVar);
        }
        return zzigVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4552n3
    /* renamed from: a */
    public final <E> void mo25339a(Object obj, Object obj2, long j) {
        zzig c = m25352c(obj, j);
        zzig c2 = m25352c(obj2, j);
        int size = c.size();
        int size2 = c2.size();
        zzig zzigVar = c;
        if (size > 0) {
            zzigVar = c;
            if (size2 > 0) {
                zzig<E> zzigVar2 = c;
                if (!c.zza()) {
                    zzigVar2 = c.zza(size2 + size);
                }
                zzigVar2.addAll(c2);
                zzigVar = zzigVar2;
            }
        }
        zzigVar = c2;
        if (size > 0) {
        }
        C4522j5.m25430a(obj, j, zzigVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.AbstractC4552n3
    /* renamed from: b */
    public final void mo25338b(Object obj, long j) {
        m25352c(obj, j).mo9631H();
    }
}
