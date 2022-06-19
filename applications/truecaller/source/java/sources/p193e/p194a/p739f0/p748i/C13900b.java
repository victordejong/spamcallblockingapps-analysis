package p193e.p194a.p739f0.p748i;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import p1727n3.p1744b0.p1745a.C25595i;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.f0.i.b */
/* loaded from: classes13-dex2jar.jar:e/a/f0/i/b.class */
public final class C13900b extends C25595i {

    /* renamed from: i */
    public static final p<Integer, RecyclerView, Boolean> f40287i = C13901a.f40292b;

    /* renamed from: e */
    public final Rect f40288e;

    /* renamed from: f */
    public final int f40289f;

    /* renamed from: g */
    public final Drawable f40290g;

    /* renamed from: h */
    public final p<Integer, RecyclerView, Boolean> f40291h;

    /* renamed from: e.a.f0.i.b$a */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/i/b$a.class */
    public static final class C13901a extends m implements p<Integer, RecyclerView, Boolean> {

        /* renamed from: b */
        public static final C13901a f40292b = new C13901a();

        public C13901a() {
            super(2);
        }

        /* renamed from: k */
        public Object m20967k(Object obj, Object obj2) {
            int intValue = ((Number) obj).intValue();
            RecyclerView recyclerView = (RecyclerView) obj2;
            l.e(recyclerView, "recyclerView");
            RecyclerView.AbstractC0317g adapter = recyclerView.getAdapter();
            boolean z = false;
            if (intValue < (adapter != null ? adapter.getItemCount() : 0) - 1) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13900b(Context context, int i, Drawable drawable, p pVar, int i2) {
        super(context, i);
        p<Integer, RecyclerView, Boolean> pVar2 = (i2 & 8) != 0 ? f40287i : null;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(drawable, "divider");
        l.e(pVar2, "itemDividerPredicate");
        this.f40289f = i;
        this.f40290g = drawable;
        this.f40291h = pVar2;
        m3173d(drawable);
        this.f40288e = new Rect();
    }

    @Override // p1727n3.p1744b0.p1745a.C25595i, androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        int i;
        int i2;
        int i3;
        int i4;
        l.e(canvas, AbstractC2405c.f7629a);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        if (recyclerView.getLayoutManager() == null || this.f71674a == null) {
            return;
        }
        if (this.f40289f == 1) {
            canvas.save();
            if (recyclerView.getClipToPadding()) {
                i3 = recyclerView.getPaddingLeft();
                i4 = recyclerView.getWidth() - recyclerView.getPaddingRight();
                canvas.clipRect(i3, recyclerView.getPaddingTop(), i4, recyclerView.getHeight() - recyclerView.getPaddingBottom());
            } else {
                i4 = recyclerView.getWidth();
                i3 = 0;
            }
            int childCount = recyclerView.getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                if (((Boolean) this.f40291h.k(Integer.valueOf(i5), recyclerView)).booleanValue()) {
                    View childAt = recyclerView.getChildAt(i5);
                    recyclerView.getDecoratedBoundsWithMargins(childAt, this.f40288e);
                    int i6 = this.f40288e.bottom;
                    l.d(childAt, "child");
                    int m4001J2 = C25225a.m4001J2(childAt.getTranslationY()) + i6;
                    this.f40290g.setBounds(i3, m4001J2 - this.f40290g.getIntrinsicHeight(), i4, m4001J2);
                    this.f40290g.draw(canvas);
                }
            }
            canvas.restore();
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i = recyclerView.getPaddingTop();
            i2 = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i, recyclerView.getWidth() - recyclerView.getPaddingRight(), i2);
        } else {
            i2 = recyclerView.getHeight();
            i = 0;
        }
        int childCount2 = recyclerView.getChildCount();
        for (int i7 = 0; i7 < childCount2; i7++) {
            View childAt2 = recyclerView.getChildAt(i7);
            RecyclerView.AbstractC0329o layoutManager = recyclerView.getLayoutManager();
            l.c(layoutManager);
            layoutManager.getDecoratedBoundsWithMargins(childAt2, this.f40288e);
            int i8 = this.f40288e.right;
            l.d(childAt2, "child");
            int m4001J22 = C25225a.m4001J2(childAt2.getTranslationX()) + i8;
            this.f40290g.setBounds(m4001J22 - this.f40290g.getIntrinsicWidth(), i, m4001J22, i2);
            this.f40290g.draw(canvas);
        }
        canvas.restore();
    }
}
