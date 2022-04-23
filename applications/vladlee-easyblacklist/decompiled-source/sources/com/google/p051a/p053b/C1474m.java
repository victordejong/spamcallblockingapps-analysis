package com.google.p051a.p053b;

import com.google.p051a.C1518u;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;
/* renamed from: com.google.a.b.m */
/* loaded from: classes-dex2jar.jar:com/google/a/b/m.class */
final class C1474m implements AbstractC1491z<T> {

    /* renamed from: a */
    final /* synthetic */ Type f5653a;

    /* renamed from: b */
    final /* synthetic */ C1464c f5654b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1474m(C1464c cVar, Type type) {
        this.f5654b = cVar;
        this.f5653a = type;
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [T, java.util.EnumSet] */
    @Override // com.google.p051a.p053b.AbstractC1491z
    /* renamed from: a */
    public final T mo6257a() {
        Type type = this.f5653a;
        if (type instanceof ParameterizedType) {
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return EnumSet.noneOf((Class) type2);
            }
            throw new C1518u("Invalid EnumSet type: " + this.f5653a.toString());
        }
        throw new C1518u("Invalid EnumSet type: " + this.f5653a.toString());
    }
}
