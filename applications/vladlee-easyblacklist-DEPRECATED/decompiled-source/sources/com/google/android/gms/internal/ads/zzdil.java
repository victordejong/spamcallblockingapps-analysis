package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdil.class */
public final class zzdil {

    /* renamed from: a */
    private static final CopyOnWriteArrayList<zzdim> f14315a = new CopyOnWriteArrayList<>();

    public static zzdim zzgu(String str) {
        Iterator<zzdim> it = f14315a.iterator();
        while (it.hasNext()) {
            zzdim next = it.next();
            if (next.zzgv(str)) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
