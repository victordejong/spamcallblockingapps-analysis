package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.i8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/i8.class */
final class C1335i8 implements Iterator<Map.Entry> {

    /* renamed from: f */
    private int f3922f = -1;

    /* renamed from: g */
    private boolean f3923g;

    /* renamed from: h */
    private Iterator<Map.Entry> f3924h;

    /* renamed from: i */
    final /* synthetic */ C1345k8 f3925i;

    public /* synthetic */ C1335i8(C1345k8 c1345k8, d8 d8Var) {
        this.f3925i = c1345k8;
    }

    /* renamed from: a */
    private final Iterator<Map.Entry> m2077a() {
        Map map;
        if (this.f3924h == null) {
            map = this.f3925i.f3931h;
            this.f3924h = map.entrySet().iterator();
        }
        return this.f3924h;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        boolean z = true;
        int i = this.f3922f + 1;
        list = this.f3925i.f3930g;
        if (i >= list.size()) {
            map = this.f3925i.f3931h;
            if (map.isEmpty()) {
                z = false;
            } else if (!m2077a().hasNext()) {
                return false;
            } else {
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Map.Entry next() {
        List list;
        Object obj;
        List list2;
        this.f3923g = true;
        int i = this.f3922f + 1;
        this.f3922f = i;
        list = this.f3925i.f3930g;
        if (i < list.size()) {
            list2 = this.f3925i.f3930g;
            obj = list2.get(this.f3922f);
        } else {
            obj = m2077a().next();
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f3923g) {
            this.f3923g = false;
            this.f3925i.m2056n();
            int i = this.f3922f;
            list = this.f3925i.f3930g;
            if (i >= list.size()) {
                m2077a().remove();
                return;
            }
            C1345k8 c1345k8 = this.f3925i;
            int i2 = this.f3922f;
            this.f3922f = i2 - 1;
            c1345k8.m2058l(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
