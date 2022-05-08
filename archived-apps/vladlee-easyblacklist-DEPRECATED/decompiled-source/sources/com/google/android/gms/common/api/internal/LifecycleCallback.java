package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleCallback.class */
public class LifecycleCallback {

    /* renamed from: a */
    protected final LifecycleFragment f6308a;

    /* JADX INFO: Access modifiers changed from: protected */
    public LifecycleCallback(LifecycleFragment lifecycleFragment) {
        this.f6308a = lifecycleFragment;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public static LifecycleFragment m5920a(LifecycleActivity lifecycleActivity) {
        if (lifecycleActivity.isSupport()) {
            return zzc.zza(lifecycleActivity.asFragmentActivity());
        }
        if (lifecycleActivity.zzh()) {
            return zza.zza(lifecycleActivity.asActivity());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    private static LifecycleFragment getChimeraLifecycleFragmentImpl(LifecycleActivity lifecycleActivity) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    public static LifecycleFragment getFragment(Activity activity) {
        return m5920a(new LifecycleActivity(activity));
    }

    public static LifecycleFragment getFragment(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity getActivity() {
        return this.f6308a.getLifecycleActivity();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onCreate(Bundle bundle) {
    }

    public void onDestroy() {
    }

    public void onResume() {
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
    }

    public void onStop() {
    }
}
