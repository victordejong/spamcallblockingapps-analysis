package com.google.android.material.transformation;

import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/ExpandableTransformationBehavior.class */
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* renamed from: a */
    private AnimatorSet f18722a;

    public ExpandableTransformationBehavior() {
    }

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableBehavior
    /* renamed from: a */
    public boolean mo751a(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f18722a != null;
        if (z3) {
            this.f18722a.cancel();
        }
        this.f18722a = mo754b(view, view2, z, z3);
        this.f18722a.addListener(new C3099b(this));
        this.f18722a.start();
        if (z2) {
            return true;
        }
        this.f18722a.end();
        return true;
    }

    /* renamed from: b */
    protected abstract AnimatorSet mo754b(View view, View view2, boolean z, boolean z2);
}
