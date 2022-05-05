package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p053b.C1457b;
import com.google.p051a.p057c.C1493a;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
/* renamed from: com.google.a.b.a.b */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/b.class */
final class C1411b implements AbstractC1380ag {
    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        Type b = aVar.m6251b();
        if (!(b instanceof GenericArrayType) && (!(b instanceof Class) || !((Class) b).isArray())) {
            return null;
        }
        Type d = C1457b.m6290d(b);
        return new C1383a(kVar, kVar.m6182a((C1493a) C1493a.m6252a(d)), C1457b.m6294b(d));
    }
}
