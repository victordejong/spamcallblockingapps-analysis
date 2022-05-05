package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p057c.C1493a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.b.a.az */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/az.class */
public final class C1410az implements AbstractC1380ag {

    /* renamed from: a */
    final /* synthetic */ Class f5499a;

    /* renamed from: b */
    final /* synthetic */ AbstractC1378ae f5500b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1410az(Class cls, AbstractC1378ae aeVar) {
        this.f5499a = cls;
        this.f5500b = aeVar;
    }

    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T2> AbstractC1378ae<T2> mo6276a(C1507k kVar, C1493a<T2> aVar) {
        Class<? super T2> a = aVar.m6254a();
        if (!this.f5499a.isAssignableFrom(a)) {
            return null;
        }
        return new C1412ba(this, a);
    }

    public final String toString() {
        return "Factory[typeHierarchy=" + this.f5499a.getName() + ",adapter=" + this.f5500b + "]";
    }
}
