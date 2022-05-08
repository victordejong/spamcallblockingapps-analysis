package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzgh.class */
final class zzgh implements Iterator<Map.Entry<K, V>> {

    /* renamed from: f */
    private int f8088f;

    /* renamed from: g */
    private boolean f8089g;

    /* renamed from: h */
    private Iterator<Map.Entry<K, V>> f8090h;

    /* renamed from: i */
    private final /* synthetic */ zzfz f8091i;

    private zzgh(zzfz zzfzVar) {
        this.f8091i = zzfzVar;
        this.f8088f = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgh(zzfz zzfzVar, zzfy zzfyVar) {
        this(zzfzVar);
    }

    /* renamed from: a */
    private final Iterator<Map.Entry<K, V>> m13621a() {
        Map map;
        if (this.f8090h == null) {
            map = this.f8091i.f8073h;
            this.f8090h = map.entrySet().iterator();
        }
        return this.f8090h;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        int i = this.f8088f + 1;
        list = this.f8091i.f8072g;
        if (i < list.size()) {
            return true;
        }
        map = this.f8091i.f8073h;
        return !map.isEmpty() && m13621a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        List list;
        List list2;
        this.f8089g = true;
        int i = this.f8088f + 1;
        this.f8088f = i;
        list = this.f8091i.f8072g;
        if (i >= list.size()) {
            return (Map.Entry) m13621a().next();
        }
        list2 = this.f8091i.f8072g;
        return (Map.Entry) list2.get(this.f8088f);
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f8089g) {
            this.f8089g = false;
            this.f8091i.m13627r();
            int i = this.f8088f;
            list = this.f8091i.f8072g;
            if (i < list.size()) {
                zzfz zzfzVar = this.f8091i;
                int i2 = this.f8088f;
                this.f8088f = i2 - 1;
                zzfzVar.m13634k(i2);
                return;
            }
            m13621a().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
