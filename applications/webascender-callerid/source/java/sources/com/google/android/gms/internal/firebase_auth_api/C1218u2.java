package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.t2;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.u2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/u2.class */
public final class C1218u2 {

    /* renamed from: a */
    private static final CopyOnWriteArrayList<AbstractC1212t2> f3816a = new CopyOnWriteArrayList<>();

    /* renamed from: a */
    public static t2 m2396a(String str) throws GeneralSecurityException {
        Iterator<AbstractC1212t2> it = f3816a.iterator();
        while (it.hasNext()) {
            AbstractC1212t2 next = it.next();
            if (next.m2399g(str)) {
                return next;
            }
        }
        String valueOf = String.valueOf(str);
        throw new GeneralSecurityException(valueOf.length() != 0 ? "No KMS client does support: ".concat(valueOf) : new String("No KMS client does support: "));
    }
}
