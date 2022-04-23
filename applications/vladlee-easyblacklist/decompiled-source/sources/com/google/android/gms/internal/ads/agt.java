package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/agt.class */
final class agt extends ThreadLocal<SecureRandom> {
    @Override // java.lang.ThreadLocal
    protected final /* synthetic */ SecureRandom initialValue() {
        return zzdpn.m3417a();
    }
}
