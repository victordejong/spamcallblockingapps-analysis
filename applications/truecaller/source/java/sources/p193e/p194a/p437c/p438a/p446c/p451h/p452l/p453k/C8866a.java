package p193e.p194a.p437c.p438a.p446c.p451h.p452l.p453k;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.p168ui.C4078R;
import java.util.Objects;
import p1727n3.p1807k.p1809b.C26467a;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.h.l.k.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/l/k/a.class */
public final class C8866a extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final Drawable f27012a;

    /* renamed from: b */
    public final int f27013b;

    public C8866a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        int i = C4078R.C4079drawable.finance_divider;
        Object obj = C26467a.f74235a;
        this.f27012a = C26467a.C26470c.m1789b(context, i);
        Resources resources = context.getResources();
        l.d(resources, "context.resources");
        this.f27013b = (int) TypedValue.applyDimension(1, 76.0f, resources.getDisplayMetrics());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(canvas, AbstractC2405c.f7629a);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        super.onDrawOver(canvas, recyclerView, c0347z);
        int paddingLeft = recyclerView.getPaddingLeft();
        int i = this.f27013b;
        int width = recyclerView.getWidth();
        int paddingRight = recyclerView.getPaddingRight();
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            l.d(childAt, "child");
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams");
            int bottom = childAt.getBottom() + ((ViewGroup.MarginLayoutParams) ((RecyclerView.C0334p) layoutParams)).bottomMargin;
            Drawable drawable = this.f27012a;
            int intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
            Drawable drawable2 = this.f27012a;
            if (drawable2 != null) {
                drawable2.setBounds(paddingLeft + i, bottom, width - paddingRight, intrinsicHeight + bottom);
            }
            Drawable drawable3 = this.f27012a;
            if (drawable3 != null) {
                drawable3.draw(canvas);
            }
        }
    }
}
