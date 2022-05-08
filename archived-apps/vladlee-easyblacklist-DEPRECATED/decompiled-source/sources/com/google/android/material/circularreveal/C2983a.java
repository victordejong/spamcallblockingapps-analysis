package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import com.google.android.material.circularreveal.AbstractC2987d;
/* renamed from: com.google.android.material.circularreveal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/a.class */
public final class C2983a {
    /* renamed from: a */
    public static Animator.AnimatorListener m1223a(AbstractC2987d dVar) {
        return new C2984b(dVar);
    }

    /* renamed from: a */
    public static Animator m1222a(AbstractC2987d dVar, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(dVar, (Property<AbstractC2987d, V>) AbstractC2987d.C2989b.f18188a, (TypeEvaluator) AbstractC2987d.C2988a.f18186a, (Object[]) new AbstractC2987d.C2991d[]{new AbstractC2987d.C2991d(f, f2, f3)});
        if (Build.VERSION.SDK_INT < 21) {
            return ofObject;
        }
        AbstractC2987d.C2991d l_ = dVar.mo1201l_();
        if (l_ != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) dVar, (int) f, (int) f2, l_.f18192c, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }
}
