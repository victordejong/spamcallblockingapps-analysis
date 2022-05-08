package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import java.io.IOException;
import java.lang.reflect.Type;
import p081h.p203i.p384e.p390x.C10173a;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.C10177c;
/* loaded from: classes2-dex2jar.jar:com/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper.class */
public final class TypeAdapterRuntimeTypeWrapper<T> extends TypeAdapter<T> {

    /* renamed from: a */
    public final Gson f7888a;

    /* renamed from: b */
    public final TypeAdapter<T> f7889b;

    /* renamed from: c */
    public final Type f7890c;

    public TypeAdapterRuntimeTypeWrapper(Gson gson, TypeAdapter<T> typeAdapter, Type type) {
        this.f7888a = gson;
        this.f7889b = typeAdapter;
        this.f7890c = type;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if ((r4 instanceof java.lang.Class) != false) goto L_0x001c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.reflect.Type m30940a(java.lang.reflect.Type r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r4
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0021
            r0 = r4
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 == r1) goto L_0x001c
            r0 = r4
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 != 0) goto L_0x001c
            r0 = r4
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L_0x0021
        L_0x001c:
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            r6 = r0
        L_0x0021:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.TypeAdapterRuntimeTypeWrapper.m30940a(java.lang.reflect.Type, java.lang.Object):java.lang.reflect.Type");
    }

    @Override // com.google.gson.TypeAdapter
    public T read(C10174a aVar) throws IOException {
        return this.f7889b.read(aVar);
    }

    @Override // com.google.gson.TypeAdapter
    public void write(C10177c cVar, T t) throws IOException {
        TypeAdapter<T> typeAdapter = this.f7889b;
        Type a = m30940a(this.f7890c, t);
        if (a != this.f7890c) {
            typeAdapter = this.f7888a.m30995a((C10173a) C10173a.m13278a(a));
            if (typeAdapter instanceof ReflectiveTypeAdapterFactory.Adapter) {
                TypeAdapter<T> typeAdapter2 = this.f7889b;
                if (!(typeAdapter2 instanceof ReflectiveTypeAdapterFactory.Adapter)) {
                    typeAdapter = typeAdapter2;
                }
            }
        }
        typeAdapter.write(cVar, t);
    }
}
