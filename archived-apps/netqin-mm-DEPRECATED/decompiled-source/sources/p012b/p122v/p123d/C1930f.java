package p012b.p122v.p123d;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: b.v.d.f */
/* loaded from: classes-dex2jar.jar:b/v/d/f.class */
public class C1930f {

    /* renamed from: b */
    public int f7620b;

    /* renamed from: c */
    public int f7621c;

    /* renamed from: d */
    public int f7622d;

    /* renamed from: e */
    public int f7623e;

    /* renamed from: h */
    public boolean f7626h;

    /* renamed from: i */
    public boolean f7627i;

    /* renamed from: a */
    public boolean f7619a = true;

    /* renamed from: f */
    public int f7624f = 0;

    /* renamed from: g */
    public int f7625g = 0;

    /* renamed from: a */
    public View m31616a(RecyclerView.C0522u uVar) {
        View d = uVar.m37222d(this.f7621c);
        this.f7621c += this.f7622d;
        return d;
    }

    /* renamed from: a */
    public boolean m31615a(RecyclerView.C0526y yVar) {
        int i = this.f7621c;
        return i >= 0 && i < yVar.m37201a();
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f7620b + ", mCurrentPosition=" + this.f7621c + ", mItemDirection=" + this.f7622d + ", mLayoutDirection=" + this.f7623e + ", mStartLine=" + this.f7624f + ", mEndLine=" + this.f7625g + '}';
    }
}
