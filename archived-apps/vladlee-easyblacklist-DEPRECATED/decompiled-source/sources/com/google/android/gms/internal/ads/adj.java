package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdit;
import java.security.GeneralSecurityException;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/adj.class */
final class adj implements zzdit.AbstractC2441a {

    /* renamed from: a */
    private final /* synthetic */ zzdiu f7255a;

    /* renamed from: b */
    private final /* synthetic */ zzdii f7256b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public adj(zzdiu zzdiuVar, zzdii zzdiiVar) {
        this.f7255a = zzdiuVar;
        this.f7256b = zzdiiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: a */
    public final zzdid<?> mo3523a() {
        zzdiu zzdiuVar = this.f7255a;
        return new zzdir(zzdiuVar, this.f7256b, zzdiuVar.m3534a());
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: a */
    public final <Q> zzdid<Q> mo3522a(Class<Q> cls) {
        try {
            return new zzdir(this.f7255a, this.f7256b, cls);
        } catch (IllegalArgumentException e) {
            throw new GeneralSecurityException("Primitive type not supported", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: b */
    public final Class<?> mo3521b() {
        return this.f7255a.getClass();
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: c */
    public final Set<Class<?>> mo3520c() {
        return this.f7255a.zzase();
    }

    @Override // com.google.android.gms.internal.ads.zzdit.AbstractC2441a
    /* renamed from: d */
    public final Class<?> mo3519d() {
        return this.f7256b.getClass();
    }
}
