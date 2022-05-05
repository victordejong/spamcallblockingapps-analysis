package com.google.p051a.p053b;

import java.lang.reflect.Method;
/* renamed from: com.google.a.b.af */
/* loaded from: classes-dex2jar.jar:com/google/a/b/af.class */
final class C1455af extends AbstractC1452ac {

    /* renamed from: a */
    final /* synthetic */ Method f5622a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1455af(Method method) {
        this.f5622a = method;
    }

    @Override // com.google.p051a.p053b.AbstractC1452ac
    /* renamed from: a */
    public final <T> T mo6302a(Class<T> cls) {
        m6303b(cls);
        return (T) this.f5622a.invoke(null, cls, Object.class);
    }
}
