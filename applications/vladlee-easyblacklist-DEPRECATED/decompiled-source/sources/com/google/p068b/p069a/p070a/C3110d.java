package com.google.p068b.p069a.p070a;

import com.google.p068b.p069a.p070a.C3108c;
import java.util.LinkedHashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.b.a.a.d */
/* loaded from: classes-dex2jar.jar:com/google/b/a/a/d.class */
public final class C3110d extends LinkedHashMap<K, V> {

    /* renamed from: a */
    final /* synthetic */ C3108c.C3109a f18755a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3110d(C3108c.C3109a aVar) {
        super(134, 0.75f, true);
        this.f18755a = aVar;
    }

    @Override // java.util.LinkedHashMap
    protected final boolean removeEldestEntry(Map.Entry<K, V> entry) {
        int i;
        int size = size();
        i = this.f18755a.f18754b;
        return size > i;
    }
}
