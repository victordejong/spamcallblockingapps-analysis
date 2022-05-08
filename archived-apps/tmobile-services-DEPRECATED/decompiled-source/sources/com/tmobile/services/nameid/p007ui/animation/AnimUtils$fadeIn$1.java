package com.tmobile.services.nameid.p007ui.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.tmobile.services.nameid.p007ui.animation.AnimUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001��\b\n\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"com/tmobile/services/nameid/ui/animation/AnimUtils$fadeIn$1", "Landroid/animation/AnimatorListenerAdapter;", "Landroid/animation/Animator;", "animation", "", "onAnimationCancel", "(Landroid/animation/Animator;)V", "onAnimationEnd", "onAnimationStart", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.animation.AnimUtils$fadeIn$1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/animation/AnimUtils$fadeIn$1.class */
public final class AnimUtils$fadeIn$1 extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ View f13868a;

    /* renamed from: b */
    final /* synthetic */ AnimUtils.AnimationCallback f13869b;

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(@NotNull Animator animation) {
        Intrinsics.m1830e(animation, "animation");
        this.f13868a.setAlpha(1.0f);
        AnimUtils.AnimationCallback animationCallback = this.f13869b;
        if (animationCallback != null) {
            animationCallback.m6234a();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(@NotNull Animator animation) {
        Intrinsics.m1830e(animation, "animation");
        AnimUtils.AnimationCallback animationCallback = this.f13869b;
        if (animationCallback != null) {
            animationCallback.m6233b();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(@NotNull Animator animation) {
        Intrinsics.m1830e(animation, "animation");
        this.f13868a.setVisibility(0);
    }
}
