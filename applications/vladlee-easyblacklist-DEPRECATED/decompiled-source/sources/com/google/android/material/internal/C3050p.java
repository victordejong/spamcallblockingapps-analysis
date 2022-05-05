package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.C1224bf;
import androidx.transition.Transition;
import java.util.Map;
/* renamed from: com.google.android.material.internal.p */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/p.class */
public final class C3050p extends Transition {
    /* renamed from: d */
    private static void m964d(C1224bf bfVar) {
        if (bfVar.f5246b instanceof TextView) {
            bfVar.f5245a.put("android:textscale:scale", Float.valueOf(((TextView) bfVar.f5246b).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final Animator mo967a(ViewGroup viewGroup, C1224bf bfVar, C1224bf bfVar2) {
        ValueAnimator valueAnimator = null;
        if (bfVar != null) {
            valueAnimator = null;
            if (bfVar2 != null) {
                valueAnimator = null;
                if (bfVar.f5246b instanceof TextView) {
                    if (!(bfVar2.f5246b instanceof TextView)) {
                        valueAnimator = null;
                    } else {
                        TextView textView = (TextView) bfVar2.f5246b;
                        Map<String, Object> map = bfVar.f5245a;
                        Map<String, Object> map2 = bfVar2.f5245a;
                        float f = 1.0f;
                        float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
                        if (map2.get("android:textscale:scale") != null) {
                            f = ((Float) map2.get("android:textscale:scale")).floatValue();
                        }
                        if (floatValue == f) {
                            return null;
                        }
                        valueAnimator = ValueAnimator.ofFloat(floatValue, f);
                        valueAnimator.addUpdateListener(new C3051q(this, textView));
                    }
                }
            }
        }
        return valueAnimator;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        m964d(bfVar);
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo965b(C1224bf bfVar) {
        m964d(bfVar);
    }
}
