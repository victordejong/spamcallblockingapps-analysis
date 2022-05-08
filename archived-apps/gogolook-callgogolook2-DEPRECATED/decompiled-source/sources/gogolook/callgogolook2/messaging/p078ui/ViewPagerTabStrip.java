package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$dimen;
/* renamed from: gogolook.callgogolook2.messaging.ui.ViewPagerTabStrip */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/ViewPagerTabStrip.class */
public class ViewPagerTabStrip extends LinearLayout {

    /* renamed from: a */
    public int f11549a;

    /* renamed from: b */
    public int f11550b;

    /* renamed from: c */
    public final Paint f11551c;

    /* renamed from: d */
    public int f11552d;

    /* renamed from: e */
    public float f11553e;

    public ViewPagerTabStrip(Context context) {
        this(context, null);
    }

    public ViewPagerTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Resources resources = context.getResources();
        this.f11549a = resources.getDimensionPixelSize(R$dimen.app_contact_picker_tab_underline_height);
        this.f11550b = resources.getDimensionPixelSize(R$dimen.app_contact_picker_tab_underline_margin_horizontal);
        int color = resources.getColor(2131100157);
        int color2 = resources.getColor(R$color.contact_picker_tab_underline);
        this.f11551c = new Paint();
        this.f11551c.setColor(color);
        setBackgroundColor(color2);
        setWillNotDraw(false);
    }

    /* renamed from: a */
    public void m27301a(int i, float f, int i2) {
        this.f11552d = i;
        this.f11553e = f;
        invalidate();
    }

    /* renamed from: a */
    public final boolean m27302a() {
        boolean z = true;
        if (getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(this.f11552d);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            boolean a = m27302a();
            boolean z = false;
            int i = 1;
            int i2 = this.f11552d;
            if (!a ? i2 < getChildCount() - 1 : i2 > 0) {
                z = true;
            }
            int i3 = right;
            int i4 = left;
            if (this.f11553e > 0.0f) {
                i3 = right;
                i4 = left;
                if (z) {
                    int i5 = this.f11552d;
                    if (a) {
                        i = -1;
                    }
                    View childAt2 = getChildAt(i5 + i);
                    int left2 = childAt2.getLeft();
                    int right2 = childAt2.getRight();
                    float f = this.f11553e;
                    i4 = (int) ((left2 * f) + ((1.0f - f) * left));
                    i3 = (int) ((right2 * f) + ((1.0f - f) * right));
                }
            }
            int height = getHeight();
            int i6 = this.f11550b;
            canvas.drawRect(i4 + i6, height - this.f11549a, i3 - i6, height, this.f11551c);
        }
    }
}
