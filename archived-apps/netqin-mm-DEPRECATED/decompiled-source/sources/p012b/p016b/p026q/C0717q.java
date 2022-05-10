package p012b.p016b.p026q;

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
import java.lang.reflect.Field;
import p012b.p016b.C0574a;
import p012b.p016b.p020m.p021a.C0615c;
import p012b.p042i.p046j.p047m.C0907a;
import p012b.p042i.p054p.C1017y;
import p012b.p042i.p056q.C1029f;
/* renamed from: b.b.q.q */
/* loaded from: classes-dex2jar.jar:b/b/q/q.class */
public class C0717q extends ListView {

    /* renamed from: a */
    public final Rect f3509a = new Rect();

    /* renamed from: b */
    public int f3510b = 0;

    /* renamed from: c */
    public int f3511c = 0;

    /* renamed from: d */
    public int f3512d = 0;

    /* renamed from: e */
    public int f3513e = 0;

    /* renamed from: f */
    public int f3514f;

    /* renamed from: g */
    public Field f3515g;

    /* renamed from: h */
    public C0718a f3516h;

    /* renamed from: i */
    public boolean f3517i;

    /* renamed from: j */
    public boolean f3518j;

    /* renamed from: k */
    public boolean f3519k;

    /* renamed from: l */
    public C1017y f3520l;

    /* renamed from: m */
    public C1029f f3521m;

    /* renamed from: n */
    public RunnableC0719b f3522n;

    /* renamed from: b.b.q.q$a */
    /* loaded from: classes-dex2jar.jar:b/b/q/q$a.class */
    public static class C0718a extends C0615c {

        /* renamed from: b */
        public boolean f3523b = true;

        public C0718a(Drawable drawable) {
            super(drawable);
        }

        /* renamed from: a */
        public void m36236a(boolean z) {
            this.f3523b = z;
        }

