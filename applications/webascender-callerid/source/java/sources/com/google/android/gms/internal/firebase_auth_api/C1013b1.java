package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.c1;
import com.google.android.gms.internal.firebase-auth-api.u0;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.firebase_auth_api.b1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/b1.class */
public final class C1013b1 extends AbstractSet<Map.Entry> {

    /* renamed from: f */
    final /* synthetic */ c1 f3671f;

    public /* synthetic */ C1013b1(c1 c1Var, u0 u0Var) {
        this.f3671f = c1Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            this.f3671f.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f3671f.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.f3671f.get(entry.getKey());
        Object value = entry.getValue();
        boolean z = false;
        if (obj2 != value) {
            if (obj2 != null) {
                if (!obj2.equals(value)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry> iterator() {
        return new C0999a1(this.f3671f, null);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            this.f3671f.remove(entry.getKey());
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f3671f.size();
    }
}
