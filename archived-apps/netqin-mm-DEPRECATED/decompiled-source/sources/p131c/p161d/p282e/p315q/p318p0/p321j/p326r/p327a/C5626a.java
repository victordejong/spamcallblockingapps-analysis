package p131c.p161d.p282e.p315q.p318p0.p321j.p326r.p327a;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: c.d.e.q.p0.j.r.a.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/p0/j/r/a/a.class */
public class C5626a {

    /* renamed from: a */
    public ViewGroup f18698a;

    /* renamed from: b */
    public View.OnClickListener f18699b;

    public C5626a(ViewGroup viewGroup, View.OnClickListener onClickListener) {
        this.f18698a = viewGroup;
        this.f18699b = onClickListener;
    }

    /* renamed from: a */
    public Boolean m23386a(KeyEvent keyEvent) {
        if (keyEvent == null || keyEvent.getKeyCode() != 4 || keyEvent.getAction() != 1) {
            return null;
        }
        View.OnClickListener onClickListener = this.f18699b;
        if (onClickListener == null) {
            return false;
        }
        onClickListener.onClick(this.f18698a);
        return true;
    }
}
