package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdit;
import java.util.Collections;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adi.class */
public final class adi implements zzdit.AbstractC2441a {

    /* renamed from: a */
    private final /* synthetic */ zzdid f7254a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adi(zzdid zzdidVar) {
        this.f7254a = zzdidVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: a */
    public final zzdid<?> mo3523a() {
        return this.f7254a;
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: a */
    public final <Q> zzdid<Q> mo3522a(Class<Q> cls) {
        if (this.f7254a.zzarz().equals(cls)) {
            return this.f7254a;
        }
        throw new InternalError("This should never be called, as we always first check supportedPrimitives.");
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: b */
    public final Class<?> mo3521b() {
        return this.f7254a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: c */
    public final Set<Class<?>> mo3520c() {
        return Collections.singleton(this.f7254a.zzarz());
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: d */
    public final Class<?> mo3519d() {
        return null;
    }
}
