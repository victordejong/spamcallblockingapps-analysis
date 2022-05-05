package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.auth.api.signin.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/a.class */
public final /* synthetic */ class C1561a implements Comparator {

    /* renamed from: a */
    static final Comparator f6129a = new C1561a();

    private C1561a() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((Scope) obj).getScopeUri().compareTo(((Scope) obj2).getScopeUri());
        return compareTo;
    }
}
