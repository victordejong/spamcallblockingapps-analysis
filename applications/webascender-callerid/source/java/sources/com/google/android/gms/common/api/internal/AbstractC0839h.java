package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
/* renamed from: com.google.android.gms.common.api.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/h.class */
public interface AbstractC0839h {
    /* renamed from: j0 */
    <T extends LifecycleCallback> T m3569j0(String str, Class<T> cls);

    /* renamed from: m0 */
    Activity m3568m0();

    /* renamed from: p */
    void m3567p(String str, LifecycleCallback lifecycleCallback);

    void startActivityForResult(Intent intent, int i);
}
