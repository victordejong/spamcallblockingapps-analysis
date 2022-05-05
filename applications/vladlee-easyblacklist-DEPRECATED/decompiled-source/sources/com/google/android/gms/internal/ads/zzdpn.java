package com.google.android.gms.internal.ads;

import java.security.SecureRandom;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpn.class */
public final class zzdpn {

    /* renamed from: a */
    private static final ThreadLocal<SecureRandom> f14446a = new agt();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ SecureRandom m3417a() {
        SecureRandom secureRandom = new SecureRandom();
        secureRandom.nextLong();
        return secureRandom;
    }

    public static byte[] zzey(int i) {
        byte[] bArr = new byte[i];
        f14446a.get().nextBytes(bArr);
        return bArr;
    }
}
