package androidx.browser.browseractions;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import f.c.a;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/browser/browseractions/BrowserActionsFallbackMenuView.class */
public class BrowserActionsFallbackMenuView extends LinearLayout {

    /* renamed from: f */
    private final int f646f = getResources().getDimensionPixelOffset(a.b);

    /* renamed from: g */
    private final int f647g = getResources().getDimensionPixelOffset(a.a);

    public BrowserActionsFallbackMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(getResources().getDisplayMetrics().widthPixels - (this.f646f * 2), this.f647g), 1073741824), i2);
    }
}
