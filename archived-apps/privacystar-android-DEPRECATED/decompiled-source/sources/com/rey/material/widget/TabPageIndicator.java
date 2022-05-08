package com.rey.material.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p001v4.view.PagerAdapter;
import android.support.p001v4.view.ViewPager;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.privacystar.core.util.text.Text;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.RippleDrawable;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.ViewUtil;
@TargetApi(16)
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabPageIndicator.class */
public class TabPageIndicator extends HorizontalScrollView implements ViewPager.OnPageChangeListener, View.OnClickListener, ThemeManager.OnThemeChangedListener {
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLL = 0;
    private boolean mIndicatorAtTop;
    private int mIndicatorHeight;
    private int mIndicatorOffset;
    private int mIndicatorWidth;
    private boolean mIsRtl;
    private ViewPager.OnPageChangeListener mListener;
    private int mMode;
    private Paint mPaint;
    private boolean mScrolling;
    private int mSelectedPosition;
    protected int mStyleId;
    private Runnable mTabAnimSelector;
    private TabContainerLayout mTabContainer;
    private int mTabPadding;
    private int mTabRippleStyle;
    private boolean mTabSingleLine;
    private int mTextAppearance;
    private ViewPager mViewPager;
    protected int mCurrentStyle = Integer.MIN_VALUE;
    private DataSetObserver mObserver = new DataSetObserver() { // from class: com.rey.material.widget.TabPageIndicator.1
        @Override // android.database.DataSetObserver
        public void onChanged() {
            TabPageIndicator.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            TabPageIndicator.this.notifyDataSetInvalidated();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabPageIndicator$TabContainerLayout.class */
    public class TabContainerLayout extends FrameLayout {
        public TabContainerLayout(Context context) {
            super(context);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (TabPageIndicator.this.mIsRtl) {
                int childCount = getChildCount();
                for (int i7 = 0; i7 < childCount; i7++) {
                    View childAt = getChildAt(i7);
                    childAt.layout(i5 - childAt.getMeasuredWidth(), 0, i5, i6);
                    i5 -= childAt.getMeasuredWidth();
                }
                return;
            }
            int childCount2 = getChildCount();
            int i8 = 0;
            for (int i9 = 0; i9 < childCount2; i9++) {
                View childAt2 = getChildAt(i9);
                childAt2.layout(i8, 0, childAt2.getMeasuredWidth() + i8, i6);
                i8 += childAt2.getMeasuredWidth();
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3;
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            if (TabPageIndicator.this.mMode == 0) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                int i4 = 0;
                i3 = 0;
                for (int i5 = 0; i5 < getChildCount(); i5++) {
                    View childAt = getChildAt(i5);
                    childAt.measure(makeMeasureSpec, i2);
                    i4 += childAt.getMeasuredWidth();
                    i3 = Math.max(i3, childAt.getMeasuredHeight());
                }
                setMeasuredDimension(i4, i3);
            } else if (mode != 1073741824) {
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                int i6 = 0;
                i3 = 0;
                for (int i7 = 0; i7 < getChildCount(); i7++) {
                    View childAt2 = getChildAt(i7);
                    childAt2.measure(makeMeasureSpec2, i2);
                    i6 += childAt2.getMeasuredWidth();
                    i3 = Math.max(i3, childAt2.getMeasuredHeight());
                }
                if (mode == 0 || i6 < size) {
                    setMeasuredDimension(size, i3);
                } else {
                    int childCount = getChildCount();
                    int i8 = childCount == 0 ? 0 : size / childCount;
                    for (int i9 = 0; i9 < childCount; i9++) {
                        View childAt3 = getChildAt(i9);
                        int i10 = childCount - 1;
                        if (i9 != i10) {
                            childAt3.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), i2);
                        } else {
                            childAt3.measure(View.MeasureSpec.makeMeasureSpec(size - (i10 * i8), 1073741824), i2);
                        }
                    }
                    setMeasuredDimension(size, i3);
                }
            } else {
                int childCount2 = getChildCount();
                int i11 = childCount2 == 0 ? 0 : size / childCount2;
                i3 = 0;
                for (int i12 = 0; i12 < childCount2; i12++) {
                    View childAt4 = getChildAt(i12);
                    int i13 = childCount2 - 1;
                    if (i12 != i13) {
                        childAt4.measure(View.MeasureSpec.makeMeasureSpec(i11, 1073741824), i2);
                    } else {
                        childAt4.measure(View.MeasureSpec.makeMeasureSpec(size - (i13 * i11), 1073741824), i2);
                    }
                    i3 = Math.max(i3, childAt4.getMeasuredHeight());
                }
                setMeasuredDimension(size, i3);
            }
            int makeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
            for (int i14 = 0; i14 < getChildCount(); i14++) {
                View childAt5 = getChildAt(i14);
                if (childAt5.getMeasuredHeight() != i3) {
                    childAt5.measure(View.MeasureSpec.makeMeasureSpec(childAt5.getMeasuredWidth(), 1073741824), makeMeasureSpec3);
                }
            }
        }
    }

