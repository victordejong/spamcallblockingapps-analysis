package com.google.android.material.appbar;

import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3052r;
/* renamed from: com.google.android.material.appbar.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/appbar/g.class */
final class C2946g {

    /* renamed from: a */
    private static final int[] f17911a = {16843848};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1450a(View view) {
        view.setOutlineProvider(ViewOutlineProvider.BOUNDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1449a(View view, float f) {
        int integer = view.getResources().getInteger(C2913a.C2920g.f17504a);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{16842766, C2913a.C2915b.f17450p, -C2913a.C2915b.f17451q}, ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(j));
        stateListAnimator.addState(new int[]{16842766}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", 0.0f).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m1448a(View view, AttributeSet attributeSet, int i) {
        Context context = view.getContext();
        TypedArray a = C3052r.m961a(context, attributeSet, f17911a, 0, i, new int[0]);
        try {
            if (a.hasValue(0)) {
                view.setStateListAnimator(AnimatorInflater.loadStateListAnimator(context, a.getResourceId(0, 0)));
            }
        } finally {
            a.recycle();
        }
    }
}
