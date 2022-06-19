package p193e.p194a.p437c.p438a.p498n.p501c.p502d;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import n3.z.w1;
import p1727n3.p1909z.AbstractC27592q1;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p420a.C8505a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p439a.C8685b;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8659a;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8662b;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8667g;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8669i;
import p193e.p194a.p437c.p438a.p439a.p440a.p441a.View$OnClickListenerC8664d;
import p193e.p194a.p437c.p438a.p446c.p451h.p452l.C8860g;
import p193e.p194a.p437c.p438a.p477g.C9067r1;
import p193e.p194a.p437c.p438a.p477g.C9074u;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p438a.p498n.p501c.p502d.p503c.C9422b;
import p193e.p194a.p437c.p438a.p498n.p501c.p502d.p503c.C9423c;
import p193e.p194a.p437c.p438a.p498n.p501c.p502d.p503c.C9425e;
import p193e.p194a.p437c.p438a.p498n.p501c.p502d.p503c.View$OnClickListenerC9421a;
import p193e.p194a.p437c.p438a.p498n.p501c.p502d.p503c.View$OnLongClickListenerC9424d;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p548h.AbstractC10258h;
import p193e.p194a.p437c.p570j.AbstractC10439b;
import p193e.p194a.p437c.p580r.C10527c;
import p193e.p194a.p437c.p609x.AbstractC10860a;
import p193e.p194a.p916i5.p917e.C15322a;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.s;
import s1.u.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.c.a.n.c.d.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/n/c/d/b.class */
public final class C9419b extends w1<AdapterItem, RecyclerView.AbstractC0313c0> {

    /* renamed from: c */
    public final C9418a f28603c = new C9418a(false, false, 3);

    /* renamed from: d */
    public RecyclerView f28604d;

    /* renamed from: e */
    public p<? super Integer, ? super Boolean, s> f28605e;

    /* renamed from: f */
    public final AbstractC10258h f28606f;

    /* renamed from: g */
    public final AbstractC8511a f28607g;

    /* renamed from: h */
    public final AbstractC9114h f28608h;

    /* renamed from: i */
    public final AbstractC9691j f28609i;

    /* renamed from: j */
    public final AbstractC10860a f28610j;

    /* renamed from: k */
    public final AbstractC10439b f28611k;

