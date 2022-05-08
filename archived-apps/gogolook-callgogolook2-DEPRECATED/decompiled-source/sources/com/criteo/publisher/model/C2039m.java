package com.criteo.publisher.model;

import androidx.annotation.NonNull;
import com.criteo.publisher.p020a0.C1917h;
import com.criteo.publisher.p020a0.C1925m;
import com.criteo.publisher.p020a0.C1932t;
import com.criteo.publisher.p024q.C2093d;
import com.criteo.publisher.p032y.C2167a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Future;
/* renamed from: com.criteo.publisher.model.m */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/m.class */
public class C2039m {
    @NonNull

    /* renamed from: a */
    public final C2047s f2243a;
    @NonNull

    /* renamed from: b */
    public final C2043q f2244b;
    @NonNull

    /* renamed from: c */
    public final C1925m f2245c;
    @NonNull

    /* renamed from: d */
    public final C2167a f2246d;
    @NonNull

    /* renamed from: e */
    public final C2093d f2247e;
    @NonNull

    /* renamed from: f */
    public final C1917h f2248f;

    public C2039m(@NonNull C2047s sVar, @NonNull C2043q qVar, @NonNull C1925m mVar, @NonNull C2167a aVar, @NonNull C2093d dVar, @NonNull C1917h hVar) {
        this.f2243a = sVar;
        this.f2244b = qVar;
        this.f2245c = mVar;
        this.f2246d = aVar;
        this.f2247e = dVar;
        this.f2248f = hVar;
    }

    @NonNull
    /* renamed from: a */
    private AbstractC2040n m35857a(C2037k kVar) {
        return AbstractC2040n.m35852a(this.f2247e.m35707a(), kVar.m35862b(), kVar.m35863a(), kVar.m35861c());
    }

    @NonNull
    /* renamed from: b */
    private List<AbstractC2040n> m35855b(List<C2037k> list) {
        ArrayList arrayList = new ArrayList();
        for (C2037k kVar : list) {
            arrayList.add(m35857a(kVar));
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: a */
    public C2038l m35856a(List<C2037k> list) {
        return new C2038l(this.f2243a, AbstractC2053x.m35785a(this.f2245c.m36014b(), C1932t.m35992a(this.f2246d.m35543c()), C1932t.m35992a(this.f2246d.m35544b()), C1932t.m35992a(this.f2246d.m35542d())), this.f2248f.m36024m(), this.f2248f.m36025l(), this.f2246d.m35547a(), m35855b(list));
    }

    @NonNull
    /* renamed from: a */
    public Future<String> m35858a() {
        return this.f2244b.mo35831a();
    }
}
