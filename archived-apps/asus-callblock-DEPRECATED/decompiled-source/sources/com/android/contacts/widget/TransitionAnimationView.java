package com.android.contacts.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes-dex2jar.jar:com/android/contacts/widget/TransitionAnimationView.class */
public class TransitionAnimationView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public View f2205a;

    /* renamed from: b  reason: collision with root package name */
    public ObjectAnimator f2206b;

    public TransitionAnimationView(Context context) {
        this(context, null, 0);
    }

    public TransitionAnimationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TransitionAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f2205a = new View(getContext());
        this.f2205a.setVisibility(4);
        this.f2205a.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.f2205a.setBackgroundColor(-1);
        addView(this.f2205a);
    }

    public void setMaskVisibility(boolean z) {
        if (z) {
            this.f2205a.setAlpha(1.0f);
            this.f2205a.setVisibility(0);
            return;
        }
        this.f2205a.setVisibility(4);
    }
}
