package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajx.class */
final class ajx implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f7508a;

    /* renamed from: b */
    private boolean f7509b;

    /* renamed from: c */
    private Iterator<Map.Entry<K, V>> f7510c;

    /* renamed from: d */
    private final /* synthetic */ ajp f7511d;

    private ajx(ajp ajpVar) {
        this.f7511d = ajpVar;
        this.f7508a = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ajx(ajp ajpVar, byte b) {
        this(ajpVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m5098a() {
        Map map;
        if (this.f7510c == null) {
            map = this.f7511d.f7493c;
            this.f7510c = map.entrySet().iterator();
        }
        return this.f7510c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f7508a + 1;
        list = this.f7511d.f7492b;
        if (i < list.size()) {
            return true;
        }
        map = this.f7511d.f7493c;
        return !map.isEmpty() && m5098a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object next;
        List list2;
        this.f7509b = true;
        int i = this.f7508a + 1;
        this.f7508a = i;
        list = this.f7511d.f7492b;
        if (i < list.size()) {
            list2 = this.f7511d.f7492b;
            next = list2.get(this.f7508a);
        } else {
            next = m5098a().next();
        }
        return (Map.Entry) next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f7509b) {
            this.f7509b = false;
            this.f7511d.m5160f();
            int i = this.f7508a;
            list = this.f7511d.f7492b;
            if (i < list.size()) {
                ajp ajpVar = this.f7511d;
                int i2 = this.f7508a;
                this.f7508a = i2 - 1;
                ajpVar.m5165c(i2);
                return;
            }
            m5098a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
