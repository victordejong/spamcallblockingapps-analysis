package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzekk;
import java.util.List;
/* renamed from: c.d.b.d.g.a.e80 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/e80.class */
public final class e80 extends a80 {
    public e80() {
        super();
    }

    /* renamed from: c */
    public static <E> zzekk<E> m27052c(Object obj, long j) {
        return (zzekk) ba0.m27144f(obj, j);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.a80
    /* renamed from: a */
    public final <L> List<L> mo27055a(Object obj, long j) {
        zzekk c = m27052c(obj, j);
        zzekk zzekkVar = c;
        if (!c.mo12360w()) {
            int size = c.size();
            zzekkVar = c.mo12357e(size == 0 ? 10 : size << 1);
            ba0.m27167a(obj, j, zzekkVar);
        }
        return zzekkVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.List] */
    @Override // p131c.p161d.p170b.p224d.p252g.p253a.a80
    /* renamed from: a */
    public final <E> void mo27054a(Object obj, Object obj2, long j) {
        zzekk c = m27052c(obj, j);
        zzekk c2 = m27052c(obj2, j);
        int size = c.size();
        int size2 = c2.size();
        zzekk zzekkVar = c;
        if (size > 0) {
            zzekkVar = c;
            if (size2 > 0) {
                zzekk<E> zzekkVar2 = c;
                if (!c.mo12360w()) {
                    zzekkVar2 = c.mo12357e(size2 + size);
                }
                zzekkVar2.addAll(c2);
                zzekkVar = zzekkVar2;
            }
        }
        zzekkVar = c2;
        if (size > 0) {
        }
        ba0.m27167a(obj, j, zzekkVar);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.a80
    /* renamed from: b */
    public final void mo27053b(Object obj, long j) {
        m27052c(obj, j).mo12361A();
    }
}
