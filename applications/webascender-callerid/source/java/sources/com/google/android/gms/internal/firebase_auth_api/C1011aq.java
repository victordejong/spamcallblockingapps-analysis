package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.aq;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.aq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/aq.class */
public final class C1011aq {

    /* renamed from: b */
    private static volatile aq f3666b;

    /* renamed from: c */
    static final aq f3667c = new C1011aq(true);

    /* renamed from: a */
    private final Map<C1282zp, d<?, ?>> f3668a;

    C1011aq() {
        this.f3668a = new HashMap();
    }

    C1011aq(boolean z) {
        this.f3668a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static aq m3024a() {
        aq aqVar = f3666b;
        aq aqVar2 = aqVar;
        if (aqVar == null) {
            synchronized (aq.class) {
                try {
                    aq aqVar3 = f3666b;
                    aqVar2 = aqVar3;
                    if (aqVar3 == null) {
                        aqVar2 = f3667c;
                        f3666b = aqVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return aqVar2;
    }

    /* renamed from: b */
    public final <ContainingType extends f0> d<ContainingType, ?> m3023b(ContainingType containingtype, int i) {
        return (d<ContainingType, ?>) this.f3668a.get(new C1282zp(containingtype, i));
    }
}
