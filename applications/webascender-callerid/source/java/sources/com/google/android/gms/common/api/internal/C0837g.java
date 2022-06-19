package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.fragment.app.e;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.common.api.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/g.class */
public class C0837g {

    /* renamed from: a */
    private final Object f3401a;

    public C0837g(Activity activity) {
        C0931r.m3307l(activity, "Activity must not be null");
        this.f3401a = activity;
    }

    /* renamed from: a */
    public Activity m3573a() {
        return (Activity) this.f3401a;
    }

    /* renamed from: b */
    public e m3572b() {
        return (e) this.f3401a;
    }

    /* renamed from: c */
    public boolean m3571c() {
        return this.f3401a instanceof e;
    }

    /* renamed from: d */
    public final boolean m3570d() {
        return this.f3401a instanceof Activity;
    }
}
