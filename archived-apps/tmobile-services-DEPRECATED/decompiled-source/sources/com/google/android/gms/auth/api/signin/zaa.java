package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/zaa.class */
final /* synthetic */ class zaa implements Comparator {
    private zaa() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((Scope) obj).m15001B().compareTo(((Scope) obj2).m15001B());
        return compareTo;
    }
}
