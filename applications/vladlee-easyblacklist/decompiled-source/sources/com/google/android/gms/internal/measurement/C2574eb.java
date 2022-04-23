package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.eb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/eb.class */
final class C2574eb implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f16026a;

    /* renamed from: b */
    private Iterator<Map.Entry<K, V>> f16027b;

    /* renamed from: c */
    private final /* synthetic */ C2571dz f16028c;

    private C2574eb(C2571dz dzVar) {
        List list;
        this.f16028c = dzVar;
        list = this.f16028c.f16015b;
        this.f16026a = list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C2574eb(C2571dz dzVar, byte b) {
        this(dzVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m2615a() {
        Map map;
        if (this.f16027b == null) {
            map = this.f16028c.f16019f;
            this.f16027b = map.entrySet().iterator();
        }
        return this.f16027b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f16026a;
        if (i > 0) {
            list = this.f16028c.f16015b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m2615a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object obj;
        if (m2615a().hasNext()) {
            obj = m2615a().next();
        } else {
            list = this.f16028c.f16015b;
            int i = this.f16026a - 1;
            this.f16026a = i;
            obj = list.get(i);
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
