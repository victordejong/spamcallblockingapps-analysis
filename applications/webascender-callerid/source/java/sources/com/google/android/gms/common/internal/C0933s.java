package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C0944j;
/* renamed from: com.google.android.gms.common.internal.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/s.class */
public class C0933s {

    /* renamed from: a */
    private final Resources f3561a;

    /* renamed from: b */
    private final String f3562b;

    public C0933s(Context context) {
        C0931r.m3308k(context);
        Resources resources = context.getResources();
        this.f3561a = resources;
        this.f3562b = resources.getResourcePackageName(C0944j.f3569a);
    }

    /* renamed from: a */
    public String m3302a(String str) {
        int identifier = this.f3561a.getIdentifier(str, "string", this.f3562b);
        if (identifier == 0) {
            return null;
        }
        return this.f3561a.getString(identifier);
    }
}
