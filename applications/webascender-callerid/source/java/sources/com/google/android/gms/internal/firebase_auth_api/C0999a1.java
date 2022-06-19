package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.c1;
import com.google.android.gms.internal.firebase-auth-api.u0;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.a1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/a1.class */
final class C0999a1 implements Iterator<Map.Entry> {

    /* renamed from: f */
    private int f3644f = -1;

    /* renamed from: g */
    private boolean f3645g;

    /* renamed from: h */
    private Iterator<Map.Entry> f3646h;

    /* renamed from: i */
    final /* synthetic */ c1 f3647i;

    public /* synthetic */ C0999a1(c1 c1Var, u0 u0Var) {
        this.f3647i = c1Var;
    }

    /* renamed from: a */
    private final Iterator<Map.Entry> m3040a() {
        Map map;
        if (this.f3646h == null) {
            map = ((C1026c1) this.f3647i).f3679h;
            this.f3646h = map.entrySet().iterator();
        }
        return this.f3646h;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        List list;
        Map map;
        boolean z = true;
        int i = this.f3644f + 1;
        list = ((C1026c1) this.f3647i).f3678g;
        if (i >= list.size()) {
            map = ((C1026c1) this.f3647i).f3679h;
            if (map.isEmpty()) {
                z = false;
            } else if (!m3040a().hasNext()) {
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
        this.f3645g = true;
        int i = this.f3644f + 1;
        this.f3644f = i;
        list = ((C1026c1) this.f3647i).f3678g;
        if (i < list.size()) {
            list2 = ((C1026c1) this.f3647i).f3678g;
            obj = list2.get(this.f3644f);
        } else {
            obj = m3040a().next();
        }
        return (Map.Entry) obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        List list;
        if (this.f3645g) {
            this.f3645g = false;
            this.f3647i.m2965n();
            int i = this.f3644f;
            list = ((C1026c1) this.f3647i).f3678g;
            if (i >= list.size()) {
                m3040a().remove();
                return;
            }
            c1 c1Var = this.f3647i;
            int i2 = this.f3644f;
            this.f3644f = i2 - 1;
            c1Var.m2967l(i2);
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
