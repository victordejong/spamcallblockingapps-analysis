package p193e.p194a.p437c.p438a.p480j.p483c.p484k;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import p193e.p194a.p437c.p438a.p480j.p482b.AbstractC9135d;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.k.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/k/d.class */
public abstract class AbstractC9156d<T extends AbstractC9135d> extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final Context f27878a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC9156d(View view) {
        super(view);
        l.e(view, "itemView");
        Context context = view.getContext();
        l.d(context, "itemView.context");
        this.f27878a = context;
    }

    /* renamed from: N4 */
    public void m27845N4(T t) {
        l.e(t, "filterItem");
        mo27843O4();
    }

    /* renamed from: O4 */
    public abstract void mo27843O4();
}
