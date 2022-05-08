package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.C0042R;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AbsActionBarView.class */
public abstract class AbsActionBarView extends ViewGroup {

    /* renamed from: f */
    protected final VisibilityAnimListener f744f;

    /* renamed from: g */
    protected final Context f745g;

    /* renamed from: h */
    protected ActionMenuView f746h;

    /* renamed from: i */
    protected ActionMenuPresenter f747i;

    /* renamed from: j */
    protected int f748j;

    /* renamed from: k */
    protected ViewPropertyAnimatorCompat f749k;

    /* renamed from: l */
    private boolean f750l;

    /* renamed from: m */
    private boolean f751m;

    /* renamed from: androidx.appcompat.widget.AbsActionBarView$1 */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AbsActionBarView$1.class */
    class RunnableC00891 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ AbsActionBarView f752f;

        @Override // java.lang.Runnable
        public void run() {
            this.f752f.mo21769g();
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener.class */
    protected class VisibilityAnimListener implements ViewPropertyAnimatorListener {

        /* renamed from: a */
        private boolean f753a = false;

        /* renamed from: b */
        int f754b;

        protected VisibilityAnimListener() {
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: a */
        public void mo19104a(View view) {
            this.f753a = true;
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: b */
        public void mo19103b(View view) {
            if (!this.f753a) {
                AbsActionBarView absActionBarView = AbsActionBarView.this;
                absActionBarView.f749k = null;
                AbsActionBarView.super.setVisibility(this.f754b);
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListener
        /* renamed from: c */
        public void mo19102c(View view) {
            AbsActionBarView.super.setVisibility(0);
            this.f753a = false;
        }

        /* renamed from: d */
        public VisibilityAnimListener m21772d(ViewPropertyAnimatorCompat viewPropertyAnimatorCompat, int i) {
            AbsActionBarView.this.f749k = viewPropertyAnimatorCompat;
            this.f754b = i;
            return this;
        }
    }

    AbsActionBarView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbsActionBarView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f744f = new VisibilityAnimListener();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(C0042R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f745g = context;
        } else {
            this.f745g = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public static int m21775d(int i, int i2, boolean z) {
        return z ? i - i2 : i + i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: c */
    public int m21776c(View view, int i, int i2, int i3) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public int m21774e(View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = i2 + ((i3 - measuredHeight) / 2);
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        int i5 = measuredWidth;
        if (z) {
            i5 = -measuredWidth;
        }
        return i5;
    }

    /* renamed from: f */
    public ViewPropertyAnimatorCompat m21773f(int i, long j) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f749k;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.m19114b();
        }
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ViewPropertyAnimatorCompat c = ViewCompat.m19206c(this);
            c.m19115a(1.0f);
            c.m19112d(j);
            VisibilityAnimListener visibilityAnimListener = this.f744f;
            visibilityAnimListener.m21772d(c, i);
            c.m19110f(visibilityAnimListener);
            return c;
        }
        ViewPropertyAnimatorCompat c2 = ViewCompat.m19206c(this);
        c2.m19115a(0.0f);
        c2.m19112d(j);
        VisibilityAnimListener visibilityAnimListener2 = this.f744f;
        visibilityAnimListener2.m21772d(c2, i);
        c2.m19110f(visibilityAnimListener2);
        return c2;
    }

    /* renamed from: g */
    public boolean mo21769g() {
        ActionMenuPresenter actionMenuPresenter = this.f747i;
        if (actionMenuPresenter != null) {
            return actionMenuPresenter.m21731N();
        }
        return false;
    }

    public int getAnimatedVisibility() {
        return this.f749k != null ? this.f744f.f754b : getVisibility();
    }

    public int getContentHeight() {
        return this.f748j;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, C0042R.styleable.ActionBar, C0042R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(C0042R.styleable.ActionBar_height, 0));
        obtainStyledAttributes.recycle();
        ActionMenuPresenter actionMenuPresenter = this.f747i;
        if (actionMenuPresenter != null) {
            actionMenuPresenter.m21736I(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f751m = false;
        }
        if (!this.f751m) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f751m = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f751m = false;
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f750l = false;
        }
        if (!this.f750l) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f750l = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f750l = false;
        return true;
    }

    public void setContentHeight(int i) {
        this.f748j = i;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f749k;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.m19114b();
            }
            super.setVisibility(i);
        }
    }
}
