package com.google.android.material.tabs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.tabs.TabLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.tabs.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/c.class */
public final class C3088c extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ int f18631a;

    /* renamed from: b */
    final /* synthetic */ TabLayout.C3081e f18632b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3088c(TabLayout.C3081e eVar, int i) {
        this.f18632b = eVar;
        this.f18631a = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        TabLayout.C3081e eVar = this.f18632b;
        eVar.f18594a = this.f18631a;
        eVar.f18595b = 0.0f;
    }
}
