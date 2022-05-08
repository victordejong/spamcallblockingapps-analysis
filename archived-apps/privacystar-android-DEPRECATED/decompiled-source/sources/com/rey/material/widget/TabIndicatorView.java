package com.rey.material.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.p001v4.view.ViewPager;
import android.support.p004v7.widget.DefaultItemAnimator;
import android.support.p004v7.widget.LinearLayoutManager;
import android.support.p004v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.ImageView;
import com.rey.material.C1686R;
import com.rey.material.app.ThemeManager;
import com.rey.material.drawable.RippleDrawable;
import com.rey.material.util.ThemeUtil;
import com.rey.material.util.ViewUtil;
/* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabIndicatorView.class */
public class TabIndicatorView extends RecyclerView implements ThemeManager.OnThemeChangedListener {
    public static final int MODE_FIXED = 1;
    public static final int MODE_SCROLL = 0;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    private Adapter mAdapter;
    private boolean mCenterCurrentTab;
    private TabIndicatorFactory mFactory;
    private boolean mIndicatorAtTop;
    private int mIndicatorHeight;
    private int mIndicatorOffset;
    private int mIndicatorWidth;
    private boolean mIsRtl;
    private RecyclerView.LayoutManager mLayoutManager;
    private int mMode;
    private Paint mPaint;
    private boolean mScrolling;
    private int mSelectedPosition;
    protected int mStyleId;
    private Runnable mTabAnimSelector;
    private int mTabPadding;
    private int mTabRippleStyle;
    private boolean mTabSingleLine;
    private int mTextAppearance;
    protected int mCurrentStyle = Integer.MIN_VALUE;
    private boolean mScrollingToCenter = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabIndicatorView$Adapter.class */
    public class Adapter extends RecyclerView.Adapter<ViewHolder> implements View.OnClickListener {
        static final int TYPE_ICON = 1;
        static final int TYPE_TEXT = 0;
        TabIndicatorFactory mFactory;
        int mFixedWidth;
        int mLastFixedWidth;

        Adapter() {
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.mFactory == null ? 0 : this.mFactory.getTabIndicatorCount();
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return this.mFactory.isIconTabIndicator(i) ? 1 : 0;
        }

        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            int itemViewType = getItemViewType(i);
            ViewGroup.LayoutParams layoutParams = viewHolder.itemView.getLayoutParams();
            boolean z = true;
            boolean z2 = true;
            if (this.mFixedWidth > 0) {
                layoutParams.width = i == getItemCount() - 1 ? this.mLastFixedWidth : this.mFixedWidth;
            } else {
                layoutParams.width = -2;
            }
            viewHolder.itemView.setLayoutParams(layoutParams);
            if (viewHolder.padding != TabIndicatorView.this.mTabPadding) {
                viewHolder.padding = TabIndicatorView.this.mTabPadding;
                viewHolder.itemView.setPadding(TabIndicatorView.this.mTabPadding, 0, TabIndicatorView.this.mTabPadding, 0);
            }
            if (viewHolder.rippleStyle != TabIndicatorView.this.mTabRippleStyle) {
                viewHolder.rippleStyle = TabIndicatorView.this.mTabRippleStyle;
                if (TabIndicatorView.this.mTabRippleStyle > 0) {
                    ViewUtil.setBackground(viewHolder.itemView, new RippleDrawable.Builder(TabIndicatorView.this.getContext(), TabIndicatorView.this.mTabRippleStyle).build());
                }
            }
            switch (itemViewType) {
                case 0:
                    if (viewHolder.textAppearance != TabIndicatorView.this.mTextAppearance) {
                        viewHolder.textAppearance = TabIndicatorView.this.mTextAppearance;
                        viewHolder.textView.setTextAppearance(TabIndicatorView.this.getContext(), TabIndicatorView.this.mTextAppearance);
                    }
                    if (viewHolder.singleLine != TabIndicatorView.this.mTabSingleLine) {
                        viewHolder.singleLine = TabIndicatorView.this.mTabSingleLine;
                        if (TabIndicatorView.this.mTabSingleLine) {
                            viewHolder.textView.setSingleLine(true);
                        } else {
                            viewHolder.textView.setSingleLine(false);
                            viewHolder.textView.setMaxLines(2);
                        }
                    }
                    viewHolder.textView.setText(this.mFactory.getText(i));
                    CheckedTextView checkedTextView = viewHolder.textView;
                    if (i != TabIndicatorView.this.mSelectedPosition) {
                        z = false;
                    }
                    checkedTextView.setChecked(z);
                    return;
                case 1:
                    viewHolder.iconView.setImageDrawable(this.mFactory.getIcon(i));
                    CheckedImageView checkedImageView = viewHolder.iconView;
                    if (i != TabIndicatorView.this.mSelectedPosition) {
                        z2 = false;
                    }
                    checkedImageView.setChecked(z2);
                    return;
                default:
                    return;
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.mFactory.onTabIndicatorSelected(((ViewHolder) view.getTag()).getAdapterPosition());
        }

