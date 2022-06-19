package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* renamed from: com.google.android.gms.auth.api.signin.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/f.class */
final class C0769f implements Comparator<Scope> {
    C0769f() {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Scope scope, Scope scope2) {
        return scope.y1().compareTo(scope2.y1());
    }
}
