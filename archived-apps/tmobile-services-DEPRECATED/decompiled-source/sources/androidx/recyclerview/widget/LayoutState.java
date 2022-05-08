package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LayoutState.class */
class LayoutState {

    /* renamed from: b */
    int f4649b;

    /* renamed from: c */
    int f4650c;

    /* renamed from: d */
    int f4651d;

    /* renamed from: e */
    int f4652e;

    /* renamed from: h */
    boolean f4655h;

    /* renamed from: i */
    boolean f4656i;

    /* renamed from: a */
    boolean f4648a = true;

    /* renamed from: f */
    int f4653f = 0;

    /* renamed from: g */
    int f4654g = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public boolean m17656a(RecyclerView.State state) {
        int i = this.f4650c;
        return i >= 0 && i < state.m17275b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public View m17655b(RecyclerView.Recycler recycler) {
        View o = recycler.m17319o(this.f4650c);
        this.f4650c += this.f4651d;
        return o;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f4649b + ", mCurrentPosition=" + this.f4650c + ", mItemDirection=" + this.f4651d + ", mLayoutDirection=" + this.f4652e + ", mStartLine=" + this.f4653f + ", mEndLine=" + this.f4654g + '}';
    }
}
