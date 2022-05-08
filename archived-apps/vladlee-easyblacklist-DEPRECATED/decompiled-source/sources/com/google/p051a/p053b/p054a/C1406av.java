package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p053b.p054a.C1445w;
import com.google.p051a.p057c.C1493a;
/* renamed from: com.google.a.b.a.av */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/av.class */
final class C1406av implements AbstractC1380ag {
    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        Class<? super T> a = aVar.m6254a();
        if (!Enum.class.isAssignableFrom(a) || a == Enum.class) {
            return null;
        }
        Class<? super Object> cls = a;
        if (!a.isEnum()) {
            cls = a.getSuperclass();
        }
        return new C1445w.C1446a(cls);
    }
}
