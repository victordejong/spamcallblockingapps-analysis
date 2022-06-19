package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$p.class */
public class RecyclerView$p extends ViewGroup.MarginLayoutParams {

    /* renamed from: a */
    RecyclerView$d0 f1967a;

    /* renamed from: b */
    final Rect f1968b = new Rect();

    /* renamed from: c */
    boolean f1969c = true;

    /* renamed from: d */
    boolean f1970d = false;

    public RecyclerView$p(int i, int i2) {
        super(i, i2);
    }

    public RecyclerView$p(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public RecyclerView$p(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
    }

    public RecyclerView$p(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
    }

    public RecyclerView$p(RecyclerView$p recyclerView$p) {
        super((ViewGroup.LayoutParams) recyclerView$p);
    }

    /* renamed from: a */
    public int m5120a() {
        return this.f1967a.getLayoutPosition();
    }

    /* renamed from: b */
    public boolean m5119b() {
        return this.f1967a.isUpdated();
    }

    /* renamed from: c */
    public boolean m5118c() {
        return this.f1967a.isRemoved();
    }

    /* renamed from: d */
    public boolean m5117d() {
        return this.f1967a.isInvalid();
    }
}
