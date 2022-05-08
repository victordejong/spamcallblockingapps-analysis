package com.google.android.gms.internal.measurement;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzeq.class */
final class zzeq extends AbstractSet<Map.Entry<K, V>> {

    /* renamed from: f */
    private final /* synthetic */ zzem f8393f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeq(zzem zzemVar) {
        this.f8393f = zzemVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f8393f.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(@NullableDecl Object obj) {
        int f;
        Map n = this.f8393f.m12719n();
        if (n != null) {
            return n.entrySet().contains(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        f = this.f8393f.m12727f(entry.getKey());
        return f != -1 && zzdz.m12745a(this.f8393f.f8385i[f], entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return this.f8393f.m12712u();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(@NullableDecl Object obj) {
        int x;
        Object obj2;
        Map n = this.f8393f.m12719n();
        if (n != null) {
            return n.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.f8393f.m12724i()) {
            return false;
        }
        x = this.f8393f.m12709x();
        Object key = entry.getKey();
        Object value = entry.getValue();
        obj2 = this.f8393f.f8382f;
        zzem zzemVar = this.f8393f;
        int c = zzex.m12702c(key, value, x, obj2, zzemVar.f8383g, zzemVar.f8384h, zzemVar.f8385i);
        if (c == -1) {
            return false;
        }
        this.f8393f.m12725h(c, x);
        zzem.m12714s(this.f8393f);
        this.f8393f.m12716q();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f8393f.size();
    }
}
