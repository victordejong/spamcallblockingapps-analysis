package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/zaa.class */
public final /* synthetic */ class zaa implements Comparator {
    static final Comparator zaq = new zaa();

    private zaa() {
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compareTo;
        compareTo = ((Scope) obj).getScopeUri().compareTo(((Scope) obj2).getScopeUri());
        return compareTo;
    }
}
