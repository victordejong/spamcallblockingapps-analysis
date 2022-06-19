package p193e.p194a.p619d.p643d.p644a.p645a.p649d;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.d.d.a.a.d.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/d/c.class */
public final class C11657c extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final g f34213a;

    /* renamed from: b */
    public final g f34214b;

    /* renamed from: c */
    public final C18910r<AbstractC11661e, C11663g> f34215c;

    /* renamed from: d */
    public final C18898f f34216d;

    /* renamed from: e.a.d.d.a.a.d.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/d/c$a.class */
    public static final class C11658a extends m implements l<View, C11663g> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC17405c f34218c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC19222c f34219d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11658a(AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c) {
            super(1);
            C11657c.this = r4;
            this.f34218c = abstractC17405c;
            this.f34219d = abstractC19222c;
        }

        /* renamed from: d */
        public Object m24311d(Object obj) {
            View view = (View) obj;
            s1.z.c.l.e(view, "it");
            return new C11663g(view, this.f34218c, this.f34219d, C11657c.this.f34216d);
        }
    }

    /* renamed from: e.a.d.d.a.a.d.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/d/c$b.class */
    public static final class C11659b extends m implements l<C11663g, AbstractC11661e> {

        /* renamed from: b */
        public static final C11659b f34220b = new C11659b();

        public C11659b() {
            super(1);
        }

        /* renamed from: d */
        public Object m24310d(Object obj) {
            C11663g c11663g = (C11663g) obj;
            s1.z.c.l.e(c11663g, "it");
            return c11663g;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11657c(View view, AbstractC19222c abstractC19222c, AbstractC17405c abstractC17405c, AbstractC11660d abstractC11660d) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        s1.z.c.l.e(abstractC19222c, "clock");
        s1.z.c.l.e(abstractC17405c, "availabilityManager");
        s1.z.c.l.e(abstractC11660d, "suggestedContactsPresenter");
        g m13660s = C19286f.m13660s(view, 2131365382);
        this.f34213a = m13660s;
        this.f34214b = C19286f.m13660s(view, C2752R.C2754id.header_text);
        C18910r<AbstractC11661e, C11663g> c18910r = new C18910r<>(abstractC11660d, C2752R.layout.item_voip_frequently_called, new C11658a(abstractC17405c, abstractC19222c), C11659b.f34220b);
        this.f34215c = c18910r;
        C18898f c18898f = new C18898f(c18910r);
        c18898f.setHasStableIds(true);
        this.f34216d = c18898f;
        RecyclerView recyclerView = (RecyclerView) m13660s.getValue();
        recyclerView.setItemAnimator(null);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setLayoutManager(new LinearLayoutManager(view.getContext(), 0, false));
        recyclerView.setAdapter(c18898f);
    }
}
