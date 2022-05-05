package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdit;
import java.security.GeneralSecurityException;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adh.class */
final class adh implements zzdit.AbstractC2441a {

    /* renamed from: a */
    private final /* synthetic */ zzdii f7253a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adh(zzdii zzdiiVar) {
        this.f7253a = zzdiiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: a */
    public final zzdid<?> mo3523a() {
        zzdii zzdiiVar = this.f7253a;
        return new zzdig(zzdiiVar, zzdiiVar.m3534a());
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: a */
    public final <Q> zzdid<Q> mo3522a(Class<Q> cls) {
        try {
            return new zzdig(this.f7253a, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: b */
    public final Class<?> mo3521b() {
        return this.f7253a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: c */
    public final Set<Class<?>> mo3520c() {
        return this.f7253a.zzase();
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: d */
    public final Class<?> mo3519d() {
        return null;
    }
}
