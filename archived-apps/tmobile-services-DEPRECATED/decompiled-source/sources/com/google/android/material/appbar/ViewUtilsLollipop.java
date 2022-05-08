package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.material.C1027R;
import com.google.android.material.internal.ThemeEnforcement;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/ViewUtilsLollipop.class */
class ViewUtilsLollipop {

    /* renamed from: a */
    private static final int[] f10043a = {16843848};

    ViewUtilsLollipop() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m10626a(@NonNull View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m10625b(@NonNull View view, float f) {
        int integer = view.getResources().getInteger(C1027R.integer.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{16842766, C1027R.attr.state_liftable, -C1027R.attr.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j));
        stateListAnimator.addState(new int[]{16842766}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m10624c(@NonNull View view, AttributeSet attributeSet, int i, int i2) {
        Context context = view.getContext();
        TypedArray h = ThemeEnforcement.m9445h(context, attributeSet, f10043a, i, i2, new int[0]);
        try {
            if (h.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, h.getResourceId(0, 0)));
            }
        } finally {
            h.recycle();
        }
    }
}
