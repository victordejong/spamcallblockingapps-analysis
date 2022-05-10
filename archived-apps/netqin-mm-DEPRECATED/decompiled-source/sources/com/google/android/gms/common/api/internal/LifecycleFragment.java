package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.common.annotation.KeepForSdk;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/LifecycleFragment.class */
public interface LifecycleFragment {
    @KeepForSdk
    /* renamed from: a */
    <T extends LifecycleCallback> T mo17442a(String str, Class<T> cls);

    @KeepForSdk
    /* renamed from: a */
    void mo17444a(String str, LifecycleCallback lifecycleCallback);

    @KeepForSdk
    /* renamed from: c */
    Activity mo17439c();

    @KeepForSdk
    void startActivityForResult(Intent intent, int i);
}
