package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabn.class */
public final class zzabn {

    /* renamed from: b */
    private static final AtomicReference<zzabo> f10825b = new AtomicReference<>();

    /* renamed from: a */
    static final AtomicBoolean f10824a = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static zzabo m4436a() {
        return f10825b.get();
    }

    public static void zza(zzabo zzaboVar) {
        f10825b.set(zzaboVar);
    }
}
