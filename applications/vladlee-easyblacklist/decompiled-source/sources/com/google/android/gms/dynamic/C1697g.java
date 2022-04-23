package com.google.android.gms.dynamic;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;
/* renamed from: com.google.android.gms.dynamic.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/g.class */
final class C1697g implements DeferredLifecycleHelper.AbstractC1690a {

    /* renamed from: a */
    private final /* synthetic */ DeferredLifecycleHelper f7047a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1697g(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.f7047a = deferredLifecycleHelper;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: a */
    public final int mo5541a() {
        return 4;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: b */
    public final void mo5540b() {
        LifecycleDelegate lifecycleDelegate;
        lifecycleDelegate = this.f7047a.f7023a;
        lifecycleDelegate.onStart();
    }
}
