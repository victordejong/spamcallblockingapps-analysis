package com.tmobile.services.nameid.p007ui.animation;

import android.animation.ValueAnimator;
import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "onAnimationUpdate"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.animation.AnimUtils$changeDimensions$1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/animation/AnimUtils$changeDimensions$1.class */
final class AnimUtils$changeDimensions$1 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    final /* synthetic */ View f13857a;

    /* renamed from: b */
    final /* synthetic */ int f13858b;

    /* renamed from: c */
    final /* synthetic */ int f13859c;

    /* renamed from: d */
    final /* synthetic */ int f13860d;

    /* renamed from: e */
    final /* synthetic */ int f13861e;

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator it) {
        Intrinsics.m1831d(it, "it");
        Object animatedValue = it.getAnimatedValue();
        if (animatedValue != null) {
            float floatValue = ((Float) animatedValue).floatValue();
            this.f13857a.getLayoutParams().width = (int) ((this.f13858b * floatValue) + this.f13859c);
            this.f13857a.getLayoutParams().height = (int) ((floatValue * this.f13860d) + this.f13861e);
            this.f13857a.requestLayout();
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
    }
}