        @Override // android.support.p004v7.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View view;
            switch (i) {
                case 0:
                    view = new CheckedTextView(viewGroup.getContext());
                    break;
                case 1:
                    view = new CheckedImageView(viewGroup.getContext());
                    break;
                default:
                    view = null;
                    break;
            }
            ViewHolder viewHolder = new ViewHolder(view);
            view.setTag(viewHolder);
            view.setLayoutParams(new ViewGroup.LayoutParams(-2, -1));
            view.setOnClickListener(this);
            switch (i) {
                case 0:
                    viewHolder.textView.setCheckMarkDrawable((Drawable) null);
                    if (Build.VERSION.SDK_INT >= 17) {
                        viewHolder.textView.setTextAlignment(1);
                    }
                    viewHolder.textView.setGravity(17);
                    viewHolder.textView.setEllipsize(TextUtils.TruncateAt.END);
                    viewHolder.textView.setSingleLine(true);
                    break;
                case 1:
                    viewHolder.iconView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    break;
            }
            return viewHolder;
        }

        public void setFactory(TabIndicatorFactory tabIndicatorFactory) {
            if (this.mFactory != null) {
                this.mFactory.setTabIndicatorView(null);
            }
            int itemCount = getItemCount();
            if (itemCount > 0) {
                notifyItemRangeRemoved(0, itemCount);
            }
            this.mFactory = tabIndicatorFactory;
            if (this.mFactory != null) {
                this.mFactory.setTabIndicatorView(TabIndicatorView.this);
            }
            int itemCount2 = getItemCount();
            if (itemCount2 > 0) {
                notifyItemRangeInserted(0, itemCount2);
            }
            if (this.mFactory != null) {
                TabIndicatorView.this.onTabSelected(this.mFactory.getCurrentTabIndicator());
            }
        }

