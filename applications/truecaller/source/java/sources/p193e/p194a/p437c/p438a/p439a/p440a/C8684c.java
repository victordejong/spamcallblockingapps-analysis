package p193e.p194a.p437c.p438a.p439a.p440a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.banner.DismissableBannerViewX;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.important.presentation.BusinessInsightsViewModel;
import com.truecaller.insights.p168ui.models.AdapterItem;
import com.truecaller.insights.p168ui.widget.SectionsEntryPointView;
import com.truecaller.p183ui.view.TintedImageView;
import java.util.Objects;
import n3.b0.a.g;
import p1727n3.p1744b0.p1745a.AbstractC25615p;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8659a;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8662b;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8663c;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8666f;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8668h;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8669i;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8673l;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8674m;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8677p;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.View$OnClickListenerC8679q;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8854a;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8855b;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8856c;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8857d;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8860g;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8865j;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.p453k.C8866a;
import p193e.p194a.p437c.p438a.p446c.p455i.C8868a;
import p193e.p194a.p437c.p438a.p477g.C9010a0;
import p193e.p194a.p437c.p438a.p477g.C9028e2;
import p193e.p194a.p437c.p438a.p477g.C9034g1;
import p193e.p194a.p437c.p438a.p477g.C9057o0;
import p193e.p194a.p437c.p438a.p477g.C9066r0;
import p193e.p194a.p437c.p438a.p477g.C9089z;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p438a.p498n.p501c.p502d.C9418a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p570j.AbstractC10439b;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p609x.AbstractC10860a;
import p193e.p194a.p916i5.p917e.C15322a;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/c.class */
public final class C8684c extends AbstractC25615p<AdapterItem, RecyclerView.AbstractC0313c0> {

    /* renamed from: a */
    public RecyclerView f26580a;

    /* renamed from: b */
    public BusinessInsightsViewModel f26581b;

    /* renamed from: c */
    public final AbstractC10258h f26582c;

    /* renamed from: d */
    public final AbstractC8511a f26583d;

    /* renamed from: e */
    public final AbstractC10860a f26584e;

    /* renamed from: f */
    public final AbstractC9114h f26585f;

    /* renamed from: g */
    public final AbstractC8852j f26586g;

    /* renamed from: h */
    public final AbstractC9691j f26587h;

    /* renamed from: i */
    public final C8856c f26588i;

    /* renamed from: j */
    public final C8857d f26589j;

    /* renamed from: k */
    public final AbstractC10060c f26590k;

