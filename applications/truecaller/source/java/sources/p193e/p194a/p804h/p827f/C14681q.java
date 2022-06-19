package p193e.p194a.p804h.p827f;

import android.view.View;
import android.view.ViewStub;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.calling.contacts_list.ContactsHolder;
import com.truecaller.calling.contacts_list.FastScroller;
import java.util.Objects;
import java.util.Set;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1111o2.C18898f;
import p193e.p194a.p1111o2.C18899g;
import p193e.p194a.p1111o2.C18907o;
import p193e.p194a.p1111o2.C18909q;
import p193e.p194a.p1111o2.C18910r;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p682e.C13338z0;
import p193e.p194a.p852i.p869d.AbstractC15073b;
import p193e.p194a.p852i.p869d.AbstractC15076e;
import p193e.p194a.p852i.p869d.AbstractC15101x;
import p193e.p194a.p852i.p869d.C15070a;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.h.f.q */
/* loaded from: classes3-dex2jar.jar:e/a/h/f/q.class */
public final class C14681q {

    /* renamed from: a */
    public final g f42172a;

    /* renamed from: b */
    public View f42173b;

    /* renamed from: c */
    public final C18910r<g, g> f42174c;

    /* renamed from: d */
    public final C18910r<g, g> f42175d;

    /* renamed from: e */
    public final C18910r<a, a> f42176e;

    /* renamed from: f */
    public final g<RecyclerView> f42177f;

    /* renamed from: g */
    public final g<FastScroller> f42178g;

    /* renamed from: h */
    public final g<ProgressBar> f42179h;

    /* renamed from: i */
    public final AbstractC15076e f42180i;

    /* renamed from: j */
    public final C18907o f42181j;

    /* renamed from: k */
    public final C18898f f42182k;

    /* renamed from: l */
    public final AbstractC17405c f42183l;

    /* renamed from: m */
    public final AbstractC19222c f42184m;

    /* renamed from: n */
    public final AbstractC14677l0 f42185n;

    /* renamed from: o */
    public final View f42186o;

    /* renamed from: p */
    public final ContactsHolder.PhonebookFilter f42187p;

    /* renamed from: q */
    public final AbstractC15101x f42188q;

    /* renamed from: r */
    public final C20592g f42189r;

    /* renamed from: s */
    public final AbstractC15073b f42190s;

    public C14681q(AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c, AbstractC14677l0 abstractC14677l0, View view, d dVar, ContactsHolder.PhonebookFilter phonebookFilter, ContactsHolder contactsHolder, AbstractC14673g0 abstractC14673g0, AbstractC15101x abstractC15101x, C20592g c20592g, AbstractC15073b abstractC15073b) {
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC19222c, "clock");
        l.e(abstractC14677l0, "listener");
        l.e(view, ViewAction.VIEW);
        l.e(dVar, "backupPromoPresenter");
        l.e(phonebookFilter, "phonebookFilter");
        l.e(contactsHolder, "contactsHolder");
        l.e(abstractC14673g0, "itemsPresenterFactory");
        l.e(abstractC15101x, "multiAdsPresenter");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC15073b, "adCounter");
        this.f42183l = abstractC17405c;
        this.f42184m = abstractC19222c;
        this.f42185n = abstractC14677l0;
        this.f42186o = view;
        this.f42187p = phonebookFilter;
        this.f42188q = abstractC15101x;
        this.f42189r = c20592g;
        this.f42190s = abstractC15073b;
        g m13660s = C19286f.m13660s(view, C2752R.C2754id.empty_contacts_view);
        this.f42172a = m13660s;
        C18910r<g, g> c18910r = new C18910r<>(abstractC14673g0.m19796a(phonebookFilter, ContactsHolder.FavoritesFilter.INCLUDE_NON_FAVORITES), C2752R.layout.phonebook_item, new r(this), s.b);
        this.f42174c = c18910r;
        C18910r<g, g> c18910r2 = new C18910r<>(abstractC14673g0.m19796a(phonebookFilter, ContactsHolder.FavoritesFilter.FAVORITES_ONLY), C2752R.layout.favorite_item, new t(this), u.b);
        this.f42175d = c18910r2;
        C18910r<a, a> c18910r3 = new C18910r<>(dVar, C2752R.layout.list_item_backup_promo, new v(dVar), w.b);
        this.f42176e = c18910r3;
        g<RecyclerView> m13660s2 = C19286f.m13660s(view, C2752R.C2754id.contacts_list);
        this.f42177f = m13660s2;
        g<FastScroller> m13660s3 = C19286f.m13660s(view, C2752R.C2754id.fast_scroller);
        this.f42178g = m13660s3;
        this.f42179h = C19286f.m13660s(view, C2752R.C2754id.loading);
        c cVar = new c(this);
        this.f42180i = cVar;
        C18907o m19182a = C15070a.m19182a(abstractC15101x, c20592g, cVar);
        this.f42181j = m19182a;
        C18898f c18898f = new C18898f(c18910r.mo14330f(c18910r2, new C18899g(0, 1)).mo14330f(c18910r3, new C18899g(0, 1)).mo14330f(m19182a, new C18909q(2, 7, false, 4)));
        this.f42182k = c18898f;
        ViewStub viewStub = (ViewStub) m13660s.getValue();
        this.f42173b = viewStub.inflate();
        viewStub.setVisibility(8);
        RecyclerView recyclerView = (RecyclerView) m13660s2.getValue();
        c18898f.f52999a.mo14326u(true);
        recyclerView.setAdapter(c18898f);
        recyclerView.setItemAnimator(null);
        recyclerView.addItemDecoration(new C13338z0(view.getContext(), C2752R.layout.view_list_header_large, 0));
        recyclerView.addOnScrollListener(new a(this, contactsHolder));
        FastScroller fastScroller = (FastScroller) m13660s3.getValue();
        l.d(recyclerView, "this");
        b bVar = new b(this, contactsHolder);
        Objects.requireNonNull(fastScroller);
        l.e(recyclerView, "recyclerView");
        l.e(bVar, "indexByPosition");
        fastScroller.f10700b = recyclerView;
        fastScroller.f10702d = bVar;
        RecyclerView.AbstractC0329o layoutManager = recyclerView.getLayoutManager();
        Objects.requireNonNull(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
        fastScroller.f10701c = (LinearLayoutManager) layoutManager;
        recyclerView.addOnScrollListener(new f0(fastScroller));
        fastScroller.m35757a();
    }

    /* renamed from: a */
    public final void m19788a(Set<Integer> set) {
        l.e(set, "adsPositions");
        for (Number number : set) {
            int mo14329j = this.f42181j.mo14329j(number.intValue());
            C18898f c18898f = this.f42182k;
            c18898f.notifyItemRangeChanged(mo14329j, c18898f.getItemCount() - mo14329j);
        }
    }
}
