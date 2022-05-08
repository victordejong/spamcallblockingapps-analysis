package com.google.gson.a.a;

import com.google.gson.c.a;
import com.google.gson.f;
import com.google.gson.x;
import java.lang.reflect.Type;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/gson/a/a/k.class */
public final class k<T> extends x<T> {

    /* renamed from: a  reason: collision with root package name */
    private final f f4466a;

    /* renamed from: b  reason: collision with root package name */
    private final x<T> f4467b;
    private final Type c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(f fVar, x<T> xVar, Type type) {
        this.f4466a = fVar;
        this.f4467b = xVar;
        this.c = type;
    }

    @Override // com.google.gson.x
    public final T a(a aVar) {
        return this.f4467b.a(aVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002b, code lost:
        if ((r0 instanceof java.lang.Class) != false) goto L_0x002e;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.reflect.Type] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.gson.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(com.google.gson.c.c r5, T r6) {
        /*
            r4 = this;
            r0 = r4
            com.google.gson.x<T> r0 = r0.f4467b
            r7 = r0
            r0 = r4
            java.lang.reflect.Type r0 = r0.c
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0034
            r0 = r8
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 == r1) goto L_0x002e
            r0 = r8
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 != 0) goto L_0x002e
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L_0x0034
        L_0x002e:
            r0 = r6
            java.lang.Class r0 = r0.getClass()
            r9 = r0
        L_0x0034:
            r0 = r9
            r1 = r4
            java.lang.reflect.Type r1 = r1.c
            if (r0 == r1) goto L_0x006f
            r0 = r4
            com.google.gson.f r0 = r0.f4466a
            r1 = r9
            com.google.gson.b.a r1 = com.google.gson.b.a.a(r1)
            com.google.gson.x r0 = r0.a(r1)
            r7 = r0
            r0 = r7
            r9 = r0
            r0 = r7
            boolean r0 = r0 instanceof com.google.gson.a.a.h.a
            if (r0 == 0) goto L_0x0067
            r0 = r7
            r9 = r0
            r0 = r4
            com.google.gson.x<T> r0 = r0.f4467b
            boolean r0 = r0 instanceof com.google.gson.a.a.h.a
            if (r0 != 0) goto L_0x0067
            r0 = r4
            com.google.gson.x<T> r0 = r0.f4467b
            r9 = r0
        L_0x0067:
            r0 = r9
            r1 = r5
            r2 = r6
            r0.a(r1, r2)
            return
        L_0x006f:
            r0 = r7
            r9 = r0
            goto L_0x0067
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.a.a.k.a(com.google.gson.c.c, java.lang.Object):void");
    }
}
