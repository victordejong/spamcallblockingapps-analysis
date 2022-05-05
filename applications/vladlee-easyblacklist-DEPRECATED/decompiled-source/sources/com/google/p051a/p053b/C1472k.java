package com.google.p051a.p053b;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
/* renamed from: com.google.a.b.k */
/* loaded from: classes-dex2jar.jar:com/google/a/b/k.class */
final class C1472k implements AbstractC1491z<T> {

    /* renamed from: a */
    final /* synthetic */ Constructor f5650a;

    /* renamed from: b */
    final /* synthetic */ C1464c f5651b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1472k(C1464c cVar, Constructor constructor) {
        this.f5651b = cVar;
        this.f5650a = constructor;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [T, java.lang.Object] */
    @Override // com.google.p051a.p053b.AbstractC1491z
    /* renamed from: a */
    public final T mo6257a() {
        try {
            return this.f5650a.newInstance(null);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Failed to invoke " + this.f5650a + " with no args", e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException("Failed to invoke " + this.f5650a + " with no args", e3.getTargetException());
        }
    }
}
