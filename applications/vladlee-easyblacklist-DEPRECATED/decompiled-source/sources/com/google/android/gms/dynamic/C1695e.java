package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
/* renamed from: com.google.android.gms.dynamic.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/e.class */
final class C1695e implements DeferredLifecycleHelper.AbstractC1690a {

    /* renamed from: a */
    private final /* synthetic */ FrameLayout f7041a;

    /* renamed from: b */
    private final /* synthetic */ LayoutInflater f7042b;

    /* renamed from: c */
    private final /* synthetic */ ViewGroup f7043c;

    /* renamed from: d */
    private final /* synthetic */ Bundle f7044d;

    /* renamed from: e */
    private final /* synthetic */ DeferredLifecycleHelper f7045e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1695e(DeferredLifecycleHelper deferredLifecycleHelper, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f7045e = deferredLifecycleHelper;
        this.f7041a = frameLayout;
        this.f7042b = layoutInflater;
        this.f7043c = viewGroup;
        this.f7044d = bundle;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: a */
    public final int mo5541a() {
        return 2;
    }

    @Override // com.google.android.gms.dynamic.DeferredLifecycleHelper.AbstractC1690a
    /* renamed from: b */
    public final void mo5540b() {
        LifecycleDelegate lifecycleDelegate;
        this.f7041a.removeAllViews();
        FrameLayout frameLayout = this.f7041a;
        lifecycleDelegate = this.f7045e.f7023a;
        frameLayout.addView(lifecycleDelegate.onCreateView(this.f7042b, this.f7043c, this.f7044d));
    }
}
