package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p057c.C1493a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.b.a.aw */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/aw.class */
public final class C1407aw implements AbstractC1380ag {

    /* renamed from: a */
    final /* synthetic */ Class f5491a;

    /* renamed from: b */
    final /* synthetic */ AbstractC1378ae f5492b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1407aw(Class cls, AbstractC1378ae aeVar) {
        this.f5491a = cls;
        this.f5492b = aeVar;
    }

    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        if (aVar.m6254a() == this.f5491a) {
            return this.f5492b;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f5491a.getName() + ",adapter=" + this.f5492b + "]";
    }
}
