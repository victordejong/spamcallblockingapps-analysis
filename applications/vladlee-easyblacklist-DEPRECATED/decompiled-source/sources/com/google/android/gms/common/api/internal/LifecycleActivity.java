package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.internal.Preconditions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleActivity.class */
public class LifecycleActivity {

    /* renamed from: a */
    private final Object f6307a;

    public LifecycleActivity(Activity activity) {
        Preconditions.checkNotNull(activity, "Activity must not be null");
        this.f6307a = activity;
    }

    public LifecycleActivity(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    public Activity asActivity() {
        return (Activity) this.f6307a;
    }

    public FragmentActivity asFragmentActivity() {
        return (FragmentActivity) this.f6307a;
    }

    public Object asObject() {
        return this.f6307a;
    }

    public boolean isChimera() {
        return false;
    }

    public boolean isSupport() {
        return this.f6307a instanceof FragmentActivity;
    }

    public final boolean zzh() {
        return this.f6307a instanceof Activity;
    }
}
