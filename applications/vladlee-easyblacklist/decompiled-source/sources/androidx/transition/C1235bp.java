package androidx.transition;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.p037g.C0741t;
import java.lang.reflect.Method;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.transition.bp */
/* loaded from: classes-dex2jar.jar:androidx/transition/bp.class */
public class C1235bp implements AbstractC1238br {

    /* renamed from: a */
    protected C1236a f5269a;

    /* renamed from: androidx.transition.bp$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/bp$a.class */
    static final class C1236a extends ViewGroup {

        /* renamed from: a */
        static Method f5270a;

        /* renamed from: b */
        ViewGroup f5271b;

        /* renamed from: c */
        View f5272c;

        /* renamed from: d */
        ArrayList<Drawable> f5273d = null;

        /* renamed from: e */
        C1235bp f5274e;

        static {
            try {
                f5270a = ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", Integer.TYPE, Integer.TYPE, Rect.class);
            } catch (NoSuchMethodException e) {
            }
        }

        C1236a(Context context, ViewGroup viewGroup, View view, C1235bp bpVar) {
            super(context);
            this.f5271b = viewGroup;
            this.f5272c = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f5274e = bpVar;
        }

        /* renamed from: a */
        public final void m6528a(View view) {
            if (view.getParent() instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (!(viewGroup == this.f5271b || viewGroup.getParent() == null || !C0741t.m8370E(viewGroup))) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.f5271b.getLocationOnScreen(iArr2);
                    C0741t.m8330d(view, iArr[0] - iArr2[0]);
                    C0741t.m8332c(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view, getChildCount() - 1);
        }

        /* renamed from: b */
        public final void m6527b(View view) {
            ArrayList<Drawable> arrayList;
            super.removeView(view);
            if (getChildCount() == 0 && ((arrayList = this.f5273d) == null || arrayList.size() == 0)) {
                this.f5271b.removeView(this);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void dispatchDraw(Canvas canvas) {
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            this.f5271b.getLocationOnScreen(iArr);
            this.f5272c.getLocationOnScreen(iArr2);
            canvas.translate(iArr2[0] - iArr[0], iArr2[1] - iArr[1]);
            canvas.clipRect(new Rect(0, 0, this.f5272c.getWidth(), this.f5272c.getHeight()));
            super.dispatchDraw(canvas);
            ArrayList<Drawable> arrayList = this.f5273d;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f5273d.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public final ViewParent invalidateChildInParent(int[] iArr, Rect rect) {
            if (this.f5271b == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            ViewGroup viewGroup = this.f5271b;
            if (viewGroup instanceof ViewGroup) {
                iArr[0] = 0;
                iArr[1] = 0;
                int[] iArr2 = new int[2];
                int[] iArr3 = new int[2];
                viewGroup.getLocationOnScreen(iArr2);
                this.f5272c.getLocationOnScreen(iArr3);
                int[] iArr4 = {iArr3[0] - iArr2[0], iArr3[1] - iArr2[1]};
                rect.offset(iArr4[0], iArr4[1]);
                return super.invalidateChildInParent(iArr, rect);
            }
            invalidate(rect);
            return null;
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public final void invalidateDrawable(Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        protected final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        @Override // android.view.View
        protected final boolean verifyDrawable(Drawable drawable) {
            if (super.verifyDrawable(drawable)) {
                return true;
            }
            ArrayList<Drawable> arrayList = this.f5273d;
            return arrayList != null && arrayList.contains(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1235bp(Context context, ViewGroup viewGroup, View view) {
        this.f5269a = new C1236a(context, viewGroup, view, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static C1235bp m6529c(View view) {
        C1228bi biVar;
        ViewGroup viewGroup;
        View view2 = view;
        while (true) {
            biVar = null;
            if (view2 == null) {
                viewGroup = null;
                break;
            } else if (view2.getId() == 16908290 && (view2 instanceof ViewGroup)) {
                viewGroup = (ViewGroup) view2;
                break;
            } else if (view2.getParent() instanceof ViewGroup) {
                view2 = (ViewGroup) view2.getParent();
            }
        }
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt instanceof C1236a) {
                    return ((C1236a) childAt).f5274e;
                }
            }
            biVar = new C1228bi(viewGroup.getContext(), viewGroup, view);
        }
        return biVar;
    }

    @Override // androidx.transition.AbstractC1238br
    /* renamed from: a */
    public final void mo6526a(Drawable drawable) {
        C1236a aVar = this.f5269a;
        if (aVar.f5273d == null) {
            aVar.f5273d = new ArrayList<>();
        }
        if (!aVar.f5273d.contains(drawable)) {
            aVar.f5273d.add(drawable);
            aVar.invalidate(drawable.getBounds());
            drawable.setCallback(aVar);
        }
    }

    @Override // androidx.transition.AbstractC1238br
    /* renamed from: b */
    public final void mo6525b(Drawable drawable) {
        C1236a aVar = this.f5269a;
        if (aVar.f5273d != null) {
            aVar.f5273d.remove(drawable);
            aVar.invalidate(drawable.getBounds());
            drawable.setCallback(null);
        }
    }
}
