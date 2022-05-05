package com.google.p051a.p053b;

import java.lang.reflect.Method;
/* renamed from: com.google.a.b.ad */
/* loaded from: classes-dex2jar.jar:com/google/a/b/ad.class */
final class C1453ad extends AbstractC1452ac {

    /* renamed from: a */
    final /* synthetic */ Method f5618a;

    /* renamed from: b */
    final /* synthetic */ Object f5619b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1453ad(Method method, Object obj) {
        this.f5618a = method;
        this.f5619b = obj;
    }

    @Override // com.google.p051a.p053b.AbstractC1452ac
    /* renamed from: a */
    public final <T> T mo6302a(Class<T> cls) {
        m6303b(cls);
        return (T) this.f5618a.invoke(this.f5619b, cls);
    }
}
