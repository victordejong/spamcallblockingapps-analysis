package com.netqin.p525cm.main.p529ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.RelativeLayout;
/* renamed from: com.netqin.cm.main.ui.FlashButton */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/FlashButton.class */
public class FlashButton extends RelativeLayout {

    /* renamed from: a */
    public boolean f35633a = true;

    /* renamed from: com.netqin.cm.main.ui.FlashButton$a */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/FlashButton$a.class */
    public class RunnableC9149a implements Runnable {
        public RunnableC9149a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FlashButton.this.m3310a();
        }
    }

    /* renamed from: com.netqin.cm.main.ui.FlashButton$b */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/FlashButton$b.class */
    public class C9150b extends AnimatorListenerAdapter {

        /* renamed from: a */
        public final /* synthetic */ C9151c f35635a;

        /* renamed from: b */
        public final /* synthetic */ C9151c f35636b;

        /* renamed from: c */
        public final /* synthetic */ RelativeLayout.LayoutParams f35637c;

        public C9150b(C9151c cVar, C9151c cVar2, RelativeLayout.LayoutParams layoutParams) {
            this.f35635a = cVar;
            this.f35636b = cVar2;
            this.f35637c = layoutParams;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            super.onAnimationEnd(animator);
            this.f35635a.setVisibility(8);
            this.f35636b.setVisibility(8);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            super.onAnimationResume(animator);
            this.f35637c.leftMargin = 0;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.f35635a.setVisibility(0);
            this.f35636b.setVisibility(0);
        }
    }

    /* renamed from: com.netqin.cm.main.ui.FlashButton$c */
    /* loaded from: classes2-dex2jar.jar:com/netqin/cm/main/ui/FlashButton$c.class */
    public class C9151c extends View {

        /* renamed from: a */
        public Paint f35639a;

        /* renamed from: b */
        public int f35640b;

        public C9151c(Context context) {
            super(context);
            m3308a();
        }

        /* renamed from: a */
        public final void m3308a() {
            setVisibility(4);
            int color = getResources().getColor(2131034211);
            Paint paint = new Paint();
            this.f35639a = paint;
            paint.setStyle(Paint.Style.FILL);
            this.f35639a.setColor(color);
        }

        /* renamed from: a */
        public void m3307a(int i) {
            this.f35640b = i;
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            int i;
            super.onDraw(canvas);
            int min = Math.min(getWidth(), getHeight());
            int i2 = min / this.f35640b;
            canvas.save();
            Matrix matrix = new Matrix();
            float f = min;
            matrix.setPolyToPoly(new float[]{0.0f, f, 0.0f, 0.0f, i2, 0.0f}, 0, new float[]{0.0f, f, min / 3, 0.0f, i + i2, 0.0f}, 0, 3);
            canvas.concat(matrix);
            canvas.drawRect(new Rect(0, 0, i2, min), this.f35639a);
            canvas.restore();
        }
    }

    public FlashButton(Context context) {
        super(context);
    }

    public FlashButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FlashButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public final void m3310a() {
        C9151c cVar = new C9151c(getContext());
        cVar.m3307a(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getWidth(), getHeight());
        layoutParams.addRule(9);
        addView(cVar, layoutParams);
        C9151c cVar2 = new C9151c(getContext());
        cVar2.m3307a(4);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(getWidth(), getHeight());
        layoutParams2.addRule(9);
        layoutParams2.leftMargin = 10;
        addView(cVar2, layoutParams2);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(cVar, "translationX", 0.0f, getWidth());
        ofFloat.setStartDelay(30L);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(cVar2, "translationX", 0.0f, getWidth());
        ofFloat2.setInterpolator(new AccelerateDecelerateInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.addListener(new C9150b(cVar, cVar2, layoutParams2));
        animatorSet.setDuration(1000L);
        animatorSet.play(ofFloat2).with(ofFloat);
        animatorSet.start();
        this.f35633a = false;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.f35633a) {
            postDelayed(new RunnableC9149a(), 500L);
        }
    }
}
