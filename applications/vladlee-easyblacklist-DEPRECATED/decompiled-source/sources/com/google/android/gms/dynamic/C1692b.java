package com.google.android.gms.dynamic;

import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
/* renamed from: com.google.android.gms.dynamic.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/b.class */
final class C1692b implements DeferredLifecycleHelper.AbstractC1690a {

    /* renamed from: a */
    private final /* synthetic */ Bundle f7033a;

    /* renamed from: b */
    private final /* synthetic */ DeferredLifecycleHelper f7034b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1692b(DeferredLifecycleHelper deferredLifecycleHelper, Bundle bundle) {
        this.f7034b = deferredLifecycleHelper;
        this.f7033a = bundle;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: a */
    public final int mo5541a() {
        return 1;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: b */
    public final void mo5540b() {
        LifecycleDelegate lifecycleDelegate;
        lifecycleDelegate = this.f7034b.f7023a;
        lifecycleDelegate.onCreate(this.f7033a);
    }
}