        public void setFixedWidth(int i, int i2) {
            if (this.mFixedWidth != i || this.mLastFixedWidth != i2) {
                this.mFixedWidth = i;
                this.mLastFixedWidth = i2;
                int itemCount = getItemCount();
                if (itemCount > 0) {
                    notifyItemRangeChanged(0, itemCount);
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabIndicatorView$TabIndicatorFactory.class */
    public static abstract class TabIndicatorFactory {
        private TabIndicatorView mView;

        public abstract int getCurrentTabIndicator();

        public abstract Drawable getIcon(int i);

        public abstract int getTabIndicatorCount();

        public abstract CharSequence getText(int i);

        public abstract boolean isIconTabIndicator(int i);

        public final void notifyDataSetChanged() {
            this.mView.getAdapter().notifyDataSetChanged();
        }

        public final void notifyTabChanged(int i) {
            this.mView.getAdapter().notifyItemRangeChanged(i, 1);
        }

        public final void notifyTabInserted(int i) {
            this.mView.getAdapter().notifyItemRangeInserted(i, 1);
        }

        public final void notifyTabMoved(int i, int i2) {
            this.mView.getAdapter().notifyItemMoved(i, i2);
        }

        public final void notifyTabRangeChanged(int i, int i2) {
            this.mView.getAdapter().notifyItemRangeChanged(i, i2);
        }

        public final void notifyTabRangeInserted(int i, int i2) {
            this.mView.getAdapter().notifyItemRangeInserted(i, i2);
        }

        public final void notifyTabRangeRemoved(int i, int i2) {
            this.mView.getAdapter().notifyItemRangeRemoved(i, i2);
        }

        public final void notifyTabRemoved(int i) {
            this.mView.getAdapter().notifyItemRangeRemoved(i, 1);
        }

        public final void notifyTabScrollStateChanged(int i) {
            this.mView.onTabScrollStateChanged(i);
        }

        public final void notifyTabScrolled(int i, float f) {
            this.mView.onTabScrolled(i, f);
        }

        public final void notifyTabSelected(int i) {
            this.mView.onTabSelected(i);
        }

        public abstract void onTabIndicatorSelected(int i);

        protected void setTabIndicatorView(TabIndicatorView tabIndicatorView) {
            this.mView = tabIndicatorView;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabIndicatorView$ViewHolder.class */
    public class ViewHolder extends RecyclerView.ViewHolder {
        CheckedImageView iconView;
        CheckedTextView textView;
        int rippleStyle = 0;
        boolean singleLine = true;
        int textAppearance = 0;
        int padding = 0;

        public ViewHolder(View view) {
            super(view);
            if (view instanceof CheckedImageView) {
                this.iconView = (CheckedImageView) view;
            } else if (view instanceof CheckedTextView) {
                this.textView = (CheckedTextView) view;
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/widget/TabIndicatorView$ViewPagerIndicatorFactory.class */
    public static class ViewPagerIndicatorFactory extends TabIndicatorFactory implements ViewPager.OnPageChangeListener {
        ViewPager mViewPager;

        public ViewPagerIndicatorFactory(ViewPager viewPager) {
            this.mViewPager = viewPager;
            this.mViewPager.addOnPageChangeListener(this);
        }

        @Override // com.rey.material.widget.TabIndicatorView.TabIndicatorFactory
        public int getCurrentTabIndicator() {
            return this.mViewPager.getCurrentItem();
        }

        @Override // com.rey.material.widget.TabIndicatorView.TabIndicatorFactory
        public Drawable getIcon(int i) {
            return null;
        }

        @Override // com.rey.material.widget.TabIndicatorView.TabIndicatorFactory
        public int getTabIndicatorCount() {
            return this.mViewPager.getAdapter().getCount();
        }

        @Override // com.rey.material.widget.TabIndicatorView.TabIndicatorFactory
        public CharSequence getText(int i) {
            return this.mViewPager.getAdapter().getPageTitle(i);
        }

        @Override // com.rey.material.widget.TabIndicatorView.TabIndicatorFactory
        public boolean isIconTabIndicator(int i) {
            return false;
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            switch (i) {
                case 0:
                    notifyTabScrollStateChanged(0);
                    return;
                case 1:
                    notifyTabScrollStateChanged(1);
                    return;
                case 2:
                    notifyTabScrollStateChanged(2);
                    return;
                default:
                    return;
            }
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            notifyTabScrolled(i, f);
        }

        @Override // android.support.p001v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            notifyTabSelected(i);
        }

        @Override // com.rey.material.widget.TabIndicatorView.TabIndicatorFactory
        public void onTabIndicatorSelected(int i) {
            this.mViewPager.setCurrentItem(i, true);
        }
    }

    public TabIndicatorView(Context context) {
        super(context);
        init(context, null, 0, 0);
    }

    public TabIndicatorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet, 0, 0);
    }

    public TabIndicatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet, i, 0);
    }

    private void animateToTab(final int i) {
        if (i >= 0 && i < this.mAdapter.getItemCount()) {
            if (this.mTabAnimSelector != null) {
                removeCallbacks(this.mTabAnimSelector);
            }
            this.mTabAnimSelector = new Runnable() { // from class: com.rey.material.widget.TabIndicatorView.2
                @Override // java.lang.Runnable
                public void run() {
                    View findViewByPosition = TabIndicatorView.this.mLayoutManager.findViewByPosition(i);
                    if (!TabIndicatorView.this.mScrolling) {
                        TabIndicatorView.this.updateIndicator(findViewByPosition);
                    }
                    TabIndicatorView.this.smoothScrollToPosition(TabIndicatorView.this.mSelectedPosition);
                    TabIndicatorView.this.mTabAnimSelector = null;
                }
            };
            post(this.mTabAnimSelector);
        }
    }

    private void updateIndicator(int i, int i2) {
        this.mIndicatorOffset = i;
        this.mIndicatorWidth = i2;
        invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateIndicator(View view) {
        if (view != null) {
            updateIndicator(view.getLeft(), view.getMeasuredWidth());
            ((Checkable) view).setChecked(true);
            return;
        }
        updateIndicator(getWidth(), 0);
    }

    public void applyStyle(int i) {
        ViewUtil.applyStyle(this, i);
        applyStyle(getContext(), null, 0, i);
    }

    protected void applyStyle(Context context, AttributeSet attributeSet, int i, int i2) {
        boolean z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.TabPageIndicator, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        int i3 = -1;
        boolean z2 = false;
        boolean z3 = false;
        int i4 = -1;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < indexCount; i7++) {
            int index = obtainStyledAttributes.getIndex(i7);
            if (index == C1686R.styleable.TabPageIndicator_tpi_tabPadding) {
                i3 = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                z2 = z2;
                z3 = z3;
                i5 = i5;
                i6 = i6;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_tabRipple) {
                i6 = obtainStyledAttributes.getResourceId(index, 0);
                i3 = i3;
                z2 = z2;
                z3 = z3;
                i5 = i5;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_indicatorColor) {
                this.mPaint.setColor(obtainStyledAttributes.getColor(index, 0));
                i3 = i3;
                z2 = z2;
                z3 = z3;
                i5 = i5;
                i6 = i6;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_indicatorHeight) {
                this.mIndicatorHeight = obtainStyledAttributes.getDimensionPixelSize(index, 0);
                i3 = i3;
                z2 = z2;
                z3 = z3;
                i5 = i5;
                i6 = i6;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_indicatorAtTop) {
                this.mIndicatorAtTop = obtainStyledAttributes.getBoolean(index, true);
                i3 = i3;
                z2 = z2;
                z3 = z3;
                i5 = i5;
                i6 = i6;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_tabSingleLine) {
                z3 = obtainStyledAttributes.getBoolean(index, true);
                z2 = true;
                i3 = i3;
                i5 = i5;
                i6 = i6;
            } else if (index == C1686R.styleable.TabPageIndicator_tpi_centerCurrentTab) {
                this.mCenterCurrentTab = obtainStyledAttributes.getBoolean(index, true);
                i3 = i3;
                z2 = z2;
                z3 = z3;
                i5 = i5;
                i6 = i6;
            } else if (index == C1686R.styleable.TabPageIndicator_android_textAppearance) {
                i5 = obtainStyledAttributes.getResourceId(index, 0);
                i3 = i3;
                z2 = z2;
                z3 = z3;
                i6 = i6;
            } else {
                i3 = i3;
                z2 = z2;
                z3 = z3;
                i5 = i5;
                i6 = i6;
                if (index == C1686R.styleable.TabPageIndicator_tpi_mode) {
                    i4 = obtainStyledAttributes.getInteger(index, 0);
                    i6 = i6;
                    i5 = i5;
                    z3 = z3;
                    z2 = z2;
                    i3 = i3;
                }
            }
        }
        obtainStyledAttributes.recycle();
        if (this.mIndicatorHeight < 0) {
            this.mIndicatorHeight = ThemeUtil.dpToPx(context, 2);
        }
        if (i3 < 0 || this.mTabPadding == i3) {
            z = false;
        } else {
            this.mTabPadding = i3;
            z = true;
        }
        boolean z4 = z;
        if (z2) {
            z4 = z;
            if (this.mTabSingleLine != z3) {
                this.mTabSingleLine = z3;
                z4 = true;
            }
        }
        boolean z5 = z4;
        if (i4 >= 0) {
            z5 = z4;
            if (this.mMode != i4) {
                this.mMode = i4;
                this.mAdapter.setFixedWidth(0, 0);
                z5 = true;
            }
        }
        boolean z6 = z5;
        if (i5 != 0) {
            z6 = z5;
            if (this.mTextAppearance != i5) {
                this.mTextAppearance = i5;
                z6 = true;
            }
        }
        boolean z7 = z6;
        if (i6 != 0) {
            z7 = z6;
            if (i6 != this.mTabRippleStyle) {
                this.mTabRippleStyle = i6;
                z7 = true;
            }
        }
        if (z7) {
            this.mAdapter.notifyItemRangeChanged(0, this.mAdapter.getItemCount());
        }
        invalidate();
    }

    @Override // android.support.p004v7.widget.RecyclerView, android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        int i = this.mIndicatorOffset;
        int height = this.mIndicatorAtTop ? 0 : getHeight() - this.mIndicatorHeight;
        canvas.drawRect(i, height, i + this.mIndicatorWidth, height + this.mIndicatorHeight, this.mPaint);
    }

    protected void init(Context context, AttributeSet attributeSet, int i, int i2) {
        setHorizontalScrollBarEnabled(false);
        this.mTabPadding = -1;
        this.mTabSingleLine = true;
        this.mCenterCurrentTab = false;
        this.mIndicatorHeight = -1;
        this.mIndicatorAtTop = false;
        this.mScrolling = false;
        this.mIsRtl = false;
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(ThemeUtil.colorAccent(context, -1));
        this.mAdapter = new Adapter();
        setAdapter(this.mAdapter);
        this.mLayoutManager = new LinearLayoutManager(context, 0, this.mIsRtl);
        setLayoutManager(this.mLayoutManager);
        setItemAnimator(new DefaultItemAnimator());
        addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.rey.material.widget.TabIndicatorView.1
            @Override // android.support.p004v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                if (i3 == 0) {
                    TabIndicatorView.this.updateIndicator(TabIndicatorView.this.mLayoutManager.findViewByPosition(TabIndicatorView.this.mSelectedPosition));
                }
            }

            @Override // android.support.p004v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                TabIndicatorView.this.updateIndicator(TabIndicatorView.this.mLayoutManager.findViewByPosition(TabIndicatorView.this.mSelectedPosition));
            }
        });
        applyStyle(context, attributeSet, i, i2);
        if (!isInEditMode()) {
            this.mStyleId = ThemeManager.getStyleId(context, attributeSet, i, i2);
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView, android.view.ViewGroup, android.view.View
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

    @Override // android.support.p004v7.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mTabAnimSelector != null) {
            removeCallbacks(this.mTabAnimSelector);
        }
        if (this.mStyleId != 0) {
            ThemeManager.getInstance().unregisterOnThemeChangedListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.widget.RecyclerView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mMode == 1) {
            int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
            int itemCount = this.mAdapter.getItemCount();
            if (itemCount > 0) {
                int i3 = measuredWidth / itemCount;
                this.mAdapter.setFixedWidth(i3, measuredWidth - ((itemCount - 1) * i3));
                return;
            }
            this.mAdapter.setFixedWidth(measuredWidth, measuredWidth);
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
            this.mLayoutManager = new LinearLayoutManager(getContext(), 0, this.mIsRtl);
            setLayoutManager(this.mLayoutManager);
            requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.widget.RecyclerView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        updateIndicator(this.mLayoutManager.findViewByPosition(this.mSelectedPosition));
    }

    protected void onTabScrollStateChanged(int i) {
        View findViewByPosition;
        int left;
        if (this.mCenterCurrentTab) {
            if (i == 0 && !this.mScrollingToCenter && (findViewByPosition = this.mLayoutManager.findViewByPosition(this.mSelectedPosition)) != null && (left = ((findViewByPosition.getLeft() + findViewByPosition.getRight()) / 2) - ((((getLeft() + getPaddingLeft()) + getRight()) - getPaddingRight()) / 2)) != 0) {
                smoothScrollBy(left, 0);
                this.mScrollingToCenter = true;
            }
            if (i == 1 || i == 2) {
                this.mScrollingToCenter = false;
            }
        }
        if (i == 0) {
            this.mScrolling = false;
            updateIndicator(this.mLayoutManager.findViewByPosition(this.mSelectedPosition));
            return;
        }
        this.mScrolling = true;
    }

    protected void onTabScrolled(int i, float f) {
        View findViewByPosition = this.mLayoutManager.findViewByPosition(i);
        View findViewByPosition2 = this.mLayoutManager.findViewByPosition(i + 1);
        if (findViewByPosition != null && findViewByPosition2 != null) {
            int measuredWidth = findViewByPosition.getMeasuredWidth();
            int measuredWidth2 = findViewByPosition2.getMeasuredWidth();
            float f2 = (measuredWidth + measuredWidth2) / 2.0f;
            float f3 = measuredWidth;
            int i2 = (int) (((measuredWidth2 - measuredWidth) * f) + f3 + 0.5f);
            updateIndicator((int) ((((findViewByPosition.getLeft() + (f3 / 2.0f)) + (f2 * f)) - (i2 / 2.0f)) + 0.5f), i2);
        }
    }

    protected void onTabSelected(int i) {
        setCurrentTab(i);
    }

    @Override // com.rey.material.app.ThemeManager.OnThemeChangedListener
    public void onThemeChanged(ThemeManager.OnThemeChangedEvent onThemeChangedEvent) {
        int currentStyle = ThemeManager.getInstance().getCurrentStyle(this.mStyleId);
        if (this.mCurrentStyle != currentStyle) {
            this.mCurrentStyle = currentStyle;
            applyStyle(this.mCurrentStyle);
        }
    }

    public void setCurrentTab(int i) {
        View findViewByPosition;
        if (!(this.mSelectedPosition == i || (findViewByPosition = this.mLayoutManager.findViewByPosition(this.mSelectedPosition)) == null)) {
            ((Checkable) findViewByPosition).setChecked(false);
        }
        this.mSelectedPosition = i;
        View findViewByPosition2 = this.mLayoutManager.findViewByPosition(this.mSelectedPosition);
        if (findViewByPosition2 != null) {
            ((Checkable) findViewByPosition2).setChecked(true);
        }
        animateToTab(i);
    }

    public void setTabIndicatorFactory(TabIndicatorFactory tabIndicatorFactory) {
        this.mFactory = tabIndicatorFactory;
        this.mAdapter.setFactory(tabIndicatorFactory);
    }
}
