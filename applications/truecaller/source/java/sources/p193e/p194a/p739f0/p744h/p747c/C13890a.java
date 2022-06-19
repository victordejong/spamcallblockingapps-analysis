package p193e.p194a.p739f0.p744h.p747c;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.social_media.C4497R;
import p1727n3.p1744b0.p1745a.AbstractC25615p;
import p1727n3.p1744b0.p1745a.C25586h;
import p1727n3.p1849n.AbstractC26863d;
import p1727n3.p1849n.C26866g;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p739f0.p741e.AbstractC13876a;
import p193e.p194a.p739f0.p744h.p745a.C13887a;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.f0.h.c.a */
/* loaded from: classes13-dex2jar.jar:e/a/f0/h/c/a.class */
public final class C13890a extends AbstractC25615p<C13887a, C13892b> {

    /* renamed from: a */
    public final l<C13887a, s> f40272a;

    /* renamed from: e.a.f0.h.c.a$a */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/h/c/a$a.class */
    public static final class C13891a extends C25586h.AbstractC25591e<C13887a> {
        @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
        public boolean areContentsTheSame(C13887a c13887a, C13887a c13887a2) {
            C13887a c13887a3 = c13887a;
            C13887a c13887a4 = c13887a2;
            s1.z.c.l.e(c13887a3, "oldItem");
            s1.z.c.l.e(c13887a4, "newItem");
            return s1.z.c.l.a(c13887a3, c13887a4);
        }

        @Override // p1727n3.p1744b0.p1745a.C25586h.AbstractC25591e
        public boolean areItemsTheSame(C13887a c13887a, C13887a c13887a2) {
            C13887a c13887a3 = c13887a;
            C13887a c13887a4 = c13887a2;
            s1.z.c.l.e(c13887a3, "oldItem");
            s1.z.c.l.e(c13887a4, "newItem");
            return c13887a3.f40265a == c13887a4.f40265a;
        }
    }

    /* renamed from: e.a.f0.h.c.a$b */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/h/c/a$b.class */
    public static final class C13892b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final AbstractC13876a f40273a;

        /* renamed from: b */
        public final l<C13887a, s> f40274b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C13892b(AbstractC13876a abstractC13876a, l<? super C13887a, s> lVar) {
            super(abstractC13876a.getRoot());
            s1.z.c.l.e(abstractC13876a, "binding");
            s1.z.c.l.e(lVar, "onMenuItemClick");
            this.f40273a = abstractC13876a;
            this.f40274b = lVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C13890a(l<? super C13887a, s> lVar) {
        super(new C13891a());
        s1.z.c.l.e(lVar, "onMenuItemClick");
        this.f40272a = lVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        C13892b c13892b = (C13892b) abstractC0313c0;
        s1.z.c.l.e(c13892b, "holder");
        C13887a item = getItem(i);
        if (item != null) {
            s1.z.c.l.e(item, "item");
            int i2 = item.f40266b;
            AbstractC13876a abstractC13876a = c13892b.f40273a;
            View view = c13892b.itemView;
            s1.z.c.l.d(view, "itemView");
            abstractC13876a.mo20976c(view.getContext().getString(i2));
            c13892b.f40273a.mo20978a(Integer.valueOf(item.f40267c));
            c13892b.f40273a.mo20977b(new View$OnClickListenerC13893b(c13892b, item));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        LayoutInflater m8628e1 = C22128a.m8628e1(viewGroup, "parent");
        int i2 = AbstractC13876a.f40243f;
        AbstractC26863d abstractC26863d = C26866g.f75137a;
        AbstractC13876a inflateInternal = ViewDataBinding.inflateInternal(m8628e1, C4497R.layout.layout_social_media_item, viewGroup, false, (Object) null);
        s1.z.c.l.d(inflateInternal, "layout");
        return new C13892b(inflateInternal, this.f40272a);
    }
}
