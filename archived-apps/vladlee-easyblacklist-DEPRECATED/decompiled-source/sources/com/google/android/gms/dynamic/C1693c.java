package com.google.android.gms.dynamic;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
/* renamed from: com.google.android.gms.dynamic.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/c.class */
final class C1693c implements DeferredLifecycleHelper.AbstractC1690a {

    /* renamed from: a */
    private final /* synthetic */ Activity f7035a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f7036b;

    /* renamed from: c */
    private final /* synthetic */ Bundle f7037c;

    /* renamed from: d */
    private final /* synthetic */ DeferredLifecycleHelper f7038d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1693c(DeferredLifecycleHelper deferredLifecycleHelper, Activity activity, Bundle bundle, Bundle bundle2) {
        this.f7038d = deferredLifecycleHelper;
        this.f7035a = activity;
        this.f7036b = bundle;
        this.f7037c = bundle2;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: a */
    public final int mo5541a() {
        return 0;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: b */
    public final void mo5540b() {
        LifecycleDelegate lifecycleDelegate;
        lifecycleDelegate = this.f7038d.f7023a;
        lifecycleDelegate.onInflate(this.f7035a, this.f7036b, this.f7037c);
    }
}
