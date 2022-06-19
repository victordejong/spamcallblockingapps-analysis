package p193e.p194a.p619d.p628c.p636z;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p619d.p628c.p636z.AbstractC11358p;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.c.z.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/j.class */
public abstract class AbstractC11348j<T extends AbstractC11358p> extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final g f33372a;

    /* renamed from: e.a.d.c.z.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/z/j$a.class */
    public static final class C11349a extends m implements a<C19235i0> {

        /* renamed from: b */
        public final /* synthetic */ View f33373b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11349a(View view) {
            super(0);
            this.f33373b = view;
        }

        public Object invoke() {
            Context context = this.f33373b.getContext();
            l.d(context, "view.context");
            return new C19235i0(context);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC11348j(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        this.f33372a = C25225a.m3978P1(new C11349a(view));
    }

    /* renamed from: N4 */
    public final C19235i0 m24792N4() {
        return (C19235i0) this.f33372a.getValue();
    }
}
