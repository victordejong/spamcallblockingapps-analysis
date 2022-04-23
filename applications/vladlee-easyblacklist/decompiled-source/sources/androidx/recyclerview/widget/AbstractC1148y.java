package androidx.recyclerview.widget;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.y */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/y.class */
public abstract class AbstractC1148y {

    /* renamed from: a */
    protected final RecyclerView.AbstractC1066i f4911a;

    /* renamed from: b */
    final Rect f4912b;

    /* renamed from: c */
    private int f4913c;

    private AbstractC1148y(RecyclerView.AbstractC1066i iVar) {
        this.f4913c = Integer.MIN_VALUE;
        this.f4912b = new Rect();
        this.f4911a = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ AbstractC1148y(RecyclerView.AbstractC1066i iVar, byte b) {
        this(iVar);
    }

    /* renamed from: a */
    public static AbstractC1148y m6716a(RecyclerView.AbstractC1066i iVar, int i) {
        if (i == 0) {
            return new C1149z(iVar);
        }
        if (i == 1) {
            return new C1088aa(iVar);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    /* renamed from: a */
    public abstract int mo6713a(View view);

    /* renamed from: a */
    public final void m6717a() {
        this.f4913c = mo6705f();
    }

    /* renamed from: a */
    public abstract void mo6714a(int i);

    /* renamed from: b */
    public final int m6715b() {
        if (Integer.MIN_VALUE == this.f4913c) {
            return 0;
        }
        return mo6705f() - this.f4913c;
    }

    /* renamed from: b */
    public abstract int mo6712b(View view);

    /* renamed from: c */
    public abstract int mo6711c();

    /* renamed from: c */
    public abstract int mo6710c(View view);

    /* renamed from: d */
    public abstract int mo6709d();

    /* renamed from: d */
    public abstract int mo6708d(View view);

    /* renamed from: e */
    public abstract int mo6707e();

    /* renamed from: e */
    public abstract int mo6706e(View view);

    /* renamed from: f */
    public abstract int mo6705f();

    /* renamed from: f */
    public abstract int mo6704f(View view);

    /* renamed from: g */
    public abstract int mo6703g();

    /* renamed from: h */
    public abstract int mo6702h();

    /* renamed from: i */
    public abstract int mo6701i();
}
