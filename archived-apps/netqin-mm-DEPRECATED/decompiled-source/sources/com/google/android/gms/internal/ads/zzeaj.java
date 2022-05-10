package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeaj.class */
public final class zzeaj {

    /* renamed from: a */
    public static final CopyOnWriteArrayList<zzeak> f27968a = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public static zzeak m12944a(String str) throws GeneralSecurityException {
        Iterator<zzeak> it = f27968a.iterator();
        while (it.hasNext()) {
            zzeak next = it.next();
            if (next.m12943a(str)) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
