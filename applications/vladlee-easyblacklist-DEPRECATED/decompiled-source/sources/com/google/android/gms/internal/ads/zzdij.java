package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdij.class */
public final class zzdij {

    /* renamed from: a */
    private zzdnk f14313a;

    private zzdij(zzdnk zzdnkVar) {
        this.f14313a = zzdnkVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final zzdij m3532a(zzdnk zzdnkVar) {
        if (zzdnkVar != null && zzdnkVar.zzavx() > 0) {
            return new zzdij(zzdnkVar);
        }
        throw new GeneralSecurityException("empty keyset");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final zzdnk m3533a() {
        return this.f14313a;
    }

    public final String toString() {
        return adk.m5449a(this.f14313a).toString();
    }
}
