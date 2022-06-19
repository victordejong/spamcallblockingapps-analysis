package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* renamed from: com.google.android.gms.auth.api.signin.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/d.class */
final /* synthetic */ class C0767d implements Comparator {

    /* renamed from: f */
    static final Comparator f3259f = new C0767d();

    private C0767d() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return GoogleSignInAccount.H1((Scope) obj, (Scope) obj2);
    }
}
