package p193e.p194a.p437c.p438a.p480j.p483c;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.ShimmerLoadingView;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.insights.p168ui.C4078R;
import java.util.Iterator;
import java.util.Objects;
import javax.inject.Inject;
import p1727n3.p1744b0.p1745a.AbstractC25615p;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p477g.C9037h1;
import p193e.p194a.p437c.p438a.p477g.C9040i1;
import p193e.p194a.p437c.p438a.p477g.C9043j1;
import p193e.p194a.p437c.p438a.p480j.p482b.AbstractC9135d;
import p193e.p194a.p437c.p438a.p480j.p482b.C9134c;
import p193e.p194a.p437c.p438a.p480j.p482b.C9136e;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import p193e.p194a.p437c.p438a.p480j.p483c.p484k.C9154b;
import p193e.p194a.p437c.p438a.p480j.p483c.p484k.C9155c;
import p193e.p194a.p437c.p438a.p480j.p483c.p484k.C9158f;
import p193e.p194a.p437c.p438a.p480j.p483c.p484k.C9159g;
import p193e.p194a.p437c.p438a.p480j.p483c.p484k.View$OnClickListenerC9153a;
import p193e.p194a.p437c.p438a.p480j.p483c.p484k.View$OnClickListenerC9157e;
import p193e.p194a.p437c.p438a.p520r.C9589f;
import s1.i;
import s1.s;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/a.class */
public final class C9142a extends AbstractC25615p<AbstractC9135d, RecyclerView.AbstractC0313c0> {

    /* renamed from: a */
    public p<? super AbstractC9135d, ? super Boolean, s> f27853a;

