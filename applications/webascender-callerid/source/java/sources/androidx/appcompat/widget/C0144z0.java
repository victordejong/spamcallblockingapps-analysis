package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import f.a.d;
import f.a.f;
import f.a.g;
import f.a.i;
/* renamed from: androidx.appcompat.widget.z0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/z0.class */
class C0144z0 {

    /* renamed from: a */
    private final Context f639a;

    /* renamed from: b */
    private final View f640b;

    /* renamed from: c */
    private final TextView f641c;

    /* renamed from: d */
    private final WindowManager.LayoutParams f642d;

    /* renamed from: e */
    private final Rect f643e = new Rect();

    /* renamed from: f */
    private final int[] f644f = new int[2];

    /* renamed from: g */
    private final int[] f645g = new int[2];

    public C0144z0(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f642d = layoutParams;
        this.f639a = context;
        View inflate = LayoutInflater.from(context).inflate(g.s, (ViewGroup) null);
        this.f640b = inflate;
        this.f641c = (TextView) inflate.findViewById(f.s);
        layoutParams.setTitle(C0144z0.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = i.a;
        layoutParams.flags = 24;
    }

    /* renamed from: a */
    private void m6371a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int i3;
        int i4;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f639a.getResources().getDimensionPixelOffset(d.j);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f639a.getResources().getDimensionPixelOffset(d.i);
            int i5 = i2 + dimensionPixelOffset2;
            int i6 = i2 - dimensionPixelOffset2;
            i4 = i5;
            i3 = i6;
        } else {
            i4 = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f639a.getResources().getDimensionPixelOffset(z ? d.l : d.k);
        View m6370b = m6370b(view);
        if (m6370b == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        m6370b.getWindowVisibleDisplayFrame(this.f643e);
        Rect rect = this.f643e;
        if (rect.left < 0 && rect.top < 0) {
            Resources resources = this.f639a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f643e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        m6370b.getLocationOnScreen(this.f645g);
        view.getLocationOnScreen(this.f644f);
        int[] iArr = this.f644f;
        int i7 = iArr[0];
        int[] iArr2 = this.f645g;
        iArr[0] = i7 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (m6370b.getWidth() / 2);
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f640b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredHeight = this.f640b.getMeasuredHeight();
        int[] iArr3 = this.f644f;
        int i8 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i9 = iArr3[1] + i4 + dimensionPixelOffset3;
        if (z) {
            if (i8 >= 0) {
                layoutParams.y = i8;
            } else {
                layoutParams.y = i9;
            }
        } else if (measuredHeight + i9 <= this.f643e.height()) {
            layoutParams.y = i9;
        } else {
            layoutParams.y = i8;
        }
    }

    /* renamed from: b */
    private static View m6370b(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if (!(layoutParams instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams).type != 2) {
            Context context = view.getContext();
            while (true) {
                Context context2 = context;
                if (!(context2 instanceof ContextWrapper)) {
                    return rootView;
                }
                if (context2 instanceof Activity) {
                    return ((Activity) context2).getWindow().getDecorView();
                }
                context = ((ContextWrapper) context2).getBaseContext();
            }
        } else {
            return rootView;
        }
    }

    /* renamed from: c */
    public void m6369c() {
        if (!m6368d()) {
            return;
        }
        ((WindowManager) this.f639a.getSystemService("window")).removeView(this.f640b);
    }

    /* renamed from: d */
    boolean m6368d() {
        return this.f640b.getParent() != null;
    }

    /* renamed from: e */
    public void m6367e(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (m6368d()) {
            m6369c();
        }
        this.f641c.setText(charSequence);
        m6371a(view, i, i2, z, this.f642d);
        ((WindowManager) this.f639a.getSystemService("window")).addView(this.f640b, this.f642d);
    }
}
