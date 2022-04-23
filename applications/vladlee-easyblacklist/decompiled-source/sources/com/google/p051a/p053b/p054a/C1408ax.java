package com.google.p051a.p053b.p054a;

import com.google.p051a.AbstractC1378ae;
import com.google.p051a.AbstractC1380ag;
import com.google.p051a.C1507k;
import com.google.p051a.p057c.C1493a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.a.b.a.ax */
/* loaded from: classes-dex2jar.jar:com/google/a/b/a/ax.class */
public final class C1408ax implements AbstractC1380ag {

    /* renamed from: a */
    final /* synthetic */ Class f5493a;

    /* renamed from: b */
    final /* synthetic */ Class f5494b;

    /* renamed from: c */
    final /* synthetic */ AbstractC1378ae f5495c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1408ax(Class cls, Class cls2, AbstractC1378ae aeVar) {
        this.f5493a = cls;
        this.f5494b = cls2;
        this.f5495c = aeVar;
    }

    @Override // com.google.p051a.AbstractC1380ag
    /* renamed from: a */
    public final <T> AbstractC1378ae<T> mo6276a(C1507k kVar, C1493a<T> aVar) {
        Class<? super T> a = aVar.m6254a();
        if (a == this.f5493a || a == this.f5494b) {
            return this.f5495c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f5494b.getName() + "+" + this.f5493a.getName() + ",adapter=" + this.f5495c + "]";
    }
}
