package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleActivity.class */
public class LifecycleActivity {

    /* renamed from: a */
    public final Object f23156a;

    @KeepForSdk
    /* renamed from: a */
    public Activity m17632a() {
        return (Activity) this.f23156a;
    }

    @KeepForSdk
    /* renamed from: b */
    public FragmentActivity m17631b() {
        return (FragmentActivity) this.f23156a;
    }

    @KeepForSdk
    /* renamed from: c */
    public boolean m17630c() {
        return this.f23156a instanceof FragmentActivity;
    }

    /* renamed from: d */
    public final boolean m17629d() {
        return this.f23156a instanceof Activity;
    }
}
