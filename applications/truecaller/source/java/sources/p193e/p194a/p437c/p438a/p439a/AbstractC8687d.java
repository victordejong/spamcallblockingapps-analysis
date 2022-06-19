package p193e.p194a.p437c.p438a.p439a;

import androidx.recyclerview.widget.RecyclerView;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/d.class */
public abstract class AbstractC8687d extends RecyclerView.AbstractC0338t {

    /* renamed from: a */
    public int f26592a;

    /* renamed from: b */
    public boolean f26593b;

    /* renamed from: c */
    public final int f26594c;

    public AbstractC8687d(int i) {
        this.f26594c = i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0338t
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        l.e(recyclerView, "recyclerView");
        super.onScrolled(recyclerView, i, i2);
        if (i2 == 0) {
            return;
        }
        C8688e c8688e = (C8688e) this;
        int findFirstVisibleItemPosition = c8688e.f26595d.findFirstVisibleItemPosition();
        if (findFirstVisibleItemPosition == -1) {
            return;
        }
        if (findFirstVisibleItemPosition == 0) {
            if (this.f26593b) {
                c8688e.f26596e.i();
                c8688e.f26597f.d(Boolean.FALSE);
            }
            this.f26593b = false;
        } else if (i2 <= 0) {
        } else {
            int i3 = this.f26592a + i2;
            this.f26592a = i3;
            if (i3 <= this.f26594c) {
                return;
            }
            this.f26592a = 0;
            if (!this.f26593b) {
                c8688e.f26596e.p();
                c8688e.f26597f.d(Boolean.TRUE);
            }
            this.f26593b = true;
        }
    }
}
