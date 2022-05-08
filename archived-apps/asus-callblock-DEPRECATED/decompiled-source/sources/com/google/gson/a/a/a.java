package com.google.gson.a.a;

import com.google.gson.a.b;
import com.google.gson.c.c;
import com.google.gson.f;
import com.google.gson.x;
import com.google.gson.y;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/a.class */
public final class a<E> extends x<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f4439a = new y() { // from class: com.google.gson.a.a.a.1
        @Override // com.google.gson.y
        public final <T> x<T> a(f fVar, com.google.gson.b.a<T> aVar) {
            a aVar2;
            Type type = aVar.f4532b;
            if ((type instanceof GenericArrayType) || ((type instanceof Class) && ((Class) type).isArray())) {
                Type d = b.d(type);
                aVar2 = new a(fVar, fVar.a(com.google.gson.b.a.a(d)), b.b(d));
            } else {
                aVar2 = null;
            }
            return aVar2;
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final Class<E> f4440b;
    private final x<E> c;

    public a(f fVar, x<E> xVar, Class<E> cls) {
        this.c = new k(fVar, xVar, cls);
        this.f4440b = cls;
    }

    @Override // com.google.gson.x
    public final Object a(com.google.gson.c.a aVar) {
        Object newInstance;
        if (aVar.f() == com.google.gson.c.b.NULL) {
            aVar.k();
            newInstance = null;
        } else {
            ArrayList arrayList = new ArrayList();
            aVar.a();
            while (aVar.e()) {
                arrayList.add(this.c.a(aVar));
            }
            aVar.b();
            newInstance = Array.newInstance((Class<?>) this.f4440b, arrayList.size());
            for (int i = 0; i < arrayList.size(); i++) {
                Array.set(newInstance, i, arrayList.get(i));
            }
        }
        return newInstance;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gson.x
    public final void a(c cVar, Object obj) {
        if (obj == null) {
            cVar.e();
            return;
        }
        cVar.a();
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            this.c.a(cVar, Array.get(obj, i));
        }
        cVar.b();
    }
}
