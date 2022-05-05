package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.eh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/eh.class */
final class C2580eh implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f16035a;

    /* renamed from: b */
    private boolean f16036b;

    /* renamed from: c */
    private Iterator<Map.Entry<K, V>> f16037c;

    /* renamed from: d */
    private final /* synthetic */ C2571dz f16038d;

    private C2580eh(C2571dz dzVar) {
        this.f16038d = dzVar;
        this.f16035a = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2580eh(C2571dz dzVar, byte b) {
        this(dzVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m2611a() {
        Map map;
        if (this.f16037c == null) {
            map = this.f16038d.f16016c;
            this.f16037c = map.entrySet().iterator();
        }
        return this.f16037c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f16035a + 1;
        list = this.f16038d.f16015b;
        if (i < list.size()) {
            return true;
        }
        map = this.f16038d.f16016c;
        return !map.isEmpty() && m2611a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object next;
        List list2;
        this.f16036b = true;
        int i = this.f16035a + 1;
        this.f16035a = i;
        list = this.f16038d.f16015b;
        if (i < list.size()) {
            list2 = this.f16038d.f16015b;
            next = list2.get(this.f16035a);
        } else {
            next = m2611a().next();
        }
        return (Map.Entry) next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f16036b) {
            this.f16036b = false;
            this.f16038d.m2617f();
            int i = this.f16035a;
            list = this.f16038d.f16015b;
            if (i < list.size()) {
                C2571dz dzVar = this.f16038d;
                int i2 = this.f16035a;
                this.f16035a = i2 - 1;
                dzVar.m2622c(i2);
                return;
            }
            m2611a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
