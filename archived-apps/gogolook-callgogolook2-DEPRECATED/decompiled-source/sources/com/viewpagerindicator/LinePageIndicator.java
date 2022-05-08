package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.viewpager.widget.ViewPager;
import p081h.p450p.AbstractC10836c;
/* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/LinePageIndicator.class */
public class LinePageIndicator extends View implements AbstractC10836c {

    /* renamed from: a */
    public final Paint f10166a;

    /* renamed from: b */
    public final Paint f10167b;

    /* renamed from: c */
    public ViewPager f10168c;

    /* renamed from: d */
    public ViewPager.OnPageChangeListener f10169d;

    /* renamed from: e */
    public int f10170e;

    /* renamed from: f */
    public boolean f10171f;

    /* renamed from: g */
    public float f10172g;

    /* renamed from: h */
    public float f10173h;

    /* renamed from: i */
    public int f10174i;

    /* renamed from: j */
    public float f10175j;

    /* renamed from: k */
    public int f10176k;

    /* renamed from: l */
    public boolean f10177l;

    /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/LinePageIndicator$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C4210a();

        /* renamed from: a */
        public int f10178a;

        /* renamed from: com.viewpagerindicator.LinePageIndicator$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/viewpagerindicator/LinePageIndicator$SavedState$a.class */
        public static final class C4210a implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f10178a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f10178a);
        }
    }

    public LinePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.vpiLinePageIndicatorStyle);
    }

    public LinePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10166a = new Paint(1);
        this.f10167b = new Paint(1);
        this.f10175j = -1.0f;
        this.f10176k = -1;
        if (!isInEditMode()) {
            Resources resources = getResources();
            int color = resources.getColor(R$color.default_line_indicator_selected_color);
            int color2 = resources.getColor(R$color.default_line_indicator_unselected_color);
            float dimension = resources.getDimension(R$dimen.default_line_indicator_line_width);
            float dimension2 = resources.getDimension(R$dimen.default_line_indicator_gap_width);
            float dimension3 = resources.getDimension(R$dimen.default_line_indicator_stroke_width);
            boolean z = resources.getBoolean(R$bool.default_line_indicator_centered);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.LinePageIndicator, i, 0);
            this.f10171f = obtainStyledAttributes.getBoolean(R$styleable.LinePageIndicator_centered, z);
            this.f10172g = obtainStyledAttributes.getDimension(R$styleable.LinePageIndicator_lineWidth, dimension);
            this.f10173h = obtainStyledAttributes.getDimension(R$styleable.LinePageIndicator_gapWidth, dimension2);
            m29320a(obtainStyledAttributes.getDimension(R$styleable.LinePageIndicator_strokeWidth, dimension3));
            this.f10166a.setColor(obtainStyledAttributes.getColor(R$styleable.LinePageIndicator_unselectedColor, color2));
            this.f10167b.setColor(obtainStyledAttributes.getColor(R$styleable.LinePageIndicator_selectedColor, color));
            Drawable drawable = obtainStyledAttributes.getDrawable(R$styleable.LinePageIndicator_android_background);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.f10174i = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    /* renamed from: a */
    public final int m29319a(int i) {
        float f;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            f = size;
        } else {
            f = this.f10167b.getStrokeWidth() + getPaddingTop() + getPaddingBottom();
            if (mode == Integer.MIN_VALUE) {
                f = Math.min(f, size);
            }
        }
        return (int) Math.ceil(f);
    }

    /* renamed from: a */
    public void m29320a(float f) {
        this.f10167b.setStrokeWidth(f);
        this.f10166a.setStrokeWidth(f);
        invalidate();
    }

    /* renamed from: b */
    public final int m29318b(int i) {
        float f;
        ViewPager viewPager;
        int count;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824 || (viewPager = this.f10168c) == null) {
            f = size;
        } else {
            float paddingLeft = getPaddingLeft() + getPaddingRight() + (viewPager.getAdapter().getCount() * this.f10172g) + ((count - 1) * this.f10173h);
            f = paddingLeft;
            if (mode == Integer.MIN_VALUE) {
                f = Math.min(paddingLeft, size);
            }
        }
        return (int) Math.ceil(f);
    }

    /* renamed from: c */
    public void m29317c(int i) {
        ViewPager viewPager = this.f10168c;
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
            this.f10170e = i;
            invalidate();
            return;
        }
        throw new IllegalStateException("ViewPager has not been bound.");
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int count;
        super.onDraw(canvas);
        ViewPager viewPager = this.f10168c;
        if (viewPager != null && (count = viewPager.getAdapter().getCount()) != 0) {
            if (this.f10170e >= count) {
                m29317c(count - 1);
                return;
            }
            float f = this.f10172g;
            float f2 = this.f10173h;
            float f3 = f + f2;
            float f4 = count;
            float paddingTop = getPaddingTop();
            float paddingLeft = getPaddingLeft();
            float paddingRight = getPaddingRight();
            float height = paddingTop + (((getHeight() - paddingTop) - getPaddingBottom()) / 2.0f);
            float f5 = paddingLeft;
            if (this.f10171f) {
                f5 = paddingLeft + ((((getWidth() - paddingLeft) - paddingRight) / 2.0f) - (((f4 * f3) - f2) / 2.0f));
            }
            int i = 0;
            while (i < count) {
                float f6 = f5 + (i * f3);
                canvas.drawLine(f6, height, f6 + this.f10172g, height, i == this.f10170e ? this.f10167b : this.f10166a);
                i++;
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(m29318b(i), m29319a(i2));
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10169d;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10169d;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.f10170e = i;
        invalidate();
        ViewPager.OnPageChangeListener onPageChangeListener = this.f10169d;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f10170e = savedState.f10178a;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f10178a = this.f10170e;
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.f10168c;
        int i = 0;
        if (viewPager == null || viewPager.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action == 2) {
                    float x = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f10176k));
                    float f = x - this.f10175j;
                    if (!this.f10177l && Math.abs(f) > this.f10174i) {
                        this.f10177l = true;
                    }
                    if (!this.f10177l) {
                        return true;
                    }
                    this.f10175j = x;
                    if (!this.f10168c.isFakeDragging() && !this.f10168c.beginFakeDrag()) {
                        return true;
                    }
                    this.f10168c.fakeDragBy(f);
                    return true;
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                        this.f10175j = MotionEventCompat.getX(motionEvent, actionIndex);
                        this.f10176k = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                        return true;
                    } else if (action != 6) {
                        return true;
                    } else {
                        int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                        if (MotionEventCompat.getPointerId(motionEvent, actionIndex2) == this.f10176k) {
                            if (actionIndex2 == 0) {
                                i = 1;
                            }
                            this.f10176k = MotionEventCompat.getPointerId(motionEvent, i);
                        }
                        this.f10175j = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.f10176k));
                        return true;
                    }
                }
            }
            if (!this.f10177l) {
                int count = this.f10168c.getAdapter().getCount();
                float width = getWidth();
                float f2 = width / 2.0f;
                float f3 = width / 6.0f;
                if (this.f10170e <= 0 || motionEvent.getX() >= f2 - f3) {
                    if (this.f10170e < count - 1 && motionEvent.getX() > f2 + f3) {
                        if (action == 3) {
                            return true;
                        }
                        this.f10168c.setCurrentItem(this.f10170e + 1);
                        return true;
                    }
                } else if (action == 3) {
                    return true;
                } else {
                    this.f10168c.setCurrentItem(this.f10170e - 1);
                    return true;
                }
            }
            this.f10177l = false;
            this.f10176k = -1;
            if (!this.f10168c.isFakeDragging()) {
                return true;
            }
            this.f10168c.endFakeDrag();
            return true;
        }
        this.f10176k = MotionEventCompat.getPointerId(motionEvent, 0);
        this.f10175j = motionEvent.getX();
        return true;
    }
}