    /* renamed from: b */
    public final AbstractC8511a f27854b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9142a(AbstractC8511a abstractC8511a) {
        super(new C9143b());
        l.e(abstractC8511a, "searchApi");
        this.f27854b = abstractC8511a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        int i2;
        AbstractC9135d item = getItem(i);
        if (item instanceof C9134c) {
            i2 = C4078R.layout.layout_quick_filter_category_item;
        } else if (item instanceof C9141j) {
            i2 = C4078R.layout.layout_quick_filter_sender_item;
        } else if (!(item instanceof C9136e)) {
            throw new i();
        } else {
            i2 = C4078R.layout.layout_quick_filter_shimmer_placeholder_item;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        Object obj;
        l.e(abstractC0313c0, "holder");
        AbstractC9135d item = getItem(i);
        if (item instanceof C9134c) {
            C9154b c9154b = (C9154b) abstractC0313c0;
            C9134c c9134c = (C9134c) item;
            l.e(c9134c, "filterItem");
            c9154b.m27845N4(c9134c);
            C9037h1 c9037h1 = c9154b.f27876b;
            MaterialCardView materialCardView = c9037h1.f27499b;
            l.d(materialCardView, "category");
            materialCardView.setChecked(c9134c.f27836c);
            CheckedTextView checkedTextView = c9037h1.f27500c;
            l.d(checkedTextView, "categoryLabel");
            checkedTextView.setChecked(c9134c.f27836c);
            Context context = c9154b.f27878a;
            int m27407a = C9589f.m27407a(c9134c.f27835b.getTagCategory());
            Object obj2 = C26467a.f74235a;
            Drawable m1789b = C26467a.C26470c.m1789b(context, m27407a);
            int dimension = (int) c9154b.f27878a.getResources().getDimension(C4078R.dimen.dp14);
            if (m1789b != null) {
                m1789b.setBounds(0, 0, dimension, dimension);
            }
            c9154b.f27876b.f27500c.setCompoundDrawables(m1789b, null, null, null);
            CheckedTextView checkedTextView2 = c9037h1.f27500c;
            l.d(checkedTextView2, "categoryLabel");
            checkedTextView2.setText(C9589f.m27405c(c9134c.f27835b.getTagCategory(), c9154b.f27878a));
            c9037h1.f27499b.setOnClickListener(new View$OnClickListenerC9153a(c9154b, c9134c));
        } else if (!(item instanceof C9141j)) {
            if (!(item instanceof C9136e)) {
                return;
            }
            ((C9155c) abstractC0313c0).m27845N4(item);
        } else {
            C9159g c9159g = (C9159g) abstractC0313c0;
            C9141j c9141j = (C9141j) item;
            l.e(c9141j, "filterItem");
            c9159g.m27845N4(c9141j);
            C9040i1 c9040i1 = c9159g.f27884c;
            MaterialCardView materialCardView2 = c9040i1.f27507b;
            l.d(materialCardView2, AnalyticsConstants.SENDER);
            materialCardView2.setChecked(c9141j.f27852e);
            CheckedTextView checkedTextView3 = c9040i1.f27509d;
            l.d(checkedTextView3, "senderLabel");
            checkedTextView3.setChecked(c9141j.f27852e);
            CheckedTextView checkedTextView4 = c9040i1.f27509d;
            l.d(checkedTextView4, "senderLabel");
            checkedTextView4.setText(c9141j.f27851d);
            c9040i1.f27507b.setOnClickListener(new View$OnClickListenerC9157e(c9159g, c9141j));
            Iterator<T> it = c9141j.f27850c.f31256b.iterator();
            do {
                obj = null;
                if (!it.hasNext()) {
                    break;
                }
                obj = it.next();
            } while (!(((String) obj).length() > 0));
            String str = (String) obj;
            if (str == null) {
                str = "";
            }
            C8243a c8243a = new C8243a(new C19235i0(C22128a.m8700J(c9159g.itemView, "itemView", "itemView.context")));
            Uri uri = Uri.EMPTY;
            l.d(uri, "Uri.EMPTY");
            l.e("", AnalyticsConstants.NAME);
            l.e(str, "identifier");
            l.e(uri, RemoteMessageConst.Notification.ICON);
            l.e(str, "identifier");
            l.e("", AnalyticsConstants.NAME);
            l.e(uri, RemoteMessageConst.Notification.ICON);
            C8243a.m28739ok(c8243a, new AvatarXConfig(uri, str, null, null, false, false, true, false, false, false, false, false, false, false, null, false, 65468), false, 2, null);
            c8243a.m28738pk(true);
            c9159g.f27884c.f27508c.setPresenter(c8243a);
            c9159g.f27883b = c9159g.f27885d.mo28429Iz(str, new C9158f(c9159g, c8243a));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C9154b c9154b;
        l.e(viewGroup, "parent");
        int i2 = C4078R.layout.layout_quick_filter_category_item;
        if (i == i2) {
            p<? super AbstractC9135d, ? super Boolean, s> pVar = this.f27853a;
            l.e(viewGroup, "parent");
            MaterialCardView inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false);
            MaterialCardView materialCardView = inflate;
            int i3 = C4078R.C4080id.categoryLabel;
            CheckedTextView checkedTextView = (CheckedTextView) inflate.findViewById(i3);
            if (checkedTextView == null) {
                throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
            }
            C9037h1 c9037h1 = new C9037h1(inflate, materialCardView, checkedTextView);
            l.d(c9037h1, "LayoutQuickFilterCategor….context), parent, false)");
            c9154b = new C9154b(c9037h1, pVar);
        } else {
            int i4 = C4078R.layout.layout_quick_filter_sender_item;
            if (i == i4) {
                AbstractC8511a abstractC8511a = this.f27854b;
                p<? super AbstractC9135d, ? super Boolean, s> pVar2 = this.f27853a;
                l.e(viewGroup, "parent");
                l.e(abstractC8511a, "searchApi");
                MaterialCardView inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(i4, viewGroup, false);
                MaterialCardView materialCardView2 = inflate2;
                int i5 = C4078R.C4080id.senderIcon;
                AvatarXView avatarXView = (AvatarXView) inflate2.findViewById(i5);
                if (avatarXView != null) {
                    i5 = C4078R.C4080id.senderLabel;
                    CheckedTextView checkedTextView2 = (CheckedTextView) inflate2.findViewById(i5);
                    if (checkedTextView2 != null) {
                        C9040i1 c9040i1 = new C9040i1(inflate2, materialCardView2, avatarXView, checkedTextView2);
                        l.d(c9040i1, "LayoutQuickFilterSenderI….context), parent, false)");
                        c9154b = new C9159g(c9040i1, abstractC8511a, pVar2);
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i5)));
            }
            int i6 = C4078R.layout.layout_quick_filter_shimmer_placeholder_item;
            if (i != i6) {
                throw new IllegalArgumentException("View type not supported");
            }
            l.e(viewGroup, "parent");
            View inflate3 = LayoutInflater.from(viewGroup.getContext()).inflate(i6, viewGroup, false);
            Objects.requireNonNull(inflate3, "rootView");
            ShimmerLoadingView shimmerLoadingView = (ShimmerLoadingView) inflate3;
            C9043j1 c9043j1 = new C9043j1(shimmerLoadingView, shimmerLoadingView);
            l.d(c9043j1, "LayoutQuickFilterShimmer….context), parent, false)");
            c9154b = new C9155c(c9043j1);
        }
        return c9154b;
    }
}
