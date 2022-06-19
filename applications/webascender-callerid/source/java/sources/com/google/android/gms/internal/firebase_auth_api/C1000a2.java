package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.a2;
import com.google.android.gms.internal.firebase-auth-api.fg;
import com.google.android.gms.internal.firebase-auth-api.fj;
import com.google.android.gms.internal.firebase-auth-api.gh;
import com.google.android.gms.internal.firebase-auth-api.z1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.a2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/a2.class */
public final class C1000a2 {

    /* renamed from: a */
    private final gh f3648a;

    /* renamed from: b */
    private final z1 f3649b;

    private C1000a2(z1 z1Var) {
        fg fgVar = fg.b;
        this.f3649b = z1Var;
        this.f3648a = fgVar;
    }

    /* renamed from: a */
    public static a2 m3039a(char c) {
        return new C1000a2(new kp(new de('.')));
    }

    /* renamed from: b */
    public static a2 m3038b(String str) {
        fj m2788b = C1116jn.m2788b("[.-]");
        if (!m2788b.m2876a("").a.matches()) {
            return new C1000a2(new y(m2788b));
        }
        throw new IllegalArgumentException(C1014b2.m3018c("The pattern may not match the empty string: %s", m2788b));
    }

    /* renamed from: c */
    public final List<String> m3037c(CharSequence charSequence) {
        Objects.requireNonNull(charSequence);
        Iterator<String> m2277a = this.f3649b.m2277a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (m2277a.hasNext()) {
            arrayList.add(m2277a.next());
        }
        return Collections.unmodifiableList(arrayList);
    }
}
