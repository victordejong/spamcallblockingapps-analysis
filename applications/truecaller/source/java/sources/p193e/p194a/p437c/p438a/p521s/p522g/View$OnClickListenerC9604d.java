package p193e.p194a.p437c.p438a.p521s.p522g;

import android.view.View;
import android.widget.TextView;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.s.g.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/s/g/d.class */
public final class View$OnClickListenerC9604d implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9607f f29030a;

    public View$OnClickListenerC9604d(C9607f c9607f) {
        this.f29030a = c9607f;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        TextView title;
        p onTagSelected;
        C9607f c9607f = this.f29030a;
        c9607f.setSelected(!c9607f.isSelected());
        title = this.f29030a.getTitle();
        l.d(title, "title");
        title.setSelected(this.f29030a.isSelected());
        if (!this.f29030a.isSelected()) {
            this.f29030a.m27395d();
            return;
        }
        C9607f.m27396c(this.f29030a);
        C9607f c9607f2 = this.f29030a;
        T t = c9607f2.f29034b;
        if (t == 0 || (onTagSelected = c9607f2.getOnTagSelected()) == null) {
            return;
        }
        s sVar = (s) onTagSelected.k(t, this.f29030a);
    }
}
