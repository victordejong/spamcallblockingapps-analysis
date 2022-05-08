package com.android.contacts.detail;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.HorizontalScrollView;
import com.android.contacts.widget.FrameLayoutWithOverlay;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailFragmentCarousel.class */
public class ContactDetailFragmentCarousel extends HorizontalScrollView implements View.OnTouchListener {
    private static final int ABOUT_PAGE = 0;
    private static final float FRAGMENT_WIDTH_SCREEN_WIDTH_FRACTION = 0.85f;
    private static final int MAX_FRAGMENT_VIEW_COUNT = 2;
    private static final String TAG = ContactDetailFragmentCarousel.class.getSimpleName();
    private static final int UPDATES_PAGE = 1;
    private final View.OnClickListener mAboutFragTouchInterceptListener;
    private FrameLayoutWithOverlay mAboutFragment;
    private int mAllowedHorizontalScrollLength;
    private int mCurrentPage;
    private boolean mEnableSwipe;
    private int mLastScrollPosition;
    private int mLowerThreshold;
    private int mMinFragmentWidth;
    private final View.OnClickListener mUpdatesFragTouchInterceptListener;
    private int mUpperThreshold;

    public ContactDetailFragmentCarousel(Context context) {
        this(context, null);
    }

    public ContactDetailFragmentCarousel(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContactDetailFragmentCarousel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mAllowedHorizontalScrollLength = Integer.MIN_VALUE;
        this.mLowerThreshold = Integer.MIN_VALUE;
        this.mUpperThreshold = Integer.MIN_VALUE;
        this.mMinFragmentWidth = Integer.MIN_VALUE;
        this.mCurrentPage = 0;
        this.mAboutFragTouchInterceptListener = new View.OnClickListener() { // from class: com.android.contacts.detail.ContactDetailFragmentCarousel.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactDetailFragmentCarousel.this.mCurrentPage = 0;
                ContactDetailFragmentCarousel.this.snapToEdge();
            }
        };
        this.mUpdatesFragTouchInterceptListener = new View.OnClickListener() { // from class: com.android.contacts.detail.ContactDetailFragmentCarousel.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactDetailFragmentCarousel.this.mCurrentPage = 1;
                ContactDetailFragmentCarousel.this.snapToEdge();
            }
        };
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(2131427462, this);
        setOnTouchListener(this);
    }

    private int getDesiredPage() {
        int i = 1;
        switch (this.mCurrentPage) {
            case 0:
                if (this.mLastScrollPosition <= this.mLowerThreshold) {
                    i = 0;
                    break;
                }
                break;
            case 1:
                if (this.mLastScrollPosition < this.mUpperThreshold) {
                    i = 0;
                    break;
                }
                break;
            default:
                throw new IllegalStateException("Invalid current page " + this.mCurrentPage);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void snapToEdge() {
        smoothScrollTo(this.mCurrentPage == 0 ? 0 : this.mAllowedHorizontalScrollLength, 0);
        updateTouchInterceptors();
    }

    private void updateTouchInterceptors() {
        if (this.mAboutFragment != null) {
            this.mAboutFragment.setOverlayClickable(this.mCurrentPage != 0);
        }
    }

    public int getCurrentPage() {
        return this.mCurrentPage;
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.mAllowedHorizontalScrollLength == Integer.MIN_VALUE) {
            this.mMinFragmentWidth = (int) (FRAGMENT_WIDTH_SCREEN_WIDTH_FRACTION * size);
            this.mAllowedHorizontalScrollLength = (this.mMinFragmentWidth * 2) - size;
            this.mLowerThreshold = (size - this.mMinFragmentWidth) / 2;
            this.mUpperThreshold = this.mAllowedHorizontalScrollLength - this.mLowerThreshold;
        }
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.mEnableSwipe) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.mMinFragmentWidth * 2, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            } else {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            }
        }
        setMeasuredDimension(resolveSize(size, i), resolveSize(size2, i2));
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.mEnableSwipe) {
            this.mLastScrollPosition = i;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = false;
        if (this.mEnableSwipe && motionEvent.getAction() == 1) {
            this.mCurrentPage = getDesiredPage();
            snapToEdge();
            z = true;
        }
        return z;
    }

    public void reset() {
        if (this.mCurrentPage != 0) {
            this.mCurrentPage = 0;
            snapToEdge();
        }
    }

    public void setCurrentPage(int i) {
        this.mCurrentPage = i;
        updateTouchInterceptors();
    }

    public void setFragmentViews(FrameLayoutWithOverlay frameLayoutWithOverlay) {
        this.mAboutFragment = frameLayoutWithOverlay;
        this.mAboutFragment.setOverlayOnClickListener(this.mAboutFragTouchInterceptListener);
    }
}
