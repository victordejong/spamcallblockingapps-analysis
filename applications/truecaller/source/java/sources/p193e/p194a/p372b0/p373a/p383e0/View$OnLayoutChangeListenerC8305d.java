package p193e.p194a.p372b0.p373a.p383e0;

import android.graphics.Rect;
import android.view.View;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.truecaller.common.p156ui.C3700R;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import p193e.p194a.p1066n.C18334g0;
import s1.z.c.l;
/* renamed from: e.a.b0.a.e0.d */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/e0/d.class */
public final class View$OnLayoutChangeListenerC8305d implements View.OnLayoutChangeListener {

    /* renamed from: a */
    public final float f25585a;

    /* renamed from: b */
    public final C8303b f25586b;

    /* renamed from: c */
    public final TooltipDirection f25587c;

    /* renamed from: d */
    public final View f25588d;

    /* renamed from: e */
    public final float f25589e;

    /* renamed from: e.a.b0.a.e0.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/e0/d$a.class */
    public static final class RunnableC8306a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ Integer f25591b;

        public RunnableC8306a(Integer num) {
            View$OnLayoutChangeListenerC8305d.this = r4;
            this.f25591b = num;
        }

        @Override // java.lang.Runnable
        public final void run() {
            View$OnLayoutChangeListenerC8305d.this.f25586b.setMaxWidth(this.f25591b.intValue());
        }
    }

    public View$OnLayoutChangeListenerC8305d(C8303b c8303b, TooltipDirection tooltipDirection, View view, float f) {
        l.e(c8303b, "tooltip");
        l.e(tooltipDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        this.f25586b = c8303b;
        this.f25587c = tooltipDirection;
        this.f25588d = view;
        this.f25589e = f;
        this.f25585a = c8303b.getResources().getDimension(C3700R.dimen.tooltip_edge_margin);
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        Integer num;
        float f;
        float f2;
        float f3;
        int i9;
        int i10;
        float f4;
        float f5;
        int i11;
        int i12;
        float f6;
        float f7;
        int i13;
        int i14;
        int i15;
        l.e(view, "parent");
        Rect rect = this.f25588d == null ? new Rect(0, 0, view.getWidth(), view.getHeight()) : new Rect(this.f25588d.getLeft(), this.f25588d.getTop(), this.f25588d.getRight(), this.f25588d.getBottom());
        TooltipDirection m15212o0 = C18334g0.m15212o0(this.f25587c, view);
        int ordinal = m15212o0.ordinal();
        if (ordinal != 3) {
            num = ordinal != 4 ? ordinal != 5 ? null : Integer.valueOf((int) ((rect.left - this.f25589e) - this.f25585a)) : Integer.valueOf((int) (((view.getRight() - rect.right) - this.f25589e) - this.f25585a));
        } else {
            int left = rect.left - view.getLeft();
            int right = view.getRight() - rect.right;
            int i16 = left;
            if (left > right) {
                i16 = right;
            }
            num = Integer.valueOf((int) ((rect.width() + (i16 * 2)) - (this.f25589e * 2)));
        }
        if (num != null) {
            if (num.intValue() != this.f25586b.getMaxWidth()) {
                this.f25586b.post(new RunnableC8306a(num));
            }
        }
        C8303b c8303b = this.f25586b;
        switch (m15212o0.ordinal()) {
            case 1:
                int i17 = rect.left;
                f5 = i17;
                i11 = rect.right - i17;
                i12 = this.f25586b.getWidth();
                f4 = (i11 - i12) / 2.0f;
                f = f4 + f5;
                break;
            case 2:
            case 6:
            case 9:
            case 12:
            default:
                throw new IllegalStateException();
            case 3:
                int i18 = rect.left;
                f5 = i18;
                i11 = rect.right - i18;
                i12 = this.f25586b.getWidth();
                f4 = (i11 - i12) / 2.0f;
                f = f4 + f5;
                break;
            case 4:
                f4 = rect.right;
                f5 = this.f25589e;
                f = f4 + f5;
                break;
            case 5:
                f = (rect.left - this.f25586b.getWidth()) - this.f25589e;
                break;
            case 7:
                int i19 = rect.left;
                f5 = i19;
                f7 = (rect.right - i19) - this.f25586b.getWidth();
                f6 = 0.85f;
                f4 = f7 * f6;
                f = f4 + f5;
                break;
            case 8:
                int i20 = rect.right;
                f5 = i20;
                f7 = (i20 - rect.left) - this.f25586b.getWidth();
                f6 = 0.45f;
                f4 = f7 * f6;
                f = f4 + f5;
                break;
            case 10:
                int i21 = rect.left;
                i15 = i21 + (rect.right - i21);
                i14 = this.f25586b.getWidth();
                i13 = i15 - i14;
                f = i13;
                break;
            case 11:
                int i22 = rect.right;
                i15 = i22 + (i22 - rect.left);
                i14 = this.f25586b.getWidth();
                i13 = i15 - i14;
                f = i13;
                break;
            case 13:
                int i23 = rect.left;
                i15 = i23 + (rect.right - i23);
                i14 = this.f25586b.getWidth();
                i13 = i15 - i14;
                f = i13;
                break;
            case 14:
                i13 = rect.left;
                f = i13;
                break;
        }
        c8303b.setTranslationX(f - this.f25586b.getLeft());
        C8303b c8303b2 = this.f25586b;
        switch (m15212o0.ordinal()) {
            case 1:
            case 7:
            case 8:
            case 10:
            case 11:
                f2 = rect.bottom + this.f25589e;
                break;
            case 2:
            case 6:
            case 9:
            case 12:
            default:
                throw new IllegalStateException();
            case 3:
            case 13:
            case 14:
                f2 = (rect.top - this.f25586b.getHeight()) - this.f25589e;
                break;
            case 4:
                int i24 = rect.top;
                f3 = i24;
                i10 = rect.bottom - i24;
                i9 = this.f25586b.getHeight();
                f2 = ((i10 - i9) / 2.0f) + f3;
                break;
            case 5:
                int i25 = rect.top;
                f3 = i25;
                i10 = rect.bottom - i25;
                i9 = this.f25586b.getHeight();
                f2 = ((i10 - i9) / 2.0f) + f3;
                break;
        }
        c8303b2.setTranslationY(f2 - this.f25586b.getTop());
        C8303b c8303b3 = this.f25586b;
        View view2 = this.f25588d;
        if (view2 != null) {
            view = view2;
        }
        c8303b3.setVisibility(view.getVisibility());
    }
}
