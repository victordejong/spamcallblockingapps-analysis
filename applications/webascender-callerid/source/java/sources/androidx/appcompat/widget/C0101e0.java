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
import androidx.core.graphics.drawable.C0222a;
import androidx.core.widget.f;
import f.a.a;
import f.h.l.x;
import java.lang.reflect.Field;
/* renamed from: androidx.appcompat.widget.e0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e0.class */
public class C0101e0 extends ListView {

    /* renamed from: f */
    private final Rect f470f = new Rect();

    /* renamed from: g */
    private int f471g = 0;

    /* renamed from: h */
    private int f472h = 0;

    /* renamed from: i */
    private int f473i = 0;

    /* renamed from: j */
    private int f474j = 0;

    /* renamed from: k */
    private int f475k;

    /* renamed from: l */
    private Field f476l;

    /* renamed from: m */
    private a f477m;

    /* renamed from: n */
    private boolean f478n;

    /* renamed from: o */
    private boolean f479o;

    /* renamed from: p */
    private boolean f480p;

    /* renamed from: q */
    private x f481q;

    /* renamed from: r */
    private f f482r;

    /* renamed from: s */
    RunnableC0102b f483s;

    /* renamed from: androidx.appcompat.widget.e0$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/e0$b.class */
    public class RunnableC0102b implements Runnable {
        RunnableC0102b() {
            C0101e0.this = r4;
        }

        /* renamed from: a */
        public void m6585a() {
            C0101e0 c0101e0 = C0101e0.this;
            c0101e0.f483s = null;
            c0101e0.removeCallbacks(this);
        }

        /* renamed from: b */
        public void m6584b() {
            C0101e0.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            C0101e0 c0101e0 = C0101e0.this;
            c0101e0.f483s = null;
            c0101e0.drawableStateChanged();
        }
    }

    C0101e0(Context context, boolean z) {
        super(context, null, a.z);
        this.f479o = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f476l = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m6596a() {
        this.f480p = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f475k - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        x xVar = this.f481q;
        if (xVar != null) {
            xVar.b();
            this.f481q = null;
        }
    }

    /* renamed from: b */
    private void m6595b(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: c */
    private void m6594c(Canvas canvas) {
        Drawable selector;
        if (this.f470f.isEmpty() || (selector = getSelector()) == null) {
            return;
        }
        selector.setBounds(this.f470f);
        selector.draw(canvas);
    }

    /* renamed from: f */
    private void m6591f(int i, View view) {
        Rect rect = this.f470f;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f471g;
        rect.top -= this.f472h;
        rect.right += this.f473i;
        rect.bottom += this.f474j;
        try {
            boolean z = this.f476l.getBoolean(this);
            if (view.isEnabled() == z) {
                return;
            }
            this.f476l.set(this, Boolean.valueOf(!z));
            if (i == -1) {
                return;
            }
            refreshDrawableState();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: g */
    private void m6590g(int i, View view) {
        Drawable selector = getSelector();
        boolean z = true;
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        m6591f(i, view);
        if (z2) {
            Rect rect = this.f470f;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            C0222a.m5961k(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: h */
    private void m6589h(int i, View view, float f, float f2) {
        m6590g(i, view);
        Drawable selector = getSelector();
        if (selector == null || i == -1) {
            return;
        }
        C0222a.m5961k(selector, f, f2);
    }

    /* renamed from: i */
    private void m6588i(View view, int i, float f, float f2) {
        View childAt;
        this.f480p = true;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i3 = this.f475k;
        if (i3 != -1 && (childAt = getChildAt(i3 - getFirstVisiblePosition())) != null && childAt != view && childAt.isPressed()) {
            childAt.setPressed(false);
        }
        this.f475k = i;
        float left = view.getLeft();
        float top = view.getTop();
        if (i2 >= 21) {
            view.drawableHotspotChanged(f - left, f2 - top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m6589h(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* renamed from: j */
    private boolean m6587j() {
        return this.f480p;
    }

    /* renamed from: k */
    private void m6586k() {
        Drawable selector = getSelector();
        if (selector == null || !m6587j() || !isPressed()) {
            return;
        }
        selector.setState(getDrawableState());
    }

    private void setSelectorEnabled(boolean z) {
        a aVar = this.f477m;
        if (aVar != null) {
            aVar.c(z);
        }
    }

    /* renamed from: d */
    public int m6593d(int i, int i2, int i3, int i4, int i5) {
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
        while (true) {
            int i10 = i9;
            if (i7 >= count) {
                return i6;
            }
            int itemViewType = adapter.getItemViewType(i7);
            int i11 = i8;
            if (itemViewType != i8) {
                view = null;
                i11 = itemViewType;
            }
            View view2 = adapter.getView(i7, view, this);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = generateDefaultLayoutParams();
                view2.setLayoutParams(layoutParams2);
            }
            int i12 = layoutParams2.height;
            view2.measure(i, i12 > 0 ? View.MeasureSpec.makeMeasureSpec(i12, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view2.forceLayout();
            int i13 = i6;
            if (i7 > 0) {
                i13 = i6 + dividerHeight;
            }
            i6 = i13 + view2.getMeasuredHeight();
            if (i6 >= i4) {
                int i14 = i4;
                if (i5 >= 0) {
                    i14 = i4;
                    if (i7 > i5) {
                        i14 = i4;
                        if (i10 > 0) {
                            i14 = i4;
                            if (i6 != i4) {
                                i14 = i10;
                            }
                        }
                    }
                }
                return i14;
            }
            int i15 = i10;
            if (i5 >= 0) {
                i15 = i10;
                if (i7 >= i5) {
                    i15 = i6;
                }
            }
            i7++;
            i8 = i11;
            view = view2;
            i9 = i15;
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        m6594c(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f483s != null) {
            return;
        }
        super.drawableStateChanged();
        setSelectorEnabled(true);
        m6586k();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r0 != 3) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m6592e(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0101e0.m6592e(android.view.MotionEvent, int):boolean");
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f479o || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f479o || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f479o || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f479o && this.f478n) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f483s = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f483s == null) {
            RunnableC0102b runnableC0102b = new RunnableC0102b();
            this.f483s = runnableC0102b;
            runnableC0102b.m6584b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (pointToPosition != -1 && pointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m6586k();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f475k = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0102b runnableC0102b = this.f483s;
        if (runnableC0102b != null) {
            runnableC0102b.m6585a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f478n = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        Drawable aVar = drawable != null ? new a(drawable) : null;
        this.f477m = aVar;
        super.setSelector(aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f471g = rect.left;
        this.f472h = rect.top;
        this.f473i = rect.right;
        this.f474j = rect.bottom;
    }
}
