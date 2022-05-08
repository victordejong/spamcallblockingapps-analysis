package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p057c.C1493a;
/* renamed from: com.google.a.b.a.ay */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ay.class */
final class C1409ay implements AbstractC1380ag {

    /* renamed from: a */
    final /* synthetic */ Class f5496a;

    /* renamed from: b */
    final /* synthetic */ Class f5497b;

    /* renamed from: c */
    final /* synthetic */ AbstractC1378ae f5498c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1409ay(Class cls, Class cls2, AbstractC1378ae aeVar) {
        this.f5496a = cls;
        this.f5497b = cls2;
        this.f5498c = aeVar;
    }

    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        Class<? super T> a = aVar.m6254a();
        if (a == this.f5496a || a == this.f5497b) {
            return this.f5498c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f5496a.getName() + "+" + this.f5497b.getName() + ",adapter=" + this.f5498c + "]";
    }
}
