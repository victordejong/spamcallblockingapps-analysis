package p081h.p203i.p402h.p405k.p406d;

import java.util.ArrayList;
import java.util.List;
/* renamed from: h.i.h.k.d.c */
/* loaded from: classes2-dex2jar.jar:h/i/h/k/d/c.class */
public final class C10553c {

    /* renamed from: a */
    public final C10551a f24030a;

    /* renamed from: b */
    public final List<C10552b> f24031b = new ArrayList();

    public C10553c(C10551a aVar) {
        this.f24030a = aVar;
        this.f24031b.add(new C10552b(aVar, new int[]{1}));
    }

    /* renamed from: a */
    public final C10552b m11422a(int i) {
        if (i >= this.f24031b.size()) {
            List<C10552b> list = this.f24031b;
            C10552b bVar = list.get(list.size() - 1);
            for (int size = this.f24031b.size(); size <= i; size++) {
                C10551a aVar = this.f24030a;
                bVar = bVar.m11423c(new C10552b(aVar, new int[]{1, aVar.m11437a((size - 1) + aVar.m11438a())}));
                this.f24031b.add(bVar);
            }
        }
        return this.f24031b.get(i);
    }

    /* renamed from: a */
    public void m11421a(int[] iArr, int i) {
        if (i != 0) {
            int length = iArr.length - i;
            if (length > 0) {
                C10552b a = m11422a(i);
                int[] iArr2 = new int[length];
                System.arraycopy(iArr, 0, iArr2, 0, length);
                int[] a2 = new C10552b(this.f24030a, iArr2).m11428a(i, 1).m11425b(a)[1].m11430a();
                int length2 = i - a2.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    iArr[length + i2] = 0;
                }
                System.arraycopy(a2, 0, iArr, length + length2, a2.length);
                return;
            }
            throw new IllegalArgumentException("No data bytes provided");
        }
        throw new IllegalArgumentException("No error correction bytes");
    }
}
