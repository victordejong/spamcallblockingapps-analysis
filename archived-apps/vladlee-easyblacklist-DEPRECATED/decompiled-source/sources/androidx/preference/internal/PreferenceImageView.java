package androidx.preference.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.preference.C1001ac;
import com.google.android.gms.common.api.Api;
/* loaded from: classes-dex2jar.jar:androidx/preference/internal/PreferenceImageView.class */
public class PreferenceImageView extends ImageView {

    /* renamed from: a */
    private int f4340a;

    /* renamed from: b */
    private int f4341b;

    public PreferenceImageView(Context context) {
        this(context, null);
    }

    public PreferenceImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PreferenceImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4340a = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f4341b = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1001ac.C1009h.f4284bk, i, 0);
        setMaxWidth(obtainStyledAttributes.getDimensionPixelSize(C1001ac.C1009h.f4286bm, Api.BaseClientBuilder.API_PRIORITY_OTHER));
        setMaxHeight(obtainStyledAttributes.getDimensionPixelSize(C1001ac.C1009h.f4285bl, Api.BaseClientBuilder.API_PRIORITY_OTHER));
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.ImageView
    public int getMaxHeight() {
        return this.f4341b;
    }

    @Override // android.widget.ImageView
    public int getMaxWidth() {
        return this.f4340a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0033, code lost:
        if (r0 == 0) goto L_0x0036;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
        if (r0 == 0) goto L_0x0050;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006f, code lost:
        if (r0 == 0) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x000f, code lost:
        if (r0 == 0) goto L_0x0012;
     */
    @Override // android.widget.ImageView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r5, int r6) {
        /*
            r4 = this;
            r0 = r5
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0012
            r0 = r5
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L_0x003f
        L_0x0012:
            r0 = r5
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r9 = r0
            r0 = r4
            int r0 = r0.getMaxWidth()
            r10 = r0
            r0 = r5
            r8 = r0
            r0 = r10
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto L_0x003f
            r0 = r10
            r1 = r9
            if (r0 < r1) goto L_0x0036
            r0 = r5
            r8 = r0
            r0 = r7
            if (r0 != 0) goto L_0x003f
        L_0x0036:
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r8 = r0
        L_0x003f:
            r0 = r6
            int r0 = android.view.View.MeasureSpec.getMode(r0)
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0050
            r0 = r6
            r5 = r0
            r0 = r7
            if (r0 != 0) goto L_0x007a
        L_0x0050:
            r0 = r6
            int r0 = android.view.View.MeasureSpec.getSize(r0)
            r10 = r0
            r0 = r4
            int r0 = r0.getMaxHeight()
            r9 = r0
            r0 = r6
            r5 = r0
            r0 = r9
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto L_0x007a
            r0 = r9
            r1 = r10
            if (r0 < r1) goto L_0x0072
            r0 = r6
            r5 = r0
            r0 = r7
            if (r0 != 0) goto L_0x007a
        L_0x0072:
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            int r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            r5 = r0
        L_0x007a:
            r0 = r4
            r1 = r8
            r2 = r5
            super.onMeasure(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.internal.PreferenceImageView.onMeasure(int, int):void");
    }

    @Override // android.widget.ImageView
    public void setMaxHeight(int i) {
        this.f4341b = i;
        super.setMaxHeight(i);
    }

    @Override // android.widget.ImageView
    public void setMaxWidth(int i) {
        this.f4340a = i;
        super.setMaxWidth(i);
    }
}
