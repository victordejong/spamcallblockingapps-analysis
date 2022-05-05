package androidx.transition;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.transition.C1200al;
/* renamed from: androidx.transition.aa */
/* loaded from: classes-dex2jar.jar:androidx/transition/aa.class */
final class C1189aa extends View implements AbstractC1192ad {

    /* renamed from: a */
    final View f5174a;

    /* renamed from: b */
    ViewGroup f5175b;

    /* renamed from: c */
    View f5176c;

    /* renamed from: d */
    int f5177d;

    /* renamed from: e */
    Matrix f5178e;

    /* renamed from: f */
    private int f5179f;

    /* renamed from: g */
    private int f5180g;

    /* renamed from: h */
    private final Matrix f5181h = new Matrix();

    /* renamed from: i */
    private final ViewTreeObserver.OnPreDrawListener f5182i = new ViewTreeObserver$OnPreDrawListenerC1190ab(this);

    private C1189aa(View view) {
        super(view.getContext());
        this.f5174a = view;
        setLayerType(2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC1192ad m6557a(View view, ViewGroup viewGroup) {
        FrameLayout frameLayout;
        C1189aa b = m6555b(view);
        C1189aa aaVar = b;
        if (b == null) {
            while (true) {
                if (viewGroup instanceof FrameLayout) {
                    frameLayout = (FrameLayout) viewGroup;
                    break;
                }
                ViewParent parent = viewGroup.getParent();
                if (!(parent instanceof ViewGroup)) {
                    frameLayout = null;
                    break;
                }
                viewGroup = (ViewGroup) parent;
            }
            if (frameLayout == null) {
                return null;
            }
            aaVar = new C1189aa(view);
            frameLayout.addView(aaVar);
        }
        aaVar.f5177d++;
        return aaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6558a(View view) {
        C1189aa b = m6555b(view);
        if (b != null) {
            b.f5177d--;
            if (b.f5177d <= 0) {
                ViewParent parent = b.getParent();
                if (parent instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    viewGroup.endViewTransition(b);
                    viewGroup.removeView(b);
                }
            }
        }
    }

    /* renamed from: a */
    private static void m6556a(View view, C1189aa aaVar) {
        view.setTag(C1200al.C1201a.f5201a, aaVar);
    }

    /* renamed from: b */
    private static C1189aa m6555b(View view) {
        return (C1189aa) view.getTag(C1200al.C1201a.f5201a);
    }

    @Override // androidx.transition.AbstractC1192ad
    /* renamed from: a */
    public final void mo6551a(ViewGroup viewGroup, View view) {
        this.f5175b = viewGroup;
        this.f5176c = view;
    }

    @Override // android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        m6556a(this.f5174a, this);
        int[] iArr = new int[2];
        getLocationOnScreen(iArr);
        this.f5174a.getLocationOnScreen(r0);
        int[] iArr2 = {(int) (iArr2[0] - this.f5174a.getTranslationX()), (int) (iArr2[1] - this.f5174a.getTranslationY())};
        this.f5179f = iArr2[0] - iArr[0];
        this.f5180g = iArr2[1] - iArr[1];
        this.f5174a.getViewTreeObserver().addOnPreDrawListener(this.f5182i);
        this.f5174a.setVisibility(4);
    }

    @Override // android.view.View
    protected final void onDetachedFromWindow() {
        this.f5174a.getViewTreeObserver().removeOnPreDrawListener(this.f5182i);
        this.f5174a.setVisibility(0);
        m6556a(this.f5174a, (C1189aa) null);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        this.f5181h.set(this.f5178e);
        this.f5181h.postTranslate(this.f5179f, this.f5180g);
        canvas.setMatrix(this.f5181h);
        this.f5174a.draw(canvas);
    }

    @Override // android.view.View, androidx.transition.AbstractC1192ad
    public final void setVisibility(int i) {
        super.setVisibility(i);
        this.f5174a.setVisibility(i == 0 ? 4 : 0);
    }
}
