package com.google.android.gms.common.api.internal;

import android.os.Looper;
import com.google.android.gms.common.api.internal.C0842i;
import com.google.android.gms.common.internal.C0931r;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/j.class */
public class C0847j {

    /* renamed from: a */
    private final Set<C0842i<?>> f3420a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: a */
    public static <L> C0842i<L> m3556a(L l, Looper looper, String str) {
        C0931r.m3307l(l, "Listener must not be null");
        C0931r.m3307l(looper, "Looper must not be null");
        C0931r.m3307l(str, "Listener type must not be null");
        return new C0842i<>(looper, l, str);
    }

    /* renamed from: b */
    public static <L> C0842i.C0843a<L> m3555b(L l, String str) {
        C0931r.m3307l(l, "Listener must not be null");
        C0931r.m3307l(str, "Listener type must not be null");
        C0931r.m3311h(str, "Listener type must not be empty");
        return new C0842i.C0843a<>(l, str);
    }

    /* renamed from: c */
    public final void m3554c() {
        for (C0842i<?> c0842i : this.f3420a) {
            c0842i.m3564a();
        }
        this.f3420a.clear();
    }
}
