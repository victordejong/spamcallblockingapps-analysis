package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdrt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aif.class */
final class aif implements aiu {

    /* renamed from: a */
    private static final aif f7414a = new aif();

    private aif() {
    }

    /* renamed from: a */
    public static aif m5329a() {
        return f7414a;
    }

    @Override // com.google.android.gms.internal.ads.aiu
    /* renamed from: a */
    public final boolean mo5298a(Class<?> cls) {
        return zzdrt.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.aiu
    /* renamed from: b */
    public final aiv mo5297b(Class<?> cls) {
        if (!zzdrt.class.isAssignableFrom(cls)) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(valueOf.length() != 0 ? "Unsupported message type: ".concat(valueOf) : new String("Unsupported message type: "));
        }
        try {
            return (aiv) zzdrt.m3365a((Class<zzdrt>) cls.asSubclass(zzdrt.class)).mo3009a(zzdrt.zze.zzhmu, (Object) null);
        } catch (Exception e) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(valueOf2.length() != 0 ? "Unable to get message info for ".concat(valueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
