package com.google.p051a.p053b;

import java.lang.reflect.Type;
/* renamed from: com.google.a.b.i */
/* loaded from: classes-dex2jar.jar:com/google/a/b/i.class */
final class C1470i implements AbstractC1491z<T> {

    /* renamed from: a */
    final /* synthetic */ Class f5643a;

    /* renamed from: b */
    final /* synthetic */ Type f5644b;

    /* renamed from: c */
    final /* synthetic */ C1464c f5645c;

    /* renamed from: d */
    private final AbstractC1452ac f5646d = AbstractC1452ac.m6304a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1470i(C1464c cVar, Class cls, Type type) {
        this.f5645c = cVar;
        this.f5643a = cls;
        this.f5644b = type;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [T, java.lang.Object] */
    @Override // com.google.p051a.p053b.AbstractC1491z
    /* renamed from: a */
    public final T mo6257a() {
        try {
            return this.f5646d.mo6302a(this.f5643a);
        } catch (Exception e) {
            throw new RuntimeException("Unable to invoke no-args constructor for " + this.f5644b + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e);
        }
    }
}
