package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.u */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/u.class */
final class C1143u {

    /* renamed from: b */
    int f4902b;

    /* renamed from: c */
    int f4903c;

    /* renamed from: d */
    int f4904d;

    /* renamed from: e */
    int f4905e;

    /* renamed from: h */
    boolean f4908h;

    /* renamed from: i */
    boolean f4909i;

    /* renamed from: a */
    boolean f4901a = true;

    /* renamed from: f */
    int f4906f = 0;

    /* renamed from: g */
    int f4907g = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final View m6725a(RecyclerView.C1074n nVar) {
        View b = nVar.m7071b(this.f4903c);
        this.f4903c += this.f4904d;
        return b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m6724a(RecyclerView.C1079q qVar) {
        int i = this.f4903c;
        return i >= 0 && i < qVar.m7040a();
    }

    public final String toString() {
        return "LayoutState{mAvailable=" + this.f4902b + ", mCurrentPosition=" + this.f4903c + ", mItemDirection=" + this.f4904d + ", mLayoutDirection=" + this.f4905e + ", mStartLine=" + this.f4906f + ", mEndLine=" + this.f4907g + '}';
    }
}
