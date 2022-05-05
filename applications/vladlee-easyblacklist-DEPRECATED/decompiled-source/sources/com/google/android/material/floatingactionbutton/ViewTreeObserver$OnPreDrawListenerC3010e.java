package com.google.android.material.floatingactionbutton;

import android.view.ViewTreeObserver;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.floatingactionbutton.e */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/e.class */
public final class ViewTreeObserver$OnPreDrawListenerC3010e implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    final /* synthetic */ C3001b f18293a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTreeObserver$OnPreDrawListenerC3010e(C3001b bVar) {
        this.f18293a = bVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        this.f18293a.m1126h();
        return true;
    }
}
