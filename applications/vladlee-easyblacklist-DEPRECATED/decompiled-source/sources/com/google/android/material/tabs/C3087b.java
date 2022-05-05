package com.google.android.material.tabs;

import android.animation.ValueAnimator;
import com.google.android.material.p060a.C2925a;
import com.google.android.material.tabs.TabLayout;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.tabs.b */
/* loaded from: classes-dex2jar.jar:com/google/android/material/tabs/b.class */
public final class C3087b implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ int f18626a;

    /* renamed from: b */
    final /* synthetic */ int f18627b;

    /* renamed from: c */
    final /* synthetic */ int f18628c;

    /* renamed from: d */
    final /* synthetic */ int f18629d;

    /* renamed from: e */
    final /* synthetic */ TabLayout.C3081e f18630e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3087b(TabLayout.C3081e eVar, int i, int i2, int i3, int i4) {
        this.f18630e = eVar;
        this.f18626a = i;
        this.f18627b = i2;
        this.f18628c = i3;
        this.f18629d = i4;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float animatedFraction = valueAnimator.getAnimatedFraction();
        this.f18630e.m870a(C2925a.m1548a(this.f18626a, this.f18627b, animatedFraction), C2925a.m1548a(this.f18628c, this.f18629d, animatedFraction));
    }
}
