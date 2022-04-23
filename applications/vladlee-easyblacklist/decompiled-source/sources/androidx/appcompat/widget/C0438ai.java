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
import androidx.appcompat.C0247a;
import androidx.appcompat.p022b.p023a.C0334d;
import androidx.core.p037g.C0712aa;
import androidx.core.widget.C0783h;
import java.lang.reflect.Field;
/* renamed from: androidx.appcompat.widget.ai */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai.class */
class C0438ai extends ListView {

    /* renamed from: a */
    RunnableC0440b f2214a;

    /* renamed from: b */
    private final Rect f2215b = new Rect();

    /* renamed from: c */
    private int f2216c = 0;

    /* renamed from: d */
    private int f2217d = 0;

    /* renamed from: e */
    private int f2218e = 0;

    /* renamed from: f */
    private int f2219f = 0;

    /* renamed from: g */
    private int f2220g;

    /* renamed from: h */
    private Field f2221h;

    /* renamed from: i */
    private C0439a f2222i;

    /* renamed from: j */
    private boolean f2223j;

    /* renamed from: k */
    private boolean f2224k;

    /* renamed from: l */
    private boolean f2225l;

    /* renamed from: m */
    private C0712aa f2226m;

    /* renamed from: n */
    private C0783h f2227n;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ai$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$a.class */
    public static final class C0439a extends C0334d {

        /* renamed from: a */
        private boolean f2228a = true;

        C0439a(Drawable drawable) {
            super(drawable);
        }

        /* renamed from: a */
        final void m9165a(boolean z) {
            this.f2228a = z;
        }

        @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            if (this.f2228a) {
                super.draw(canvas);
            }
        }

        @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
        public final void setHotspot(float f, float f2) {
            if (this.f2228a) {
                super.setHotspot(f, f2);
            }
        }

        @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
        public final void setHotspotBounds(int i, int i2, int i3, int i4) {
            if (this.f2228a) {
                super.setHotspotBounds(i, i2, i3, i4);
            }
        }

        @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
        public final boolean setState(int[] iArr) {
            if (this.f2228a) {
                return super.setState(iArr);
            }
            return false;
        }

        @Override // androidx.appcompat.p022b.p023a.C0334d, android.graphics.drawable.Drawable
        public final boolean setVisible(boolean z, boolean z2) {
            if (this.f2228a) {
                return super.setVisible(z, z2);
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.ai$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ai$b.class */
    public final class RunnableC0440b implements Runnable {
        RunnableC0440b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            C0438ai aiVar = C0438ai.this;
            aiVar.f2214a = null;
            aiVar.drawableStateChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0438ai(Context context, boolean z) {
        super(context, null, C0247a.C0248a.f544B);
        this.f2224k = z;
        setCacheColorHint(0);
        try {
            this.f2221h = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            this.f2221h.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    private void m9168a() {
        Drawable selector = getSelector();
        if (selector != null && this.f2225l && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    /* renamed from: b */
    private void m9166b(boolean z) {
        C0439a aVar = this.f2222i;
        if (aVar != null) {
            aVar.m9165a(z);
        }
    }

    /* renamed from: a */
    public int mo9153a(int i, int i2, int i3, int i4, int i5) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        getListPaddingLeft();
        getListPaddingRight();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        int i6 = listPaddingTop + listPaddingBottom;
        if (adapter == null) {
            return i6;
        }
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        int i7 = 0;
        int i8 = 0;
        View view = null;
        int i9 = 0;
        int i10 = i6;
        while (i7 < count) {
            int itemViewType = adapter.getItemViewType(i7);
            i9 = i9;
            if (itemViewType != i9) {
                view = null;
                i9 = itemViewType;
            }
            View view2 = adapter.getView(i7, view, this);
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = generateDefaultLayoutParams();
                view2.setLayoutParams(layoutParams2);
            }
            view2.measure(i, layoutParams2.height > 0 ? View.MeasureSpec.makeMeasureSpec(layoutParams2.height, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view2.forceLayout();
            int i11 = i10;
            if (i7 > 0) {
                i11 = i10 + dividerHeight;
            }
            i10 = i11 + view2.getMeasuredHeight();
            if (i10 >= i4) {
                return (i5 < 0 || i7 <= i5 || i8 <= 0 || i10 == i4) ? i4 : i8;
            }
            i8 = i8;
            if (i5 >= 0) {
                i8 = i8;
                if (i7 >= i5) {
                    i8 = i10;
                }
            }
            i7++;
            view = view2;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m9167a(boolean z) {
        this.f2223j = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:77:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0285  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02bd  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo9152a(android.view.MotionEvent r7, int r8) {
        /*
            Method dump skipped, instructions count: 719
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0438ai.mo9152a(android.view.MotionEvent, int):boolean");
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Drawable selector;
        if (!this.f2215b.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(this.f2215b);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f2214a == null) {
            super.drawableStateChanged();
            m9166b(true);
            m9168a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean hasFocus() {
        return this.f2224k || super.hasFocus();
    }

    @Override // android.view.View
    public boolean hasWindowFocus() {
        return this.f2224k || super.hasWindowFocus();
    }

    @Override // android.view.View
    public boolean isFocused() {
        return this.f2224k || super.isFocused();
    }

    @Override // android.view.View
    public boolean isInTouchMode() {
        return (this.f2224k && this.f2223j) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        this.f2214a = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 10 && this.f2214a == null) {
            this.f2214a = new RunnableC0440b();
            RunnableC0440b bVar = this.f2214a;
            C0438ai.this.post(bVar);
        }
        boolean onHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (!(pointToPosition == -1 || pointToPosition == getSelectedItemPosition())) {
                View childAt = getChildAt(pointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    setSelectionFromTop(pointToPosition, childAt.getTop() - getTop());
                }
                m9168a();
            }
        } else {
            setSelection(-1);
        }
        return onHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f2220g = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        RunnableC0440b bVar = this.f2214a;
        if (bVar != null) {
            C0438ai.this.f2214a = null;
            C0438ai.this.removeCallbacks(bVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        this.f2222i = drawable != null ? new C0439a(drawable) : null;
        super.setSelector(this.f2222i);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f2216c = rect.left;
        this.f2217d = rect.top;
        this.f2218e = rect.right;
        this.f2219f = rect.bottom;
    }
}