    /* renamed from: l */
    public final AbstractC10439b f26591l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8684c(AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, AbstractC10860a abstractC10860a, AbstractC9114h abstractC9114h, AbstractC8852j abstractC8852j, AbstractC9691j abstractC9691j, C8856c c8856c, C8857d c8857d, AbstractC10060c abstractC10060c, AbstractC10439b abstractC10439b) {
        super(new C8855b());
        l.e(abstractC10258h, "messageLocator");
        l.e(abstractC8511a, "addressProfileLoader");
        l.e(abstractC10860a, "messageInfoLoader");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(abstractC8852j, "toolTipController");
        l.e(abstractC9691j, "statusProvider");
        l.e(c8856c, "recentTransactionAdapter");
        l.e(c8857d, "recentUpdatesAdapter");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        l.e(abstractC10439b, "deeplinkEnricher");
        this.f26582c = abstractC10258h;
        this.f26583d = abstractC8511a;
        this.f26584e = abstractC10860a;
        this.f26585f = abstractC9114h;
        this.f26586g = abstractC8852j;
        this.f26587h = abstractC9691j;
        this.f26588i = c8856c;
        this.f26589j = c8857d;
        this.f26590k = abstractC10060c;
        this.f26591l = abstractC10439b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        int i2;
        AdapterItem item = getItem(i);
        if (item instanceof AdapterItem.C4117i) {
            i2 = C4078R.layout.reminder_title_item;
        } else if (item instanceof AdapterItem.C4113e) {
            i2 = C4078R.layout.empty_business_item;
        } else if (item instanceof AdapterItem.C4114f) {
            i2 = C4078R.layout.empty_business_page_item;
        } else if (item instanceof AdapterItem.C4118j) {
            AbstractC9235b abstractC9235b = ((AdapterItem.C4118j) item).f12882a;
            Integer valueOf = abstractC9235b instanceof AbstractC9235b.C9242g ? Integer.valueOf(C4078R.layout.upcoming_reminder_item) : abstractC9235b instanceof AbstractC9235b.C9236a ? Integer.valueOf(C4078R.layout.finance_reminder_container_item) : abstractC9235b instanceof AbstractC9235b.C9244i ? Integer.valueOf(C4078R.layout.updates_container_item) : null;
            if (valueOf == null) {
                throw new IllegalArgumentException("ViewHolder type not supported");
            }
            i2 = valueOf.intValue();
        } else if (item instanceof AdapterItem.C4109a) {
            i2 = C4078R.layout.banner_item;
        } else if (item instanceof AdapterItem.C4116h) {
            i2 = C4078R.layout.layout_mini_banner_item;
        } else if (item instanceof AdapterItem.C4115g) {
            i2 = C4078R.layout.item_sections_entry_point;
        } else if (!(item instanceof AdapterItem.C4111c)) {
            throw new IllegalArgumentException("ViewHolder type not supported");
        } else {
            i2 = C4078R.layout.item_finance_trx_hidden;
        }
        return i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        l.e(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        this.f26580a = recyclerView;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        RecyclerView recyclerView;
        l.e(abstractC0313c0, "holder");
        AdapterItem item = getItem(i);
        if (item instanceof AdapterItem.C4117i) {
            ((C8659a) abstractC0313c0).m28132W4((AdapterItem.C4117i) item);
        } else if (item instanceof AdapterItem.C4113e) {
            ((C8669i) abstractC0313c0).m28122O4((AdapterItem.C4113e) item);
        } else if (item instanceof AdapterItem.C4118j) {
            AbstractC9235b abstractC9235b = ((AdapterItem.C4118j) item).f12882a;
            if (abstractC0313c0 instanceof C8860g) {
                Objects.requireNonNull(abstractC9235b, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.UpcomingItem");
                ((C8860g) abstractC0313c0).m28000W4((AbstractC9235b.C9242g) abstractC9235b);
            } else if (abstractC0313c0 instanceof C8674m) {
                C8674m c8674m = (C8674m) abstractC0313c0;
            } else if (abstractC0313c0 instanceof C8854a) {
                C8854a c8854a = (C8854a) abstractC0313c0;
                Objects.requireNonNull(abstractC9235b, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.FinanceContainerItem");
                AbstractC9235b.C9236a c9236a = (AbstractC9235b.C9236a) abstractC9235b;
                l.e(c9236a, "item");
                C9010a0 c9010a0 = c8854a.f26970e;
                l.d(c9010a0.f27368b, "recentTransactionRecyclerView");
                if (!l.a(recyclerView.getAdapter(), c8854a.f26971f)) {
                    RecyclerView recyclerView2 = c9010a0.f27368b;
                    l.d(recyclerView2, "recentTransactionRecyclerView");
                    recyclerView2.setAdapter(c8854a.f26971f);
                    RecyclerView recyclerView3 = c9010a0.f27368b;
                    l.d(recyclerView3, "recentTransactionRecyclerView");
                    View view = c8854a.itemView;
                    l.d(view, "itemView");
                    recyclerView3.setLayoutManager(new LinearLayoutManager(view.getContext()));
                    RecyclerView recyclerView4 = c9010a0.f27368b;
                    l.d(recyclerView4, "recentTransactionRecyclerView");
                    recyclerView4.setItemAnimator(new g());
                    c9010a0.f27368b.addItemDecoration(new C8866a(C22128a.m8700J(c8854a.itemView, "itemView", "itemView.context")));
                }
                c8854a.f26971f.submitList(c9236a.f28035b);
            } else if (!(abstractC0313c0 instanceof C8865j)) {
                throw new IllegalArgumentException("Not implemented for this type");
            } else {
                C8865j c8865j = (C8865j) abstractC0313c0;
                Objects.requireNonNull(abstractC9235b, "null cannot be cast to non-null type com.truecaller.insights.ui.models.BusinessTabItem.UpdatesContainerItem");
                AbstractC9235b.C9244i c9244i = (AbstractC9235b.C9244i) abstractC9235b;
                l.e(c9244i, "item");
                RecyclerView recyclerView5 = c8865j.f27010e.f27464b;
                if (!l.a(recyclerView5.getAdapter(), c8865j.f27011f)) {
                    recyclerView5.setAdapter(c8865j.f27011f);
                    View view2 = c8865j.itemView;
                    l.d(view2, "itemView");
                    recyclerView5.setLayoutManager(new LinearLayoutManager(view2.getContext()));
                    recyclerView5.setItemAnimator(new g());
                    recyclerView5.addItemDecoration(new C8866a(C22128a.m8700J(c8865j.itemView, "itemView", "itemView.context")));
                }
                c8865j.f27011f.submitList(c9244i.f28126b);
            }
        } else {
            boolean z = false;
            if (item instanceof AdapterItem.C4109a) {
                C8663c c8663c = (C8663c) abstractC0313c0;
                AdapterItem.C4109a c4109a = (AdapterItem.C4109a) item;
                l.e(c4109a, "item");
                View view3 = c8663c.itemView;
                Objects.requireNonNull(view3, "null cannot be cast to non-null type com.truecaller.common.ui.banner.DismissableBannerViewX");
                DismissableBannerViewX dismissableBannerViewX = (DismissableBannerViewX) view3;
                dismissableBannerViewX.setPrimaryButtonText(dismissableBannerViewX.getResources().getString(c4109a.f12853e));
                View view4 = c8663c.itemView;
                int i2 = C4078R.C4080id.buttonSecondary;
                MaterialButton findViewById = view4.findViewById(i2);
                if (c4109a.f12854f != null) {
                    l.d(findViewById, "secondaryButton");
                    C19286f.m13684T(findViewById);
                    dismissableBannerViewX.setSecondaryButtonText(dismissableBannerViewX.getResources().getString(c4109a.f12854f.intValue()));
                } else {
                    l.d(findViewById, "secondaryButton");
                    C19286f.m13689O(findViewById);
                }
                String string = dismissableBannerViewX.getResources().getString(c4109a.f12851c);
                l.d(string, "resources.getString(item.title)");
                dismissableBannerViewX.setTitle(string);
                String string2 = dismissableBannerViewX.getResources().getString(c4109a.f12852d);
                l.d(string2, "resources.getString(item.subTitle)");
                dismissableBannerViewX.setSubtitle(string2);
                Resources resources = dismissableBannerViewX.getResources();
                int i3 = c4109a.f12850b;
                ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
                dismissableBannerViewX.setImage(resources.getDrawable(i3, null));
                dismissableBannerViewX.setPrimaryButtonCLickListener(new d2(0, c8663c, c4109a));
                dismissableBannerViewX.setSecondaryButtonCLickListener(new d2(1, c8663c, c4109a));
                View view5 = c8663c.itemView;
                l.d(view5, "itemView");
                DismissableBannerViewX dismissableBannerViewX2 = (DismissableBannerViewX) view5;
                MaterialButton findViewById2 = dismissableBannerViewX2.findViewById(i2);
                l.d(findViewById2, "secondaryButton");
                Context context = dismissableBannerViewX2.getContext();
                l.d(context, AnalyticsConstants.CONTEXT);
                int i4 = C4078R.attr.tcx_textTertiary;
                findViewById2.setRippleColor(ColorStateList.valueOf(C15322a.m18927a(context, i4)));
                Context context2 = dismissableBannerViewX2.getContext();
                l.d(context2, AnalyticsConstants.CONTEXT);
                findViewById2.setTextColor(C15322a.m18927a(context2, i4));
                View view6 = c8663c.itemView;
                l.d(view6, "itemView");
                DismissableBannerViewX dismissableBannerViewX3 = (DismissableBannerViewX) view6;
                int i5 = c4109a.f12856h;
                dismissableBannerViewX3.setBackground(null);
                dismissableBannerViewX3.setBackgroundResource(i5);
                if (c4109a.f12859k != null) {
                    z = true;
                }
                dismissableBannerViewX.m35696a(z);
                dismissableBannerViewX.setDismissButtonClickListener(new d2(2, c8663c, c4109a));
                if (!c8663c.f26543c.containsKey(Long.valueOf(c4109a.f12849a))) {
                    int ordinal = c4109a.f12855g.ordinal();
                    if (ordinal == 0) {
                        c8663c.m28127R4("onboarding", "model_download_translation", null, false, "important_tab_banner");
                    } else if (ordinal == 1) {
                        c8663c.m28127R4("default_sms_banner", "default_sms", null, false, "important_tab");
                    }
                }
            } else if (item instanceof AdapterItem.C4116h) {
                l.e((AdapterItem.C4116h) item, "item");
                C9034g1 c9034g1 = ((C8673l) abstractC0313c0).f26560e;
                c9034g1.f27487c.setImageResource(0);
                c9034g1.f27488d.setText(0);
                c9034g1.f27486b.setText(0);
            } else if (item instanceof AdapterItem.C4115g) {
                C8677p c8677p = (C8677p) abstractC0313c0;
                l.e((AdapterItem.C4115g) item, "item");
                SectionsEntryPointView sectionsEntryPointView = c8677p.f26564f.f27642e;
                View$OnClickListenerC8679q view$OnClickListenerC8679q = c8677p.f26563e;
                View$OnClickListenerC8679q view$OnClickListenerC8679q2 = view$OnClickListenerC8679q;
                if (view$OnClickListenerC8679q != null) {
                    view$OnClickListenerC8679q2 = new View$OnClickListenerC8679q(view$OnClickListenerC8679q);
                }
                sectionsEntryPointView.setOnClickListener(view$OnClickListenerC8679q2);
                SectionsEntryPointView sectionsEntryPointView2 = c8677p.f26564f.f27639b;
                View$OnClickListenerC8679q view$OnClickListenerC8679q3 = c8677p.f26563e;
                View$OnClickListenerC8679q view$OnClickListenerC8679q4 = view$OnClickListenerC8679q3;
                if (view$OnClickListenerC8679q3 != null) {
                    view$OnClickListenerC8679q4 = new View$OnClickListenerC8679q(view$OnClickListenerC8679q3);
                }
                sectionsEntryPointView2.setOnClickListener(view$OnClickListenerC8679q4);
                SectionsEntryPointView sectionsEntryPointView3 = c8677p.f26564f.f27641d;
                View$OnClickListenerC8679q view$OnClickListenerC8679q5 = c8677p.f26563e;
                View$OnClickListenerC8679q view$OnClickListenerC8679q6 = view$OnClickListenerC8679q5;
                if (view$OnClickListenerC8679q5 != null) {
                    view$OnClickListenerC8679q6 = new View$OnClickListenerC8679q(view$OnClickListenerC8679q5);
                }
                sectionsEntryPointView3.setOnClickListener(view$OnClickListenerC8679q6);
                SectionsEntryPointView sectionsEntryPointView4 = c8677p.f26564f.f27640c;
                View$OnClickListenerC8679q view$OnClickListenerC8679q7 = c8677p.f26563e;
                View$OnClickListenerC8679q view$OnClickListenerC8679q8 = view$OnClickListenerC8679q7;
                if (view$OnClickListenerC8679q7 != null) {
                    view$OnClickListenerC8679q8 = new View$OnClickListenerC8679q(view$OnClickListenerC8679q7);
                }
                sectionsEntryPointView4.setOnClickListener(view$OnClickListenerC8679q8);
            } else if (item instanceof AdapterItem.C4111c) {
                C8666f c8666f = (C8666f) abstractC0313c0;
                AdapterItem.C4111c c4111c = (AdapterItem.C4111c) item;
                l.e(c4111c, "item");
                if (c4111c.f12864a) {
                    c8666f.f26545e.f27579b.setText(C4078R.string.auto_hide_is_enabled);
                } else {
                    c8666f.f26545e.f27579b.setText(C4078R.string.auto_hide_is_disabled);
                }
                AbstractC9114h abstractC9114h = c8666f.f26546f;
                C8868a c8868a = C8868a.f27022i;
                abstractC9114h.mo27869Zd(C8868a.f27021h);
            }
        }
        RecyclerView recyclerView6 = this.f26580a;
        if (recyclerView6 != null) {
            recyclerView6.post(new RunnableC8683b(this));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C8860g c8860g;
        l.e(viewGroup, "parent");
        if (i == C4078R.layout.upcoming_reminder_item) {
            c8860g = new C8860g(C8860g.m28001V4(viewGroup), this.f26582c, this.f26583d, this.f26584e, this.f26585f, new C8662b("upcoming_smart_card", "insights_tab", true), this.f26587h, this.f26591l, new C9418a(false, false, 1));
        } else if (i == C4078R.layout.empty_business_item) {
            c8860g = new C8669i(C8669i.m28123N4(viewGroup));
        } else {
            int i2 = C4078R.layout.empty_business_page_item;
            if (i == i2) {
                l.e(viewGroup, "parent");
                View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false);
                int i3 = C4078R.C4080id.emptyStateDesc;
                TextView textView = (TextView) inflate.findViewById(i3);
                if (textView != null) {
                    i3 = C4078R.C4080id.emptyStateImg;
                    ImageView imageView = (ImageView) inflate.findViewById(i3);
                    if (imageView != null) {
                        i3 = C4078R.C4080id.emptyStateTitle;
                        TextView textView2 = (TextView) inflate.findViewById(i3);
                        if (textView2 != null) {
                            C9089z c9089z = new C9089z((ConstraintLayout) inflate, textView, imageView, textView2);
                            l.d(c9089z, "EmptyBusinessPageItemBin….context), parent, false)");
                            c8860g = new C8668h(c9089z);
                        }
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
            } else if (i == C4078R.layout.reminder_title_item) {
                c8860g = new C8659a(C8659a.m28133V4(viewGroup), this.f26586g, this.f26585f);
            } else {
                int i4 = C4078R.layout.banner_item;
                if (i == i4) {
                    BusinessInsightsViewModel businessInsightsViewModel = this.f26581b;
                    l.e(viewGroup, "parent");
                    C8663c.f26538e = businessInsightsViewModel;
                    View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(i4, viewGroup, false);
                    l.d(inflate2, "LayoutInflater.from(pare…nner_item, parent, false)");
                    c8860g = new C8663c(inflate2, this.f26585f);
                } else {
                    int i5 = C4078R.layout.finance_reminder_container_item;
                    if (i == i5) {
                        l.e(viewGroup, "parent");
                        Context context = viewGroup.getContext();
                        l.d(context, "parent.context");
                        MaterialCardView inflate3 = LayoutInflater.from(C10480a.m26090B0(context)).inflate(i5, viewGroup, false);
                        int i6 = C4078R.C4080id.recentTransactionRecyclerView;
                        RecyclerView recyclerView = (RecyclerView) inflate3.findViewById(i6);
                        if (recyclerView == null) {
                            throw new NullPointerException("Missing required view with ID: ".concat(inflate3.getResources().getResourceName(i6)));
                        }
                        C9010a0 c9010a0 = new C9010a0(inflate3, recyclerView);
                        l.d(c9010a0, "FinanceReminderContainer…rapper()), parent, false)");
                        c8860g = new C8854a(c9010a0, this.f26585f, this.f26588i);
                    } else {
                        int i7 = C4078R.layout.layout_mini_banner_item;
                        if (i == i7) {
                            l.e(viewGroup, "parent");
                            View inflate4 = LayoutInflater.from(viewGroup.getContext()).inflate(i7, viewGroup, false);
                            int i8 = C4078R.C4080id.caption;
                            TextView textView3 = (TextView) inflate4.findViewById(i8);
                            if (textView3 != null) {
                                i8 = C4078R.C4080id.icon;
                                TintedImageView tintedImageView = (TintedImageView) inflate4.findViewById(i8);
                                if (tintedImageView != null) {
                                    i8 = C4078R.C4080id.title;
                                    TextView textView4 = (TextView) inflate4.findViewById(i8);
                                    if (textView4 != null) {
                                        C9034g1 c9034g1 = new C9034g1((ConstraintLayout) inflate4, textView3, tintedImageView, textView4);
                                        l.d(c9034g1, "LayoutMiniBannerItemBind….context), parent, false)");
                                        c8860g = new C8673l(c9034g1);
                                    }
                                }
                            }
                            throw new NullPointerException("Missing required view with ID: ".concat(inflate4.getResources().getResourceName(i8)));
                        }
                        int i9 = C4078R.layout.updates_container_item;
                        if (i != i9) {
                            int i10 = C4078R.layout.item_sections_entry_point;
                            if (i == i10) {
                                l.e(viewGroup, "parent");
                                MaterialCardView inflate5 = LayoutInflater.from(viewGroup.getContext()).inflate(i10, viewGroup, false);
                                int i11 = C4078R.C4080id.reminders;
                                SectionsEntryPointView sectionsEntryPointView = (SectionsEntryPointView) inflate5.findViewById(i11);
                                if (sectionsEntryPointView != null) {
                                    i11 = C4078R.C4080id.starred;
                                    SectionsEntryPointView sectionsEntryPointView2 = (SectionsEntryPointView) inflate5.findViewById(i11);
                                    if (sectionsEntryPointView2 != null) {
                                        i11 = C4078R.C4080id.transactions;
                                        SectionsEntryPointView sectionsEntryPointView3 = (SectionsEntryPointView) inflate5.findViewById(i11);
                                        if (sectionsEntryPointView3 != null) {
                                            i11 = C4078R.C4080id.updates;
                                            SectionsEntryPointView sectionsEntryPointView4 = (SectionsEntryPointView) inflate5.findViewById(i11);
                                            if (sectionsEntryPointView4 != null) {
                                                C9066r0 c9066r0 = new C9066r0(inflate5, sectionsEntryPointView, sectionsEntryPointView2, sectionsEntryPointView3, sectionsEntryPointView4);
                                                l.d(c9066r0, "ItemSectionsEntryPointBi….context), parent, false)");
                                                c8860g = new C8677p(c9066r0, this.f26585f, this.f26587h);
                                            }
                                        }
                                    }
                                }
                                throw new NullPointerException("Missing required view with ID: ".concat(inflate5.getResources().getResourceName(i11)));
                            }
                            int i12 = C4078R.layout.item_finance_trx_hidden;
                            if (i != i12) {
                                throw new IllegalArgumentException("Not implemented for this type");
                            }
                            l.e(viewGroup, "parent");
                            MaterialCardView inflate6 = LayoutInflater.from(viewGroup.getContext()).inflate(i12, viewGroup, false);
                            int i13 = C4078R.C4080id.desc;
                            TextView textView5 = (TextView) inflate6.findViewById(i13);
                            if (textView5 != null) {
                                i13 = C4078R.C4080id.icon;
                                TintedImageView tintedImageView2 = (TintedImageView) inflate6.findViewById(i13);
                                if (tintedImageView2 != null) {
                                    i13 = C4078R.C4080id.title;
                                    TextView textView6 = (TextView) inflate6.findViewById(i13);
                                    if (textView6 != null) {
                                        C9057o0 c9057o0 = new C9057o0(inflate6, textView5, tintedImageView2, textView6);
                                        l.d(c9057o0, "ItemFinanceTrxHiddenBind….context), parent, false)");
                                        c8860g = new C8666f(c9057o0, this.f26585f);
                                    }
                                }
                            }
                            throw new NullPointerException("Missing required view with ID: ".concat(inflate6.getResources().getResourceName(i13)));
                        }
                        l.e(viewGroup, "parent");
                        MaterialCardView inflate7 = LayoutInflater.from(viewGroup.getContext()).inflate(i9, viewGroup, false);
                        int i14 = C4078R.C4080id.recentUpdatesRecyclerView;
                        RecyclerView recyclerView2 = (RecyclerView) inflate7.findViewById(i14);
                        if (recyclerView2 == null) {
                            throw new NullPointerException("Missing required view with ID: ".concat(inflate7.getResources().getResourceName(i14)));
                        }
                        C9028e2 c9028e2 = new C9028e2(inflate7, recyclerView2);
                        l.d(c9028e2, "UpdatesContainerItemBind….context), parent, false)");
                        c8860g = new C8865j(c9028e2, this.f26585f, this.f26589j);
                    }
                }
            }
        }
        return c8860g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        l.e(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        this.f26580a = null;
    }
}
