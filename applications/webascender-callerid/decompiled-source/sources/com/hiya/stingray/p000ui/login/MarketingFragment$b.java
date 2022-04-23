package com.hiya.stingray.p000ui.login;

import android.animation.Animator;
/* renamed from: com.hiya.stingray.ui.login.MarketingFragment$b */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/MarketingFragment$b.class */
class MarketingFragment$b implements Animator.AnimatorListener {

    /* renamed from: a */
    final /* synthetic */ boolean f114a;

    /* renamed from: b */
    final /* synthetic */ MarketingFragment f115b;

    MarketingFragment$b(MarketingFragment marketingFragment, boolean z) {
        this.f115b = marketingFragment;
        this.f114a = z;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        MarketingFragment.g1(this.f115b, this.f114a);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        MarketingFragment.g1(this.f115b, this.f114a);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