        @Override // p012b.p016b.p020m.p021a.C0615c, android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.f3523b) {
                super.draw(canvas);
            }
        }

        @Override // p012b.p016b.p020m.p021a.C0615c, android.graphics.drawable.Drawable
        public void setHotspot(float f, float f2) {
            if (this.f3523b) {
                super.setHotspot(f, f2);
            }
        }

        @Override // p012b.p016b.p020m.p021a.C0615c, android.graphics.drawable.Drawable
        public void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f3523b) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // p012b.p016b.p020m.p021a.C0615c, android.graphics.drawable.Drawable
        public boolean setState(int[] iArr) {
            if (this.f3523b) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // p012b.p016b.p020m.p021a.C0615c, android.graphics.drawable.Drawable
        public boolean setVisible(boolean z, boolean z2) {
            if (this.f3523b) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* renamed from: b.b.q.q$b */
    /* loaded from: classes-dex2jar.jar:b/b/q/q$b.class */
    public class RunnableC0719b implements Runnable {
        public RunnableC0719b() {
        }

        /* renamed from: a */
        public void m36235a() {
            C0717q qVar = C0717q.this;
            qVar.f3522n = null;
            qVar.removeCallbacks(this);
        }

        /* renamed from: b */
        public void m36234b() {
            C0717q.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            C0717q qVar = C0717q.this;
            qVar.f3522n = null;
            qVar.drawableStateChanged();
        }
    }

    public C0717q(Context context, boolean z) {
        super(context, null, C0574a.dropDownListViewStyle);
        this.f3518j = z;
        setCacheColorHint(0);
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f3515g = declaredField;
            declaredField.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    private void setSelectorEnabled(boolean z) {
        C0718a aVar = this.f3516h;
        if (aVar != null) {
            aVar.m36236a(z);
        }
    }

    /* renamed from: a */
    public int m36246a(int i, int i2, int i3, int i4, int i5) {
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

    /* renamed from: a */
    public final void m36247a() {
        this.f3519k = false;
        setPressed(false);
        drawableStateChanged();
        View childAt = getChildAt(this.f3514f - getFirstVisiblePosition());
        if (childAt != null) {
            childAt.setPressed(false);
        }
        C1017y yVar = this.f3520l;
        if (yVar != null) {
            yVar.m35165a();
            this.f3520l = null;
        }
    }

    /* renamed from: a */
    public final void m36245a(int i, View view) {
        Rect rect = this.f3509a;
        rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        rect.left -= this.f3510b;
        rect.top -= this.f3511c;
        rect.right += this.f3512d;
        rect.bottom += this.f3513e;
        try {
            boolean z = this.f3515g.getBoolean(this);
            if (view.isEnabled() != z) {
                this.f3515g.set(this, Boolean.valueOf(!z));
                if (i != -1) {
                    refreshDrawableState();
                }
            }
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public final void m36244a(int i, View view, float f, float f2) {
        m36238b(i, view);
        Drawable selector = getSelector();
        if (selector != null && i != -1) {
            C0907a.m35529a(selector, f, f2);
        }
    }

    /* renamed from: a */
    public final void m36243a(Canvas canvas) {
        Drawable selector;
        if (!this.f3509a.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f3509a);
            selector.draw(canvas);
        }
    }

    /* renamed from: a */
    public final void m36241a(View view, int i) {
        performItemClick(view, i, getItemIdAtPosition(i));
    }

    /* renamed from: a */
    public final void m36240a(View view, int i, float f, float f2) {
        View childAt;
        this.f3519k = true;
        if (Build.VERSION.SDK_INT >= 21) {
            drawableHotspotChanged(f, f2);
        }
        if (!isPressed()) {
            setPressed(true);
        }
        layoutChildren();
        int i2 = this.f3514f;
        if (!(i2 == -1 || (childAt = getChildAt(i2 - getFirstVisiblePosition())) == null || childAt == view || !childAt.isPressed())) {
            childAt.setPressed(false);
        }
        this.f3514f = i;
        float left = view.getLeft();
        float top = view.getTop();
        if (Build.VERSION.SDK_INT >= 21) {
            view.drawableHotspotChanged(f - left, f2 - top);
        }
        if (!view.isPressed()) {
            view.setPressed(true);
        }
        m36244a(i, view, f, f2);
        setSelectorEnabled(false);
        refreshDrawableState();
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r0 != 3) goto L_0x0014;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c6  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m36242a(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p016b.p026q.C0717q.m36242a(android.view.MotionEvent, int):boolean");
    }

    /* renamed from: b */
    public final void m36238b(int i, View view) {
        Drawable selector = getSelector();
        boolean z = true;
        boolean z2 = (selector == null || i == -1) ? false : true;
        if (z2) {
            selector.setVisible(false, false);
        }
        m36245a(i, view);
        if (z2) {
            Rect rect = this.f3509a;
            float exactCenterX = rect.exactCenterX();
            float exactCenterY = rect.exactCenterY();
            if (getVisibility() != 0) {
                z = false;
            }
            selector.setVisible(z, false);
            C0907a.m35529a(selector, exactCenterX, exactCenterY);
        }
    }

    /* renamed from: b */
    public final boolean m36239b() {
        return this.f3519k;
    }

    /* renamed from: c */
    public final void m36237c() {
        Drawable selector = getSelector();
        if (selector != null && m36239b() && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        m36243a(canvas);
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        if (this.f3522n == null) {
            super.drawableStateChanged();
            setSelectorEnabled(true);
            m36237c();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f3518j || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f3518j || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f3518j || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f3518j && this.f3517i) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.f3522n = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f3522n == null) {
            RunnableC0719b bVar = new RunnableC0719b();
            this.f3522n = bVar;
            bVar.m36234b();
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (!(pointToPosition == -1 || pointToPosition == getSelectedItemPosition())) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m36237c();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f3514f = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0719b bVar = this.f3522n;
        if (bVar != null) {
            bVar.m36235a();
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z) {
        this.f3517i = z;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C0718a aVar = drawable != null ? new C0718a(drawable) : null;
        this.f3516h = aVar;
        super.setSelector(aVar);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f3510b = rect.left;
        this.f3511c = rect.top;
        this.f3512d = rect.right;
        this.f3513e = rect.bottom;
    }
}