    public TabPageIndicator(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public TabPageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    private void addTemporaryTab() {
        int i = 0;
        while (i < 3) {
            String str = i == 0 ? "TAB ONE" : i == 1 ? "TAB TWO" : i == 2 ? "TAB THREE" : null;
            CheckedTextView checkedTextView = new CheckedTextView(getContext());
            checkedTextView.setCheckMarkDrawable((Drawable) null);
            checkedTextView.setText(str);
            checkedTextView.setGravity(17);
            if (Build.VERSION.SDK_INT >= 17) {
                checkedTextView.setTextAlignment(1);
            }
            checkedTextView.setTextAppearance(getContext(), this.mTextAppearance);
            checkedTextView.setSingleLine(true);
            checkedTextView.setEllipsize(TextUtils.TruncateAt.END);
            checkedTextView.setTag(Integer.valueOf(i));
            checkedTextView.setChecked(i == 0);
            if (this.mMode == 0) {
                checkedTextView.setPadding(this.mTabPadding, 0, this.mTabPadding, 0);
                this.mTabContainer.addView(checkedTextView, new ViewGroup.LayoutParams(-2, -1));
            } else if (this.mMode == 1) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
                layoutParams.weight = 1.0f;
                this.mTabContainer.addView(checkedTextView, layoutParams);
            }
            i++;
        }
    }

