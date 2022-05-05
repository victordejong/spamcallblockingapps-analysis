package com.google.p051a.p053b;

import java.lang.reflect.Method;
/* renamed from: com.google.a.b.ae */
/* loaded from: classes-dex2jar.jar:com/google/a/b/ae.class */
final class C1454ae extends AbstractC1452ac {

    /* renamed from: a */
    final /* synthetic */ Method f5620a;

    /* renamed from: b */
    final /* synthetic */ int f5621b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1454ae(Method method, int i) {
        this.f5620a = method;
        this.f5621b = i;
    }

    @Override // com.google.p051a.p053b.AbstractC1452ac
    /* renamed from: a */
    public final <T> T mo6302a(Class<T> cls) {
        m6303b(cls);
        return (T) this.f5620a.invoke(null, cls, Integer.valueOf(this.f5621b));
    }
}
