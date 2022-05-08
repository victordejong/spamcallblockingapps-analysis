package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.appcompat.C0042R;
import androidx.appcompat.graphics.drawable.DrawableWrapper;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.widget.ListViewAutoScrollHelper;
import java.lang.reflect.Field;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DropDownListView.class */
public class DropDownListView extends ListView {

    /* renamed from: f */
    private final Rect f1055f = new Rect();

    /* renamed from: g */
    private int f1056g = 0;

    /* renamed from: h */
    private int f1057h = 0;

    /* renamed from: i */
    private int f1058i = 0;

    /* renamed from: j */
    private int f1059j = 0;

    /* renamed from: k */
    private int f1060k;

    /* renamed from: l */
    private Field f1061l;

    /* renamed from: m */
    private GateKeeperDrawable f1062m;

    /* renamed from: n */
    private boolean f1063n;

    /* renamed from: o */
    private boolean f1064o;

    /* renamed from: p */
    private boolean f1065p;

    /* renamed from: q */
    private ViewPropertyAnimatorCompat f1066q;

    /* renamed from: r */
    private ListViewAutoScrollHelper f1067r;

    /* renamed from: s */
    ResolveHoverRunnable f1068s;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DropDownListView$GateKeeperDrawable.class */
    public static class GateKeeperDrawable extends DrawableWrapper {

        /* renamed from: g */
        private boolean f1069g = true;

        GateKeeperDrawable(Drawable drawable) {
            super(drawable);
        }

        /* renamed from: c */
        void m21489c(boolean z) {
            this.f1069g = z;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f1069g) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f1069g) {
                super.setHotspot(f, f2);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f1069g) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f1069g) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f1069g) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/DropDownListView$ResolveHoverRunnable.class */
    public class ResolveHoverRunnable implements Runnable {
        ResolveHoverRunnable() {
        }

        /* renamed from: a */
        public void m21488a() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.f1068s = null;
            dropDownListView.removeCallbacks(this);
        }

        /* renamed from: b */
        public void m21487b() {
            DropDownListView.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView dropDownListView = DropDownListView.this;
            dropDownListView.f1068s = null;
            dropDownListView.drawableStateChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DropDownListView(@NonNull Context context, boolean z) {
        super(context, null, C0042R.attr.dropDownListViewStyle);
        this.f1064o = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f1061l = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m21500a() {
        this.f1065p = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f1060k - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.f1066q;
        if (viewPropertyAnimatorCompat != null) {
            viewPropertyAnimatorCompat.m19114b();
            this.f1066q = null;
        }
    }

    /* renamed from: b */
    private void m21499b(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: c */
    private void m21498c(Canvas canvas) {
        Drawable selector;
        if (!this.f1055f.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f1055f);
            selector.draw(canvas);
        }
    }

    /* renamed from: f */
    private void m21495f(int i, View view) {
        Rect rect = this.f1055f;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f1056g;
        rect.top -= this.f1057h;
        rect.right += this.f1058i;
        rect.bottom += this.f1059j;
        try {
            boolean z = this.f1061l.getBoolean(this);
            if (view.isEnabled() != z) {
                this.f1061l.set(this, Boolean.valueOf(!z));
                if (i != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    private void m21494g(int i, View view) {
        Drawable selector = getSelector();
        boolean z = true;
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        m21495f(i, view);
        if (z2) {
            Rect rect = this.f1055f;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            DrawableCompat.m19502k(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: h */
    private void m21493h(int i, View view, float f, float f2) {
        m21494g(i, view);
        Drawable selector = getSelector();
        if (selector != null && i != -1) {
            DrawableCompat.m19502k(selector, f, f2);
        }
    }

    /* renamed from: i */
    private void m21492i(View view, int i, float f, float f2) {
        View childAt;
        this.f1065p = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i2 = this.f1060k;
        if (!(i2 == -1 || (childAt = getChildAt(i2 - getFirstVisiblePosition())) == null || childAt == view || !childAt.isPressed())) {
            childAt.setPressed(false);
        }
        this.f1060k = i;
        float left = view.getLeft();
        float top = view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(f - left, f2 - top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m21493h(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* renamed from: j */
    private boolean m21491j() {
        return this.f1065p;
    }

    /* renamed from: k */
    private void m21490k() {
        Drawable selector = getSelector();
        if (selector != null && m21491j() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    private void setSelectorEnabled(boolean z) {
        GateKeeperDrawable gateKeeperDrawable = this.f1062m;
        if (gateKeeperDrawable != null) {
            gateKeeperDrawable.m21489c(z);
        }
    }

    /* renamed from: d */
    public int m21497d(int i, int i2, int i3, int i4, int i5) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int i6 = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (i7 < count) {
            int itemViewType = adapter.getItemViewType(i7);
            i8 = i8;
            if (itemViewType != i8) {
                view = null;
                i8 = itemViewType;
            }
            View view2 = adapter.getView(i7, view, this);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = generateDefaultLayoutParams();
                view2.setLayoutParams(layoutParams2);
            }
            int i10 = layoutParams2.height;
            view2.measure(i, i10 > 0 ? View.MeasureSpec.makeMeasureSpec(i10, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view2.forceLayout();
            int i11 = i6;
            if (i7 > 0) {
                i11 = i6 + dividerHeight;
            }
            i6 = i11 + view2.getMeasuredHeight();
            if (i6 >= i4) {
                int i12 = i4;
                if (i5 >= 0) {
                    i12 = i4;
                    if (i7 > i5) {
                        i12 = i4;
                        if (i9 > 0) {
                            i12 = i4;
                            if (i6 != i4) {
                                i12 = i9;
                            }
                        }
                    }
                }
                return i12;
            }
            i9 = i9;
            if (i5 >= 0) {
                i9 = i9;
                if (i7 >= i5) {
                    i9 = i6;
                }
            }
            i7++;
            view = view2;
        }
        return i6;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        m21498c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f1068s == null) {
            super.drawableStateChanged();
            setSelectorEnabled(true);
            m21490k();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r0 != 3) goto L_0x0014;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m21496e(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.DropDownListView.m21496e(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f1064o || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f1064o || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f1064o || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f1064o && this.f1063n) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f1068s = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(@NonNull MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f1068s == null) {
            ResolveHoverRunnable resolveHoverRunnable = new ResolveHoverRunnable();
            this.f1068s = resolveHoverRunnable;
            resolveHoverRunnable.m21487b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (!(pointToPosition == -1 || pointToPosition == getSelectedItemPosition())) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m21490k();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f1060k = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        ResolveHoverRunnable resolveHoverRunnable = this.f1068s;
        if (resolveHoverRunnable != null) {
            resolveHoverRunnable.m21488a();
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setListSelectionHidden(boolean z) {
        this.f1063n = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        GateKeeperDrawable gateKeeperDrawable = drawable != null ? new GateKeeperDrawable(drawable) : null;
        this.f1062m = gateKeeperDrawable;
        super.setSelector(gateKeeperDrawable);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f1056g = rect.left;
        this.f1057h = rect.top;
        this.f1058i = rect.right;
        this.f1059j = rect.bottom;
    }
}
