package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ajr.class */
final class ajr implements Iterator<Map.Entry<K, V>> {

    /* renamed from: a */
    private int f7502a;

    /* renamed from: b */
    private Iterator<Map.Entry<K, V>> f7503b;

    /* renamed from: c */
    private final /* synthetic */ ajp f7504c;

    private ajr(ajp ajpVar) {
        List list;
        this.f7504c = ajpVar;
        list = this.f7504c.f7492b;
        this.f7502a = list.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ajr(ajp ajpVar, byte b) {
        this(ajpVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m5102a() {
        Map map;
        if (this.f7503b == null) {
            map = this.f7504c.f7496f;
            this.f7503b = map.entrySet().iterator();
        }
        return this.f7503b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        int i = this.f7502a;
        if (i > 0) {
            list = this.f7504c.f7492b;
            if (i <= list.size()) {
                return true;
            }
        }
        return m5102a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        Object obj;
        if (m5102a().hasNext()) {
            obj = m5102a().next();
        } else {
            list = this.f7504c.f7492b;
            int i = this.f7502a - 1;
            this.f7502a = i;
            obj = list.get(i);
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