    private void animateToTab(final int i) {
        if (getTabView(i) != null) {
            if (this.mTabAnimSelector != null) {
                removeCallbacks(this.mTabAnimSelector);
            }
            this.mTabAnimSelector = new Runnable() { // from class: com.rey.material.widget.TabPageIndicator.2
                @Override // java.lang.Runnable
                public void run() {
                    CheckedTextView tabView = TabPageIndicator.this.getTabView(i);
                    if (tabView != null) {
                        if (!TabPageIndicator.this.mScrolling) {
                            TabPageIndicator.this.updateIndicator(tabView.getLeft(), tabView.getMeasuredWidth());
                        }
                        TabPageIndicator.this.smoothScrollTo((tabView.getLeft() - ((TabPageIndicator.this.getWidth() - tabView.getWidth()) / 2)) + TabPageIndicator.this.getPaddingLeft(), 0);
                    }
                    TabPageIndicator.this.mTabAnimSelector = null;
                }
            };
            post(this.mTabAnimSelector);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CheckedTextView getTabView(int i) {
        return (CheckedTextView) this.mTabContainer.getChildAt(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDataSetChanged() {
        this.mTabContainer.removeAllViews();
        PagerAdapter adapter = this.mViewPager.getAdapter();
        int count = adapter.getCount();
        if (this.mSelectedPosition > count) {
            this.mSelectedPosition = count - 1;
        }
        for (int i = 0; i < count; i++) {
            CharSequence pageTitle = adapter.getPageTitle(i);
            CharSequence charSequence = pageTitle;
            if (pageTitle == null) {
                charSequence = Text.NULL;
            }
            CheckedTextView checkedTextView = new CheckedTextView(getContext());
            checkedTextView.setCheckMarkDrawable((Drawable) null);
            checkedTextView.setText(charSequence);
            checkedTextView.setGravity(17);
            if (Build.VERSION.SDK_INT >= 17) {
                checkedTextView.setTextAlignment(1);
            }
            checkedTextView.setTextAppearance(getContext(), this.mTextAppearance);
            if (this.mTabSingleLine) {
                checkedTextView.setSingleLine(true);
            } else {
                checkedTextView.setSingleLine(false);
                checkedTextView.setMaxLines(2);
            }
            checkedTextView.setEllipsize(TextUtils.TruncateAt.END);
            checkedTextView.setOnClickListener(this);
            checkedTextView.setTag(Integer.valueOf(i));
            if (this.mTabRippleStyle > 0) {
                ViewUtil.setBackground(checkedTextView, new RippleDrawable.Builder(getContext(), this.mTabRippleStyle).build());
            }
            checkedTextView.setPadding(this.mTabPadding, 0, this.mTabPadding, 0);
            this.mTabContainer.addView(checkedTextView, new ViewGroup.LayoutParams(-2, -1));
        }
        setCurrentItem(this.mSelectedPosition);
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyDataSetInvalidated() {
        PagerAdapter adapter = this.mViewPager.getAdapter();
        int count = adapter.getCount();
        for (int i = 0; i < count; i++) {
            CheckedTextView tabView = getTabView(i);
            if (tabView != null) {
                CharSequence pageTitle = adapter.getPageTitle(i);
                CharSequence charSequence = pageTitle;
                if (pageTitle == null) {
                    charSequence = Text.NULL;
                }
                tabView.setText(charSequence);
            }
        }
        requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIndicator(int i, int i2) {
        this.mIndicatorOffset = i;
        this.mIndicatorWidth = i2;
        invalidate();
    }

    public void applyStyle(int i) {
        ViewUtil.applyStyle(this, i);
        applyStyle(getContext(), null, 0, i);
    }

    protected void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.TabPageIndicator, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i3 = -1;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < indexCount; i6++) {
            int index = obtainStyledAttributes.getIndex(i6);
            if (index == C1686R.styleable.TabPageIndicator_tpi_tabPadding) {
                this.mTabPadding = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i4 = i4;
                i5 = i5;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_tabRipple) {
                i5 = obtainStyledAttributes.getResourceId(index, 0);
                i4 = i4;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_indicatorColor) {
                this.mPaint.setColor(obtainStyledAttributes.getColor(index, 0));
                i4 = i4;
                i5 = i5;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_indicatorHeight) {
                this.mIndicatorHeight = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i4 = i4;
                i5 = i5;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_indicatorAtTop) {
                this.mIndicatorAtTop = obtainStyledAttributes.getBoolean(index, true);
                i4 = i4;
                i5 = i5;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_tabSingleLine) {
                this.mTabSingleLine = obtainStyledAttributes.getBoolean(index, true);
                i4 = i4;
                i5 = i5;
            } else if (index == C1686R.styleable.TabPageIndicator_android_textAppearance) {
                i4 = obtainStyledAttributes.getResourceId(index, 0);
                i5 = i5;
            } else {
                i4 = i4;
                i5 = i5;
                if (index == C1686R.styleable.TabPageIndicator_tpi_mode) {
                    i3 = obtainStyledAttributes.getInteger(index, 0);
                    i5 = i5;
                    i4 = i4;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (this.mTabPadding < 0) {
            this.mTabPadding = ThemeUtil.dpToPx(context, 12);
        }
        if (this.mIndicatorHeight < 0) {
            this.mIndicatorHeight = ThemeUtil.dpToPx(context, 2);
        }
        if (i3 >= 0 && (this.mMode != i3 || getChildCount() == 0)) {
            this.mMode = i3;
            removeAllViews();
            if (this.mMode == 0) {
                addView(this.mTabContainer, new ViewGroup.LayoutParams(-2, -1));
                setFillViewport(false);
            } else if (this.mMode == 1) {
                addView(this.mTabContainer, new ViewGroup.LayoutParams(-1, -1));
                setFillViewport(true);
            }
        }
        if (!(i4 == 0 || this.mTextAppearance == i4)) {
            this.mTextAppearance = i4;
            int childCount = this.mTabContainer.getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                ((CheckedTextView) this.mTabContainer.getChildAt(i7)).setTextAppearance(context, this.mTextAppearance);
            }
        }
        if (!(i5 == 0 || i5 == this.mTabRippleStyle)) {
            this.mTabRippleStyle = i5;
            int childCount2 = this.mTabContainer.getChildCount();
            for (int i8 = 0; i8 < childCount2; i8++) {
                ViewUtil.setBackground(this.mTabContainer.getChildAt(i8), new RippleDrawable.Builder(getContext(), this.mTabRippleStyle).build());
            }
        }
        if (this.mViewPager != null) {
            notifyDataSetChanged();
        }
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void draw(@NonNull Canvas canvas) {
        int height;
        super.draw(canvas);
        int paddingLeft = this.mIndicatorOffset + getPaddingLeft();
        float f = paddingLeft;
        float height2 = this.mIndicatorAtTop ? 0 : getHeight() - this.mIndicatorHeight;
        canvas.drawRect(f, height2, paddingLeft + this.mIndicatorWidth, this.mIndicatorHeight + height, this.mPaint);
        if (isInEditMode()) {
            canvas.drawRect(getPaddingLeft(), height2, getPaddingLeft() + this.mTabContainer.getChildAt(0).getWidth(), height + this.mIndicatorHeight, this.mPaint);
        }
    }

    protected void init(Context context, AttributeSet attributeSet, int i, int i2) {
        setHorizontalScrollBarEnabled(false);
        this.mTabPadding = -1;
        this.mTabSingleLine = true;
        this.mIndicatorHeight = -1;
        this.mIndicatorAtTop = false;
        this.mScrolling = false;
        this.mIsRtl = false;
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(ThemeUtil.colorAccent(context, -1));
        this.mTabContainer = new TabContainerLayout(context);
        applyStyle(context, attributeSet, i, i2);
        if (isInEditMode()) {
            addTemporaryTab();
        }
        if (!isInEditMode()) {
            this.mStyleId = ThemeManager.getStyleId(context, attributeSet, i, i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mTabAnimSelector != null) {
            post(this.mTabAnimSelector);
        }
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().registerOnThemeChangedListener(this);
            onThemeChanged(null);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (intValue == this.mSelectedPosition && this.mListener != null) {
            this.mListener.onPageSelected(intValue);
        }
        this.mViewPager.setCurrentItem(intValue, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mTabAnimSelector != null) {
            removeCallbacks(this.mTabAnimSelector);
        }
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().unregisterOnThemeChangedListener(this);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i5 = i;
        if (i != 0) {
            i5 = View.MeasureSpec.makeMeasureSpec((size - getPaddingLeft()) - getPaddingRight(), mode);
        }
        if (mode2 != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec((size2 - getPaddingTop()) - getPaddingBottom(), mode2);
        }
        this.mTabContainer.measure(i5, i2);
        if (mode == Integer.MIN_VALUE) {
            i3 = Math.min(this.mTabContainer.getMeasuredWidth() + getPaddingLeft() + getPaddingRight(), size);
        } else if (mode != 0) {
            i3 = size;
            if (mode != 1073741824) {
                i3 = 0;
            }
        } else {
            i3 = getPaddingRight() + this.mTabContainer.getMeasuredWidth() + getPaddingLeft();
        }
        if (mode2 == Integer.MIN_VALUE) {
            i4 = Math.min(this.mTabContainer.getMeasuredHeight() + getPaddingTop() + getPaddingBottom(), size2);
        } else if (mode2 != 0) {
            i4 = size2;
            if (mode2 != 1073741824) {
                i4 = 0;
            }
        } else {
            i4 = this.mTabContainer.getMeasuredHeight() + getPaddingTop() + getPaddingBottom();
        }
        if (!(this.mTabContainer.getMeasuredWidth() == (i3 - getPaddingLeft()) - getPaddingRight() && this.mTabContainer.getMeasuredHeight() == (i4 - getPaddingTop()) - getPaddingBottom())) {
            this.mTabContainer.measure(View.MeasureSpec.makeMeasureSpec((i3 - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((i4 - getPaddingTop()) - getPaddingBottom(), 1073741824));
        }
        setMeasuredDimension(i3, i4);
    }

    @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        if (i == 0) {
            this.mScrolling = false;
            CheckedTextView tabView = getTabView(this.mSelectedPosition);
            if (tabView != null) {
                updateIndicator(tabView.getLeft(), tabView.getMeasuredWidth());
            }
        } else {
            this.mScrolling = true;
        }
        if (this.mListener != null) {
            this.mListener.onPageScrollStateChanged(i);
        }
    }

    @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        if (this.mListener != null) {
            this.mListener.onPageScrolled(i, f, i2);
        }
        CheckedTextView tabView = getTabView(i);
        CheckedTextView tabView2 = getTabView(i + 1);
        if (tabView != null && tabView2 != null) {
            int measuredWidth = tabView.getMeasuredWidth();
            int measuredWidth2 = tabView2.getMeasuredWidth();
            float f2 = (measuredWidth + measuredWidth2) / 2.0f;
            float f3 = measuredWidth;
            int i3 = (int) (((measuredWidth2 - measuredWidth) * f) + f3 + 0.5f);
            updateIndicator((int) ((((tabView.getLeft() + (f3 / 2.0f)) + (f2 * f)) - (i3 / 2.0f)) + 0.5f), i3);
        }
    }

    @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        setCurrentItem(i);
        if (this.mListener != null) {
            this.mListener.onPageSelected(i);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (this.mIsRtl != z) {
            this.mIsRtl = z;
            invalidate();
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        CheckedTextView tabView = getTabView(this.mSelectedPosition);
        if (tabView != null) {
            updateIndicator(tabView.getLeft(), tabView.getMeasuredWidth());
        }
    }

    @Override // com.rey.material.app.ThemeManager.OnThemeChangedListener
    public void onThemeChanged(ThemeManager.OnThemeChangedEvent onThemeChangedEvent) {
        int currentStyle = ThemeManager.getInstance().getCurrentStyle(this.mStyleId);
        if (this.mCurrentStyle != currentStyle) {
            this.mCurrentStyle = currentStyle;
            applyStyle(this.mCurrentStyle);
        }
    }

    public void setCurrentItem(int i) {
        CheckedTextView tabView;
        if (!(this.mSelectedPosition == i || (tabView = getTabView(this.mSelectedPosition)) == null)) {
            tabView.setChecked(false);
        }
        this.mSelectedPosition = i;
        CheckedTextView tabView2 = getTabView(this.mSelectedPosition);
        if (tabView2 != null) {
            tabView2.setChecked(true);
        }
        animateToTab(i);
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.mListener = onPageChangeListener;
    }

    public void setViewPager(@Nullable ViewPager viewPager) {
        if (this.mViewPager != viewPager) {
            if (this.mViewPager != null) {
                this.mViewPager.removeOnPageChangeListener(this);
                PagerAdapter adapter = this.mViewPager.getAdapter();
                if (adapter != null) {
                    adapter.unregisterDataSetObserver(this.mObserver);
                }
            }
            this.mViewPager = viewPager;
            if (this.mViewPager != null) {
                PagerAdapter adapter2 = this.mViewPager.getAdapter();
                if (adapter2 == null) {
                    throw new IllegalStateException("ViewPager does not have adapter instance.");
                }
                adapter2.registerDataSetObserver(this.mObserver);
                this.mViewPager.addOnPageChangeListener(this);
                notifyDataSetChanged();
                onPageSelected(this.mViewPager.getCurrentItem());
                return;
            }
            this.mTabContainer.removeAllViews();
        }
    }

    public void setViewPager(ViewPager viewPager, int i) {
        setViewPager(viewPager);
        setCurrentItem(i);
    }
}
