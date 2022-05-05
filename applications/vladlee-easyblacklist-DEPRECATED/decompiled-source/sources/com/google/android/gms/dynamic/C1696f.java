package com.google.android.gms.dynamic;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;
/* renamed from: com.google.android.gms.dynamic.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/f.class */
final class C1696f implements DeferredLifecycleHelper.AbstractC1690a {

    /* renamed from: a */
    private final /* synthetic */ DeferredLifecycleHelper f7046a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1696f(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.f7046a = deferredLifecycleHelper;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: a */
    public final int mo5541a() {
        return 5;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: b */
    public final void mo5540b() {
        LifecycleDelegate lifecycleDelegate;
        lifecycleDelegate = this.f7046a.f7023a;
        lifecycleDelegate.onResume();
    }
}
