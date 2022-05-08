package com.rey.material.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import com.rey.material.drawable.BlankDrawable;
import com.rey.material.util.ThemeUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/YearPicker.class */
public class YearPicker extends ListView {
    private static final int[][] STATES = {new int[]{-16842912}, new int[]{16842912}};
    private static final String YEAR_FORMAT = "%4d";
    private YearAdapter mAdapter;
    private int mAnimDuration;
    private int mDistanceShift;
    private Interpolator mInInterpolator;
    private int mItemHeight;
    private int mItemRealHeight;
    private OnYearChangedListener mOnYearChangedListener;
    private Interpolator mOutInterpolator;
    private int mPadding;
    private Paint mPaint;
    private int mPositionShift;
    private int mSelectionColor;
    private int[] mTextColors = {ViewCompat.MEASURED_STATE_MASK, -1};
    private int mTextSize;
    private Typeface mTypeface;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/YearPicker$OnYearChangedListener.class */
    public interface OnYearChangedListener {
        void onYearChanged(int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/YearPicker$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.rey.material.widget.YearPicker.SavedState.1
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
        };
        int year;
        int yearMax;
        int yearMin;

        private SavedState(Parcel parcel) {
            super(parcel);
            this.yearMin = parcel.readInt();
            this.yearMax = parcel.readInt();
            this.year = parcel.readInt();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "YearPicker.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " yearMin=" + this.yearMin + " yearMax=" + this.yearMax + " year=" + this.year + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.yearMin));
            parcel.writeValue(Integer.valueOf(this.yearMax));
            parcel.writeValue(Integer.valueOf(this.year));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/YearPicker$YearAdapter.class */
    public class YearAdapter extends BaseAdapter implements View.OnClickListener {
        private int mMinYear = 1990;
        private int mMaxYear = 2147483646;
        private int mCurYear = -1;

        public YearAdapter() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return (this.mMaxYear - this.mMinYear) + 1;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(this.mMinYear + i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        public int getMaxYear() {
            return this.mMaxYear;
        }

        public int getMinYear() {
            return this.mMinYear;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            CircleCheckedTextView circleCheckedTextView = (CircleCheckedTextView) view;
            boolean z = false;
            CircleCheckedTextView circleCheckedTextView2 = circleCheckedTextView;
            if (circleCheckedTextView == null) {
                circleCheckedTextView2 = new CircleCheckedTextView(YearPicker.this.getContext());
                circleCheckedTextView2.setGravity(17);
                if (Build.VERSION.SDK_INT >= 17) {
                    circleCheckedTextView2.setTextAlignment(4);
                }
                circleCheckedTextView2.setMinHeight(YearPicker.this.mItemRealHeight);
                circleCheckedTextView2.setMaxHeight(YearPicker.this.mItemRealHeight);
                circleCheckedTextView2.setAnimDuration(YearPicker.this.mAnimDuration);
                circleCheckedTextView2.setInterpolator(YearPicker.this.mInInterpolator, YearPicker.this.mOutInterpolator);
                circleCheckedTextView2.setBackgroundColor(YearPicker.this.mSelectionColor);
                circleCheckedTextView2.setTypeface(YearPicker.this.mTypeface);
                circleCheckedTextView2.setTextSize(0, YearPicker.this.mTextSize);
                circleCheckedTextView2.setTextColor(new ColorStateList(YearPicker.STATES, YearPicker.this.mTextColors));
                circleCheckedTextView2.setOnClickListener(this);
            }
            int intValue = ((Integer) getItem(i)).intValue();
            circleCheckedTextView2.setTag(Integer.valueOf(intValue));
            circleCheckedTextView2.setText(String.format(YearPicker.YEAR_FORMAT, Integer.valueOf(intValue)));
            if (intValue == this.mCurYear) {
                z = true;
            }
            circleCheckedTextView2.setCheckedImmediately(z);
            return circleCheckedTextView2;
        }

        public int getYear() {
            return this.mCurYear;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            setYear(((Integer) view.getTag()).intValue());
        }

        public int positionOfYear(int i) {
            return i - this.mMinYear;
        }

        public void setYear(int i) {
            if (this.mCurYear != i) {
                int i2 = this.mCurYear;
                this.mCurYear = i;
                CircleCheckedTextView circleCheckedTextView = (CircleCheckedTextView) YearPicker.this.getChildAt(positionOfYear(i2) - YearPicker.this.getFirstVisiblePosition());
                if (circleCheckedTextView != null) {
                    circleCheckedTextView.setChecked(false);
                }
                CircleCheckedTextView circleCheckedTextView2 = (CircleCheckedTextView) YearPicker.this.getChildAt(positionOfYear(this.mCurYear) - YearPicker.this.getFirstVisiblePosition());
                if (circleCheckedTextView2 != null) {
                    circleCheckedTextView2.setChecked(true);
                }
                if (YearPicker.this.mOnYearChangedListener != null) {
                    YearPicker.this.mOnYearChangedListener.onYearChanged(i2, this.mCurYear);
                }
            }
        }

        public void setYearRange(int i, int i2) {
            if (this.mMinYear != i || this.mMaxYear != i2) {
                this.mMinYear = i;
                this.mMaxYear = i2;
                notifyDataSetChanged();
            }
        }
    }

    public YearPicker(Context context) {
        super(context);
    }

    public YearPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public YearPicker(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void measureItemHeight() {
        if (this.mItemRealHeight <= 0) {
            this.mPaint.setTextSize(this.mTextSize);
            this.mItemRealHeight = Math.max(Math.round(this.mPaint.measureText("9999", 0, 4)) + (this.mPadding * 2), this.mItemHeight);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x02b6, code lost:
        if (r9 >= 0) goto L_0x02b9;
     */
    @Override // com.rey.material.widget.ListView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void applyStyle(android.content.Context r7, android.util.AttributeSet r8, int r9, int r10) {
        /*
            Method dump skipped, instructions count: 815
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rey.material.widget.YearPicker.applyStyle(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    public int getYear() {
        return this.mAdapter.getYear();
    }

    public void goTo(int i) {
        int positionOfYear = this.mAdapter.positionOfYear(i) - this.mPositionShift;
        int i2 = this.mDistanceShift;
        int i3 = positionOfYear;
        if (positionOfYear < 0) {
            i3 = 0;
            i2 = 0;
        }
        postSetSelectionFromTop(i3, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.rey.material.widget.ListView
    public void init(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mTextSize = -1;
        this.mItemHeight = -1;
        this.mAnimDuration = -1;
        this.mTypeface = Typeface.DEFAULT;
        this.mItemRealHeight = -1;
        setWillNotDraw(false);
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mAdapter = new YearAdapter();
        setAdapter((ListAdapter) this.mAdapter);
        setScrollBarStyle(33554432);
        setSelector(BlankDrawable.getInstance());
        setDividerHeight(0);
        setCacheColorHint(0);
        setClipToPadding(false);
        this.mPadding = ThemeUtil.dpToPx(context, 4);
        this.mSelectionColor = ThemeUtil.colorPrimary(context, ViewCompat.MEASURED_STATE_MASK);
        super.init(context, attributeSet, i, i2);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        measureItemHeight();
        if (mode != 1073741824) {
            if (mode == Integer.MIN_VALUE) {
                int min = Math.min(this.mAdapter.getCount(), size / this.mItemRealHeight);
                i3 = size;
                if (min >= 3) {
                    int i4 = this.mItemRealHeight;
                    int i5 = min;
                    if (min % 2 == 0) {
                        i5 = min - 1;
                    }
                    i3 = i4 * i5;
                }
            } else {
                i3 = this.mItemRealHeight * this.mAdapter.getCount();
            }
            i2 = View.MeasureSpec.makeMeasureSpec(i3 + getPaddingTop() + getPaddingBottom(), 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.AbsListView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setYearRange(savedState.yearMin, savedState.yearMax);
        setYear(savedState.year);
    }

    @Override // android.widget.AbsListView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.yearMin = this.mAdapter.getMinYear();
        savedState.yearMax = this.mAdapter.getMaxYear();
        savedState.year = this.mAdapter.getYear();
        return savedState;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        float f = ((i2 / this.mItemRealHeight) - 1.0f) / 2.0f;
        this.mPositionShift = (int) Math.floor(f);
        this.mPositionShift = f > ((float) this.mPositionShift) ? this.mPositionShift + 1 : this.mPositionShift;
        this.mDistanceShift = ((int) ((f - this.mPositionShift) * this.mItemRealHeight)) - getPaddingTop();
        goTo(this.mAdapter.getYear());
    }

    public void postSetSelectionFromTop(final int i, final int i2) {
        post(new Runnable() { // from class: com.rey.material.widget.YearPicker.1
            @Override // java.lang.Runnable
            public void run() {
                YearPicker.this.setSelectionFromTop(i, i2);
                YearPicker.this.requestLayout();
            }
        });
    }

    public void setOnYearChangedListener(OnYearChangedListener onYearChangedListener) {
        this.mOnYearChangedListener = onYearChangedListener;
    }

    public void setYear(int i) {
        if (this.mAdapter.getYear() != i) {
            this.mAdapter.setYear(i);
            goTo(i);
        }
    }

    public void setYearRange(int i, int i2) {
        this.mAdapter.setYearRange(i, i2);
    }
}
