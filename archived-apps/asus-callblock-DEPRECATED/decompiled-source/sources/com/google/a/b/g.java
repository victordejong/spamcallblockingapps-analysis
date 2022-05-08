package com.google.a.b;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/a/b/g.class */
public final class g extends n<Object, Object> {

    /* renamed from: a  reason: collision with root package name */
    static final g f3696a = new g();

    private g() {
    }

    @Override // com.google.a.b.n
    public final o<Map.Entry<Object, Object>> a() {
        return o.f();
    }

    @Override // com.google.a.b.n
    public final o<Object> b() {
        return o.f();
    }

    @Override // com.google.a.b.n
    public final k<Object> c() {
        return k.c;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final boolean containsKey(Object obj) {
        return false;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return false;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final /* synthetic */ Set entrySet() {
        return o.f();
    }

    @Override // com.google.a.b.n, java.util.Map
    public final boolean equals(Object obj) {
        return obj instanceof Map ? ((Map) obj).isEmpty() : false;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final Object get(Object obj) {
        return null;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final int hashCode() {
        return 0;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final boolean isEmpty() {
        return true;
    }

    @Override // com.google.a.b.n, java.util.Map
    public final /* synthetic */ Set keySet() {
        return o.f();
    }

    @Override // java.util.Map
    public final int size() {
        return 0;
    }

    @Override // com.google.a.b.n
    public final String toString() {
        return "{}";
    }

    @Override // com.google.a.b.n, java.util.Map
    public final /* bridge */ /* synthetic */ Collection values() {
        return k.c;
    }
}
