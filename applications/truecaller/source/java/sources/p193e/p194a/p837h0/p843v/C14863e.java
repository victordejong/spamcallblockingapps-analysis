package p193e.p194a.p837h0.p843v;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.listitem.ListItemX;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.h0.v.e */
/* loaded from: classes9-dex2jar.jar:e/a/h0/v/e.class */
public final class C14863e extends AbstractC13209t<C14864a> {

    /* renamed from: b */
    public final AbstractC14869h f42480b;

    /* renamed from: e.a.h0.v.e$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/v/e$a.class */
    public static final class C14864a extends AbstractC13209t.C13211b implements AbstractC14868g {

        /* renamed from: b */
        public final g f42481b = C25225a.m3978P1(new C14866b());

        /* renamed from: c */
        public final View f42482c;

        /* renamed from: d */
        public final AbstractC14869h f42483d;

        /* renamed from: e.a.h0.v.e$a$a */
        /* loaded from: classes9-dex2jar.jar:e/a/h0/v/e$a$a.class */
        public static final class C14865a extends m implements l<View, s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C14865a() {
                super(1);
                C14864a.this = r4;
            }

            /* renamed from: d */
            public Object m19513d(Object obj) {
                s1.z.c.l.e((View) obj, "it");
                C14864a c14864a = C14864a.this;
                c14864a.f42483d.mo19510Hj(c14864a.getAdapterPosition());
                return s.a;
            }
        }

        /* renamed from: e.a.h0.v.e$a$b */
        /* loaded from: classes9-dex2jar.jar:e/a/h0/v/e$a$b.class */
        public static final class C14866b extends m implements a<ListItemX> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C14866b() {
                super(0);
                C14864a.this = r4;
            }

            public Object invoke() {
                View view = C14864a.this.f42482c;
                Objects.requireNonNull(view, "null cannot be cast to non-null type com.truecaller.common.ui.listitem.ListItemX");
                return (ListItemX) view;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14864a(View view, AbstractC14869h abstractC14869h) {
            super(view);
            s1.z.c.l.e(view, ViewAction.VIEW);
            s1.z.c.l.e(abstractC14869h, "presenter");
            this.f42482c = view;
            this.f42483d = abstractC14869h;
            m19514N4().m35650i1(C2752R.C2753drawable.ic_remove_from_spam, new C14865a());
            Context context = view.getContext();
            s1.z.c.l.d(context, "view.context");
            C8243a c8243a = new C8243a(new C19235i0(context));
            m19514N4().setAvatarPresenter(c8243a);
            C8243a.m28739ok(c8243a, new AvatarXConfig(null, null, null, null, true, false, false, false, false, false, false, false, false, false, null, false, 65519), false, 2, null);
        }

        /* renamed from: N4 */
        public final ListItemX m19514N4() {
            return (ListItemX) this.f42481b.getValue();
        }

        @Override // p193e.p194a.p837h0.p843v.AbstractC14868g
        public void setEnabled(boolean z) {
            m19514N4().setEnabled(z);
        }

        @Override // p193e.p194a.p837h0.p843v.AbstractC14868g
        /* renamed from: v1 */
        public void mo19512v1(String str) {
            ListItemX m19514N4 = m19514N4();
            if (str == null) {
                str = "";
            }
            ListItemX.m35637x1(m19514N4, str, false, 0, 0, 14, null);
        }

        @Override // p193e.p194a.p837h0.p843v.AbstractC14868g
        /* renamed from: v4 */
        public void mo19511v4(String str) {
            ListItemX m19514N4 = m19514N4();
            if (str == null) {
                str = "";
            }
            ListItemX.m35644o1(m19514N4, str, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
        }
    }

    public C14863e(AbstractC14869h abstractC14869h) {
        s1.z.c.l.e(abstractC14869h, "presenter");
        this.f42480b = abstractC14869h;
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: e */
    public void mo10012e(C14864a c14864a, int i) {
        C14864a c14864a2 = c14864a;
        s1.z.c.l.e(c14864a2, "holder");
        ((C14870i) this.f42480b).mo10095G(c14864a2, i);
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: g */
    public C14864a mo10011g(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        Context context = viewGroup.getContext();
        s1.z.c.l.d(context, "parent.context");
        ListItemX listItemX = new ListItemX(context);
        listItemX.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        return new C14864a(listItemX, this.f42480b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return ((C14870i) this.f42480b).mo10091Kb();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        Objects.requireNonNull(this.f42480b);
        return 0;
    }
}
