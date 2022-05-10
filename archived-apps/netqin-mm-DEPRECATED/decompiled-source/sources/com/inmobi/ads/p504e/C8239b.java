package com.inmobi.ads.p504e;

import com.inmobi.commons.core.p514f.C8378b;
import com.inmobi.commons.core.utilities.p516b.C8401e;
import com.inmobi.p507b.C8321a;
/* renamed from: com.inmobi.ads.e.b */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/e/b.class */
public final class C8239b implements AbstractC8238a {

    /* renamed from: a */
    public final C8321a f32141a;

    public C8239b(C8321a aVar) {
        this.f32141a = aVar;
    }

    @Override // com.inmobi.ads.p504e.AbstractC8238a
    /* renamed from: a */
    public final void mo6127a(final C8378b bVar) {
        final C8321a aVar = this.f32141a;
        if (aVar.f32365c.m6196b(bVar.f32580j).f32008h) {
            aVar.f32364a.execute(new Runnable() { // from class: com.inmobi.b.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    C8401e.m5677c();
                    if (C8401e.m5676d() == 0) {
                        String unused = C8321a.f32361f;
                        return;
                    }
                    C8321a.m5906a(aVar, bVar);
                    C8321a.m5905a(aVar, bVar.f32580j);
                }
            });
        }
    }
}