    /* renamed from: e.a.c.a.n.c.d.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/n/c/d/b$a.class */
    public static final /* synthetic */ class C9420a extends j implements l<Integer, s> {
        public C9420a(C9419b c9419b) {
            super(1, c9419b, C9419b.class, "onCollapseStateChanged", "onCollapseStateChanged(I)V", 0);
        }

        /* renamed from: d */
        public Object m27574d(Object obj) {
            C9418a c9418a;
            C9418a c9418a2;
            int intValue = ((Number) obj).intValue();
            w1 w1Var = (C9419b) ((b) this).b;
            boolean z = false;
            int i = 0;
            if (intValue == C4078R.string.reminders_details_page_upcoming) {
                w1Var.f28603c.f28602b = !c9418a2.f28602b;
                AbstractC27592q1 m111a = w1Var.a.m111a();
                if (m111a != null) {
                    for (Object obj2 : m111a) {
                        if (i < 0) {
                            i.N0();
                            throw null;
                        }
                        AdapterItem adapterItem = (AdapterItem) obj2;
                        if (((adapterItem instanceof AdapterItem.C4118j) && (((AdapterItem.C4118j) adapterItem).f12882a instanceof AbstractC9235b.C9242g)) || (adapterItem instanceof AdapterItem.C4110b)) {
                            w1Var.notifyItemChanged(i);
                        }
                        i++;
                    }
                }
                z = w1Var.f28603c.f28602b;
            } else if (intValue == C4078R.string.reminders_details_page_past) {
                w1Var.f28603c.f28601a = !c9418a.f28601a;
                AbstractC27592q1 m111a2 = w1Var.a.m111a();
                if (m111a2 != null) {
                    int i2 = 0;
                    for (Object obj3 : m111a2) {
                        if (i2 < 0) {
                            i.N0();
                            throw null;
                        }
                        AdapterItem adapterItem2 = (AdapterItem) obj3;
                        if (((adapterItem2 instanceof AdapterItem.C4118j) && (((AdapterItem.C4118j) adapterItem2).f12882a instanceof AbstractC9235b.C9240e)) || (adapterItem2 instanceof AdapterItem.C4112d) || (adapterItem2 instanceof AdapterItem.C4110b)) {
                            w1Var.notifyItemChanged(i2);
                        }
                        if ((adapterItem2 instanceof AdapterItem.C4110b) && ((AdapterItem.C4110b) adapterItem2).f12861b == C4078R.string.reminders_details_page_past && !w1Var.f28603c.f28601a) {
                            RecyclerView recyclerView = w1Var.f28604d;
                            LinearLayoutManager layoutManager = recyclerView != null ? recyclerView.getLayoutManager() : null;
                            LinearLayoutManager linearLayoutManager = layoutManager;
                            if (!(layoutManager instanceof LinearLayoutManager)) {
                                linearLayoutManager = null;
                            }
                            LinearLayoutManager linearLayoutManager2 = linearLayoutManager;
                            if (linearLayoutManager2 != null) {
                                linearLayoutManager2.scrollToPositionWithOffset(i2, 0);
                            }
                        }
                        i2++;
                    }
                }
                z = w1Var.f28603c.f28601a;
            }
            p<? super Integer, ? super Boolean, s> pVar = w1Var.f28605e;
            if (pVar != null) {
                pVar.k(Integer.valueOf(intValue), Boolean.valueOf(z));
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9419b(AbstractC10258h abstractC10258h, AbstractC8511a abstractC8511a, AbstractC9114h abstractC9114h, AbstractC9691j abstractC9691j, AbstractC10860a abstractC10860a, AbstractC10439b abstractC10439b) {
        super(new C8685b());
        s1.z.c.l.e(abstractC10258h, "messageLocator");
        s1.z.c.l.e(abstractC8511a, "addressProfileLoader");
        s1.z.c.l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        s1.z.c.l.e(abstractC9691j, "statusProvider");
        s1.z.c.l.e(abstractC10860a, "messageInfoLoader");
        s1.z.c.l.e(abstractC10439b, "deeplinkEnricher");
        this.f28606f = abstractC10258h;
        this.f28607g = abstractC8511a;
        this.f28608h = abstractC9114h;
        this.f28609i = abstractC9691j;
        this.f28610j = abstractC10860a;
        this.f28611k = abstractC10439b;
    }

    public int getItemViewType(int i) {
        int i2;
        AdapterItem adapterItem = (AdapterItem) getItem(i);
        if (adapterItem instanceof AdapterItem.C4118j) {
            i2 = ((AdapterItem.C4118j) adapterItem).f12882a instanceof AbstractC9235b.C9242g ? C4078R.layout.upcoming_reminder_item : C4078R.layout.past_reminder_item;
        } else if (adapterItem instanceof AdapterItem.C4117i) {
            i2 = C4078R.layout.reminder_title_item;
        } else if (adapterItem instanceof AdapterItem.C4110b) {
            i2 = C4078R.layout.collapsible_section_item;
        } else if (adapterItem instanceof AdapterItem.C4112d) {
            i2 = C4078R.layout.date_header_item;
        } else if (!(adapterItem instanceof AdapterItem.C4113e)) {
            throw new IllegalArgumentException("ViewHolder type not supported");
        } else {
            i2 = C4078R.layout.empty_business_item;
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        s1.z.c.l.e(recyclerView, "recyclerView");
        C9419b.super.onAttachedToRecyclerView(recyclerView);
        this.f28604d = recyclerView;
    }

    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        s1.z.c.l.e(abstractC0313c0, "holder");
        AdapterItem adapterItem = (AdapterItem) getItem(i);
        if (!(adapterItem instanceof AdapterItem.C4118j)) {
            if (adapterItem instanceof AdapterItem.C4117i) {
                ((C8659a) abstractC0313c0).m28132W4((AdapterItem.C4117i) adapterItem);
                return;
            } else if (!(adapterItem instanceof AdapterItem.C4110b)) {
                if (adapterItem instanceof AdapterItem.C4112d) {
                    ((C8667g) abstractC0313c0).m28124V4((AdapterItem.C4112d) adapterItem);
                    return;
                } else if (!(adapterItem instanceof AdapterItem.C4113e)) {
                    return;
                } else {
                    ((C8669i) abstractC0313c0).m28122O4((AdapterItem.C4113e) adapterItem);
                    return;
                }
            } else {
                C9422b c9422b = (C9422b) abstractC0313c0;
                AdapterItem.C4110b c4110b = (AdapterItem.C4110b) adapterItem;
                s1.z.c.l.e(c4110b, "item");
                C9074u c9074u = c9422b.f28614e;
                c9074u.f27689c.setText(c4110b.f12861b);
                c9074u.f27687a.setOnClickListener(new View$OnClickListenerC9421a(c9422b, c4110b));
                if (c4110b.f12861b == C4078R.string.reminders_details_page_upcoming ? c9422b.f28616g.f28602b : c9422b.f28616g.f28601a) {
                    c9074u.f27688b.setImageResource(C4078R.C4079drawable.ic_expand);
                    TextView textView = c9074u.f27689c;
                    View view = c9422b.itemView;
                    s1.z.c.l.d(view, "itemView");
                    textView.setTextColor(C19291g.m13612L(view.getContext(), C4078R.attr.tcx_textSecondary));
                    return;
                }
                c9074u.f27688b.setImageResource(C4078R.C4079drawable.ic_collapse);
                TextView textView2 = c9074u.f27689c;
                View view2 = c9422b.itemView;
                s1.z.c.l.d(view2, "itemView");
                textView2.setTextColor(C19291g.m13612L(view2.getContext(), C4078R.attr.tcx_brandBackgroundBlue));
                return;
            }
        }
        AbstractC9235b abstractC9235b = ((AdapterItem.C4118j) adapterItem).f12882a;
        if (abstractC9235b instanceof AbstractC9235b.C9242g) {
            ((C8860g) abstractC0313c0).m28000W4((AbstractC9235b.C9242g) abstractC9235b);
        } else if (!(abstractC9235b instanceof AbstractC9235b.C9240e)) {
        } else {
            C9425e c9425e = (C9425e) abstractC0313c0;
            AbstractC9235b.C9240e c9240e = (AbstractC9235b.C9240e) abstractC9235b;
            s1.z.c.l.e(c9240e, "item");
            C9067r1 c9067r1 = c9425e.f28624f;
            p1 p1Var = c9425e.f28623e;
            if (p1Var != null) {
                d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            c9425e.itemView.setOnClickListener(new View$OnClickListenerC8664d(c9425e, c9240e));
            C9067r1 c9067r12 = c9425e.f28624f;
            Context m8700J = C22128a.m8700J(c9425e.itemView, "itemView", "ctx");
            int m16105M = C17422k.m16105M(m8700J, c9240e.f28070b.f31411b);
            Integer num = c9240e.f28070b.f31412c;
            int m16105M2 = num != null ? C17422k.m16105M(m8700J, num.intValue()) : 0;
            TextView textView3 = c9067r12.f27647e;
            s1.z.c.l.d(textView3, "primaryTag");
            Drawable background = textView3.getBackground();
            Objects.requireNonNull(background, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
            GradientDrawable gradientDrawable = (GradientDrawable) background;
            gradientDrawable.mutate();
            gradientDrawable.setColor(m16105M2);
            TextView textView4 = c9067r12.f27647e;
            s1.z.c.l.d(textView4, "primaryTag");
            textView4.setText(c9240e.f28070b.f31410a);
            c9067r12.f27647e.setTextColor(m16105M);
            C10527c c10527c = c9240e.f28071c;
            if (c10527c != null) {
                int m16105M3 = C17422k.m16105M(m8700J, c10527c.f31411b);
                Integer num2 = c9240e.f28071c.f31412c;
                int m16105M4 = num2 != null ? C17422k.m16105M(m8700J, num2.intValue()) : 0;
                TextView textView5 = c9067r12.f27651i;
                s1.z.c.l.d(textView5, "secondaryTag");
                Drawable background2 = textView5.getBackground();
                Objects.requireNonNull(background2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable");
                GradientDrawable gradientDrawable2 = (GradientDrawable) background2;
                gradientDrawable2.mutate();
                gradientDrawable2.setColor(m16105M4);
                TextView textView6 = c9067r12.f27651i;
                s1.z.c.l.d(textView6, "secondaryTag");
                textView6.setText(c10527c.f31410a);
                c9067r12.f27651i.setTextColor(m16105M3);
                TextView textView7 = c9067r12.f27651i;
                s1.z.c.l.d(textView7, "secondaryTag");
                textView7.setVisibility(0);
            } else {
                TextView textView8 = c9067r12.f27651i;
                s1.z.c.l.d(textView8, "secondaryTag");
                C19286f.m13689O(textView8);
            }
            TextView textView9 = c9067r1.f27649g;
            s1.z.c.l.d(textView9, "secTitle");
            textView9.setText(c9240e.f28073e);
            c9425e.m28126T4(c9425e.f28629k.f28601a);
            if (c9240e.f28075g.length() > 0) {
                TextView textView10 = c9067r1.f27648f;
                s1.z.c.l.d(textView10, "secSubTitle");
                textView10.setText(c9240e.f28075g);
                c9067r1.f27648f.setTextColor(C15322a.m18927a(C22128a.m8700J(c9425e.itemView, "itemView", "itemView.context"), c9240e.f28080l));
            }
            C8243a m28131N4 = c9425e.m28131N4();
            String str = c9240e.f28074f;
            Uri uri = Uri.EMPTY;
            s1.z.c.l.d(uri, "Uri.EMPTY");
            s1.z.c.l.e("", AnalyticsConstants.NAME);
            s1.z.c.l.e(str, "identifier");
            s1.z.c.l.e(uri, RemoteMessageConst.Notification.ICON);
            C8243a.m28739ok(m28131N4, c9425e.m28130O4(new C8505a(str, "", uri)), false, 2, null);
            m28131N4.m28738pk(true);
            c9067r1.f27646d.setPresenter(m28131N4);
            String str2 = c9240e.f28072d;
            if (str2 == null || str2.length() == 0) {
                TextView textView11 = c9067r1.f27652j;
                s1.z.c.l.d(textView11, "title");
                textView11.setText(r.l(c9240e.f28074f));
            } else {
                TextView textView12 = c9067r1.f27652j;
                s1.z.c.l.d(textView12, "title");
                textView12.setText(c9240e.f28072d);
            }
            c9425e.f28623e = c9425e.f28626h.mo28429Iz(c9240e.f28074f, new C9423c(c9067r1, m28131N4, c9425e, c9240e));
            if (!c9425e.f26543c.containsKey(Long.valueOf(c9240e.f28069a))) {
                C8662b c8662b = c9425e.f28627i;
                if (c8662b.f26537c) {
                    c9425e.m28127R4(c8662b.f26535a, c9240e.f28084p, c9240e.f28074f, c9240e.f28086r, c8662b.f26536b);
                    c9425e.f26543c.put(Long.valueOf(c9240e.f28069a), Boolean.TRUE);
                }
            }
            C9067r1 c9067r13 = c9425e.f28624f;
            if (c9240e.f28076h.length() == 0) {
                Group group = c9067r13.f27650h;
                s1.z.c.l.d(group, "secondarySection");
                C19286f.m13684T(group);
                TextView textView13 = c9067r13.f27644b;
                s1.z.c.l.d(textView13, "actionStatus");
                C19286f.m13687Q(textView13);
            } else {
                Group group2 = c9067r13.f27650h;
                s1.z.c.l.d(group2, "secondarySection");
                C19286f.m13687Q(group2);
                TextView textView14 = c9067r13.f27644b;
                s1.z.c.l.d(textView14, "actionStatus");
                C19286f.m13684T(textView14);
                Integer num3 = c9240e.f28083o;
                if (num3 != null) {
                    int intValue = num3.intValue();
                    TextView textView15 = c9067r13.f27644b;
                    View view3 = c9425e.itemView;
                    s1.z.c.l.d(view3, "itemView");
                    Context context = view3.getContext();
                    s1.z.c.l.d(context, "itemView.context");
                    textView15.setTextColor(C17422k.m16105M(context, intValue));
                }
            }
            TextView textView16 = c9067r13.f27644b;
            s1.z.c.l.d(textView16, "actionStatus");
            textView16.setText(c9240e.f28076h);
            ImageView imageView = c9067r1.f27645c;
            s1.z.c.l.d(imageView, "alreadyPaidCheckMark");
            C19286f.m13683U(imageView, c9240e.f28090v);
            long j = c9240e.f28069a;
            AbstractC9691j abstractC9691j = c9425e.f28628j;
            View view4 = c9425e.itemView;
            s1.z.c.l.d(view4, "itemView");
            Context context2 = view4.getContext();
            s1.z.c.l.d(context2, "itemView.context");
            if (!abstractC9691j.mo27253h0(context2)) {
                return;
            }
            c9425e.itemView.setOnLongClickListener(new View$OnLongClickListenerC9424d(c9425e, j));
        }
    }

    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C9425e c9425e;
        s1.z.c.l.e(viewGroup, "parent");
        int i2 = C4078R.layout.past_reminder_item;
        if (i == i2) {
            s1.z.c.l.e(viewGroup, "parent");
            MaterialCardView inflate = LayoutInflater.from(viewGroup.getContext()).inflate(i2, viewGroup, false);
            int i3 = C4078R.C4080id.actionStatus;
            TextView textView = (TextView) inflate.findViewById(i3);
            if (textView != null) {
                i3 = C4078R.C4080id.alreadyPaidCheckMark;
                ImageView imageView = (ImageView) inflate.findViewById(i3);
                if (imageView != null) {
                    i3 = C4078R.C4080id.icon;
                    AvatarXView avatarXView = (AvatarXView) inflate.findViewById(i3);
                    if (avatarXView != null) {
                        i3 = C4078R.C4080id.primaryTag;
                        TextView textView2 = (TextView) inflate.findViewById(i3);
                        if (textView2 != null) {
                            i3 = C4078R.C4080id.secSubTitle;
                            TextView textView3 = (TextView) inflate.findViewById(i3);
                            if (textView3 != null) {
                                i3 = C4078R.C4080id.secTitle;
                                TextView textView4 = (TextView) inflate.findViewById(i3);
                                if (textView4 != null) {
                                    i3 = C4078R.C4080id.secondarySection;
                                    Group group = (Group) inflate.findViewById(i3);
                                    if (group != null) {
                                        i3 = C4078R.C4080id.secondaryTag;
                                        TextView textView5 = (TextView) inflate.findViewById(i3);
                                        if (textView5 != null) {
                                            i3 = C4078R.C4080id.title;
                                            TextView textView6 = (TextView) inflate.findViewById(i3);
                                            if (textView6 != null) {
                                                C9067r1 c9067r1 = new C9067r1(inflate, textView, imageView, avatarXView, textView2, textView3, textView4, group, textView5, textView6);
                                                s1.z.c.l.d(c9067r1, "PastReminderItemBinding\n….context), parent, false)");
                                                c9425e = new C9425e(c9067r1, this.f28606f, this.f28607g, this.f28608h, new C8662b("past_reminders_item", "reminders_page", false), this.f28609i, this.f28603c);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
        } else if (i == C4078R.layout.upcoming_reminder_item) {
            c9425e = new C8860g(C8860g.m28001V4(viewGroup), this.f28606f, this.f28607g, this.f28610j, this.f28608h, new C8662b("upcoming_reminders_item", "reminders_page", false), this.f28609i, this.f28611k, this.f28603c);
        } else {
            int i4 = C4078R.layout.collapsible_section_item;
            if (i == i4) {
                s1.z.c.l.e(viewGroup, "parent");
                View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(i4, viewGroup, false);
                int i5 = C4078R.C4080id.actionBt;
                ImageView imageView2 = (ImageView) inflate2.findViewById(i5);
                if (imageView2 != null) {
                    i5 = C4078R.C4080id.title;
                    TextView textView7 = (TextView) inflate2.findViewById(i5);
                    if (textView7 != null) {
                        C9074u c9074u = new C9074u((FrameLayout) inflate2, imageView2, textView7);
                        s1.z.c.l.d(c9074u, "CollapsibleSectionItemBi….context), parent, false)");
                        c9425e = new C9422b(c9074u, this.f28608h, new C9420a(this), this.f28603c);
                    }
                }
                throw new NullPointerException("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i5)));
            } else if (i == C4078R.layout.date_header_item) {
                c9425e = new C8667g(C8667g.m28125U4(viewGroup), this.f28603c);
            } else if (i != C4078R.layout.empty_business_item) {
                throw new IllegalArgumentException("ViewHolder type not supported");
            } else {
                c9425e = new C8669i(C8669i.m28123N4(viewGroup));
            }
        }
        return c9425e;
    }
}
