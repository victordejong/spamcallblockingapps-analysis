package com.google.android.gms.internal;

import com.google.android.gms.common.api.a;
import com.google.android.gms.internal.av;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bf.class */
public final class bf {

    /* renamed from: a  reason: collision with root package name */
    static final av.a<?, ?>[] f4153a = new av.a[0];

    /* renamed from: b  reason: collision with root package name */
    final Set<av.a<?, ?>> f4154b = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    final a c = new a() { // from class: com.google.android.gms.internal.bf.1
    };
    private final Map<a.d<?>, a.f> d = new android.support.v4.b.a();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/bf$a.class */
    interface a {
    }

    public bf(a.d<?> dVar, a.f fVar) {
        this.d.put(dVar, fVar);
    }
}
