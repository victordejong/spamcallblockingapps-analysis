package p193e.p194a.p437c.p438a.p507p.p511d.p512q;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import java.util.LinkedHashSet;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p507p.p510c.AbstractC9460d;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import s1.z.c.l;
/* renamed from: e.a.c.a.p.d.q.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/q/a.class */
public abstract class AbstractC9490a<T extends AbstractC9460d> extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final Context f28774a;

    /* renamed from: b */
    public final Set<Long> f28775b = new LinkedHashSet();

    /* renamed from: c */
    public final AbstractC9114h f28776c;

    /* renamed from: e.a.c.a.p.d.q.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/p/d/q/a$a.class */
    public static final class View$OnClickListenerC9491a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC9460d f28778b;

        public View$OnClickListenerC9491a(AbstractC9460d abstractC9460d) {
            AbstractC9490a.this = r4;
            this.f28778b = abstractC9460d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC9490a.this.mo27499S4(this.f28778b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC9490a(View view, AbstractC9114h abstractC9114h) {
        super(view);
        l.e(view, "itemView");
        this.f28776c = abstractC9114h;
        Context context = view.getContext();
        l.d(context, "itemView.context");
        this.f28774a = context;
    }

    /* renamed from: N4 */
    public final C8243a m27513N4() {
        return new C8243a(new C19235i0(C22128a.m8700J(this.itemView, "itemView", "itemView.context")));
    }

    /* renamed from: O4 */
    public final AvatarXConfig m27512O4(C8505a c8505a) {
        l.e(c8505a, "addressProfile");
        return new AvatarXConfig(c8505a.f26292c, c8505a.f26290a, null, null, false, false, true, false, false, false, false, false, false, false, null, false, 65468);
    }

    /* renamed from: P4 */
    public abstract boolean mo27501P4();

    /* renamed from: Q4 */
    public abstract boolean mo27500Q4();

    /* renamed from: R4 */
    public void m27511R4(T t) {
        l.e(t, "item");
        mo27498T4();
        if (mo27500Q4()) {
            this.itemView.setOnClickListener(new View$OnClickListenerC9491a(t));
        }
        if (mo27501P4() && !this.f28775b.contains(Long.valueOf(t.f28701a))) {
            C10529b m25827a = C10480a.m26036O2(t, ViewAction.VIEW).m25827a();
            this.f28775b.add(Long.valueOf(t.f28701a));
            AbstractC9114h abstractC9114h = this.f28776c;
            if (abstractC9114h == null) {
                return;
            }
            abstractC9114h.mo27869Zd(m25827a);
        }
    }

    /* renamed from: S4 */
    public abstract void mo27499S4(T t);

    /* renamed from: T4 */
    public abstract void mo27498T4();
}
