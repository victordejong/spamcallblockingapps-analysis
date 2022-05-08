package com.android.contacts.airview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
/* loaded from: classes-dex2jar.jar:com/android/contacts/airview/GuideLinePopup.class */
public final class GuideLinePopup {
    PolitCanvas g;
    protected int h;
    protected int i;

    /* renamed from: b  reason: collision with root package name */
    View f545b = null;
    int c = 0;
    int d = 0;
    Rect e = new Rect();
    Rect f = new Rect();

    /* renamed from: a  reason: collision with root package name */
    PopupWindow f544a = new PopupWindow();

    /* loaded from: classes-dex2jar.jar:com/android/contacts/airview/GuideLinePopup$PolitCanvas.class */
    public static class PolitCanvas extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        int f546a;

        /* renamed from: b  reason: collision with root package name */
        private float f547b;
        private float c;
        private float d;
        private float e;
        private boolean h = false;
        private Paint f = new Paint();
        private Paint g = new Paint();

        public PolitCanvas(Context context) {
            super(context);
            this.f546a = 5;
            setBackgroundColor(0);
            this.f.setColor(-16596738);
            this.f.setAlpha(127);
            this.f.setStrokeWidth(a(2));
            this.f.setAntiAlias(true);
            this.f.setDither(true);
            this.f.setStyle(Paint.Style.FILL);
            this.g.setColor(-16596738);
            this.g.setAlpha(127);
            this.g.setStrokeWidth(a(2));
            this.g.setAlpha(127);
            this.g.setAntiAlias(true);
            this.g.setDither(true);
            this.g.setStyle(Paint.Style.FILL);
            this.f546a = a(5);
        }

        private int a(int i) {
            return (int) TypedValue.applyDimension(1, i, getContext().getResources().getDisplayMetrics());
        }

        @Override // android.view.View
        public void draw(Canvas canvas) {
            super.draw(canvas);
            if (this.h) {
                canvas.save();
                canvas.drawLine(this.f547b, this.c, this.d, this.e, this.f);
                this.f.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                canvas.drawCircle(this.d, this.e, this.f546a, this.f);
                this.f.setXfermode(null);
                canvas.drawCircle(this.d, this.e, this.f546a, this.g);
                canvas.restore();
            }
        }

        public void setGuideLine(float f, float f2, float f3, float f4) {
            this.f547b = f;
            this.c = f2;
            this.d = f3;
            this.e = f4;
            postInvalidateOnAnimation();
        }

        public void setGuideLineEndPoint(float f, float f2) {
            this.d = f;
            this.e = f2;
            postInvalidateOnAnimation();
        }

        public void setLineVisible(boolean z) {
            this.h = z;
        }
    }

    public GuideLinePopup(Context context) {
        this.f544a.setTouchable(false);
        this.f544a.setClippingEnabled(false);
        this.f544a.setBackgroundDrawable(null);
        this.g = new PolitCanvas(context);
        this.g.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    }

    public final void a() {
        View view = this.f545b;
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        view.getLocationInWindow(iArr);
        view.getLocationOnScreen(iArr2);
        this.h = iArr2[0] - iArr[0];
        this.i = iArr2[1] - iArr[1];
        Rect rect = this.e;
        int i = this.g.f546a + 1;
        rect.set(iArr[0] - i, iArr[1] - i, iArr[0] + view.getWidth() + i, view.getHeight() + iArr[1] + i);
        Rect rect2 = this.f;
        rect2.set(rect);
        rect2.union(this.c, this.d);
        this.g.setGuideLine(this.c - this.f.left, this.d - this.f.top, this.c - this.f.left, this.d - this.f.top);
    }

    public final void a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 7) {
            this.g.setGuideLineEndPoint((motionEvent.getRawX() - this.f.left) - this.h, (motionEvent.getRawY() - this.f.top) - this.i);
        }
    }
}
