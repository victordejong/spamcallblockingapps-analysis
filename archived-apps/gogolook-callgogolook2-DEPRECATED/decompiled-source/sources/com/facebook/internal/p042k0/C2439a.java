package com.facebook.internal.p042k0;

import androidx.annotation.RestrictTo;
import com.facebook.internal.C2455m;
import com.facebook.internal.p042k0.p043c.C2444a;
import com.facebook.internal.p042k0.p044d.C2449b;
import p081h.p154f.C6135n;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: com.facebook.internal.k0.a */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/a.class */
public class C2439a {

    /* renamed from: com.facebook.internal.k0.a$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/a$a.class */
    public static final class C2440a implements C2455m.AbstractC2458c {
        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                C2444a.m34708a();
            }
        }
    }

    /* renamed from: com.facebook.internal.k0.a$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/k0/a$b.class */
    public static final class C2441b implements C2455m.AbstractC2458c {
        @Override // com.facebook.internal.C2455m.AbstractC2458c
        /* renamed from: a */
        public void mo23727a(boolean z) {
            if (z) {
                C2449b.m34694a();
            }
        }
    }

    /* renamed from: a */
    public static void m34718a() {
        if (C6135n.m23742i()) {
            C2455m.m34685a(C2455m.EnumC2459d.CrashReport, new C2440a());
            C2455m.m34685a(C2455m.EnumC2459d.ErrorReport, new C2441b());
        }
    }
}
