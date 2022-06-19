package p193e.p194a.p682e.p699c2;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.analytics.ChosenComponentReceiver;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.common.p156ui.banner.BannerViewX;
import com.truecaller.p183ui.components.FeedbackItemView;
import com.truecaller.referral.ReferralManager;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1114o5.C19023f1;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1159q4.C19651l0;
import p193e.p194a.p1342w4.p1344s.C21231c0;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p682e.p699c2.C13188f0;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.e.c2.f0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/f0.class */
public class C13188f0 extends RecyclerView.AbstractC0317g<RecyclerView.AbstractC0313c0> {

    /* renamed from: a */
    public final RecyclerView.AbstractC0317g f38309a;

    /* renamed from: b */
    public AbstractC13190b f38310b;

    /* renamed from: c */
    public FeedbackItemView.FeedbackItem f38311c;

    /* renamed from: d */
    public boolean f38312d;

    /* renamed from: e.a.e.c2.f0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c2/f0$a.class */
    public class C13189a extends RecyclerView.AbstractC0320i {
        public C13189a() {
            C13188f0.this = r4;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onChanged() {
            C13188f0.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeChanged(int i, int i2) {
            C13188f0.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeChanged(int i, int i2, Object obj) {
            C13188f0.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeInserted(int i, int i2) {
            C13188f0.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeMoved(int i, int i2, int i3) {
            C13188f0.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeRemoved(int i, int i2) {
            C13188f0.this.notifyDataSetChanged();
        }
    }

    /* renamed from: e.a.e.c2.f0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c2/f0$b.class */
    public interface AbstractC13190b {
    }

    /* renamed from: e.a.e.c2.f0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c2/f0$c.class */
    public static class C13191c extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final BannerViewX f38314a;

        public C13191c(BannerViewX bannerViewX) {
            super(bannerViewX);
            this.f38314a = bannerViewX;
        }
    }

    public C13188f0(RecyclerView.AbstractC0317g abstractC0317g) {
        this.f38309a = abstractC0317g;
        abstractC0317g.registerAdapterDataObserver(new C13189a());
    }

    /* renamed from: e */
    public void m22000e(FeedbackItemView.FeedbackItem feedbackItem) {
        if (feedbackItem == null && this.f38311c != null) {
            notifyItemRemoved(0);
        } else if (feedbackItem != null && this.f38311c == null) {
            notifyItemInserted(0);
        } else if (feedbackItem != this.f38311c) {
            notifyItemChanged(0);
        }
        this.f38311c = feedbackItem;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public final int getItemCount() {
        int i = 0;
        if (this.f38309a.getItemCount() == 0) {
            return 0;
        }
        int itemCount = this.f38309a.getItemCount();
        if (this.f38311c != null) {
            i = 1;
        }
        return itemCount + i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        if (i != 0 || this.f38311c == null) {
            RecyclerView.AbstractC0317g abstractC0317g = this.f38309a;
            int i2 = i;
            if (this.f38311c != null) {
                i2 = i;
                if (i > 0) {
                    i2 = i - 1;
                }
            }
            return abstractC0317g.getItemViewType(i2);
        }
        return C2752R.C2754id.view_type_feedback_item;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        if (i != 0 || this.f38311c == null) {
            RecyclerView.AbstractC0317g abstractC0317g = this.f38309a;
            int i2 = i;
            if (this.f38311c != null) {
                i2 = i;
                if (i > 0) {
                    i2 = i - 1;
                }
            }
            abstractC0317g.onBindViewHolder(abstractC0313c0, i2);
            return;
        }
        BannerViewX bannerViewX = ((C13191c) abstractC0313c0).f38314a;
        Context context = bannerViewX.getContext();
        int titleId = this.f38311c.f15758j.getTitleId();
        bannerViewX.setTitle(titleId == -1 ? "" : context.getString(titleId));
        int messageId = this.f38311c.f15758j.getMessageId();
        bannerViewX.setSubtitle(messageId == -1 ? "" : context.getString(messageId));
        bannerViewX.setPrimaryButtonText(context.getString(this.f38311c.f15758j.getPositiveId()));
        bannerViewX.setSecondaryButtonText(context.getString(this.f38311c.f15758j.getDismissId()));
        bannerViewX.setImage(C19291g.m13600P(context, this.f38311c.f15758j.getIconId()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        C13191c c13191c;
        if (i == 2131366850) {
            Context context = viewGroup.getContext();
            l.e(context, AnalyticsConstants.CONTEXT);
            final BannerViewX bannerViewX = new BannerViewX(context, null);
            int dimensionPixelSize = bannerViewX.getContext().getResources().getDimensionPixelSize(2131165497);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMarginStart(dimensionPixelSize);
            layoutParams.setMarginEnd(dimensionPixelSize);
            bannerViewX.setLayoutParams(layoutParams);
            bannerViewX.setPrimaryButtonCLickListener(new s1.z.b.l() { // from class: e.a.e.c2.k
                /* renamed from: d */
                public final Object m21996d(Object obj) {
                    C13188f0 c13188f0 = C13188f0.this;
                    View view = (View) obj;
                    C13188f0.AbstractC13190b abstractC13190b = c13188f0.f38310b;
                    FeedbackItemView.FeedbackItem feedbackItem = c13188f0.f38311c;
                    C21231c0.C21234c c21234c = (C21231c0.C21234c) abstractC13190b;
                    Objects.requireNonNull(c21234c);
                    TrueApp.m36032b0().mo10154s().mo12776C4().mo13274b(ViewActionEvent.m35938i(feedbackItem.f15759k.asAnalyticsContext(), ViewActionEvent.ViralityAction.INVITE));
                    ReferralManager m13084PA = C19651l0.m13084PA(C21231c0.this.requireActivity(), "ReferralManagerImpl");
                    if (m13084PA != null) {
                        ReferralManager.ReferralLaunchContext referralLaunchContext = ReferralManager.ReferralLaunchContext.SEARCH_SCREEN_PROMO;
                        C19651l0 c19651l0 = (C19651l0) m13084PA;
                        if (c19651l0.mo13070Ef(referralLaunchContext)) {
                            c19651l0.f54579c.mo13053Xa(referralLaunchContext);
                            return s.a;
                        }
                    }
                    C8582g0.m28322S(C21231c0.this.requireContext(), C21231c0.this.getResources().getString(C2752R.string.MePageShareApp), C21231c0.this.getResources().getString(C2752R.string.ShareTruecallerTitle), C21231c0.this.getResources().getString(C2752R.string.ShareTruecallerText2), null, ChosenComponentReceiver.m35946a(C21231c0.this.requireContext(), "SearchScreenPromo").getIntentSender());
                    C22128a.m8596m1().mo13274b(ViewActionEvent.m35938i("globalSearchHistory", ViewActionEvent.ViralityAction.SHARE));
                    return s.a;
                }
            });
            bannerViewX.setSecondaryButtonCLickListener(new s1.z.b.l() { // from class: e.a.e.c2.m
                /* renamed from: d */
                public final Object m21995d(Object obj) {
                    C13188f0 c13188f0 = C13188f0.this;
                    final ViewGroup bannerViewX2 = bannerViewX;
                    View view = (View) obj;
                    if (!c13188f0.f38312d) {
                        c13188f0.f38312d = true;
                        AnimatorSet animatorSet = new AnimatorSet();
                        for (int i2 = 0; i2 < bannerViewX2.getChildCount(); i2++) {
                            C19023f1 m14250a = C19023f1.m14250a(bannerViewX2.getChildAt(i2), "alpha", 1.0f, 0.0f);
                            m14250a.f53147a.setInterpolator(new AccelerateDecelerateInterpolator());
                            m14250a.f53147a.setDuration(200L);
                            animatorSet.play(m14250a.f53147a);
                        }
                        final ViewGroup.LayoutParams layoutParams2 = bannerViewX2.getLayoutParams();
                        final int height = bannerViewX2.getHeight();
                        ValueAnimator valueAnimator = new ValueAnimator();
                        valueAnimator.setFloatValues(1.0f, 0.0f);
                        valueAnimator.setDuration(200L);
                        valueAnimator.setStartDelay(200L);
                        valueAnimator.setInterpolator(new AccelerateDecelerateInterpolator());
                        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: e.a.e.c2.l
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                ViewGroup.LayoutParams layoutParams3 = layoutParams2;
                                int i3 = height;
                                ViewGroup viewGroup2 = bannerViewX2;
                                float floatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                                layoutParams3.height = Math.round(i3 * floatValue);
                                viewGroup2.setAlpha(floatValue);
                                viewGroup2.requestLayout();
                            }
                        });
                        animatorSet.play(valueAnimator);
                        animatorSet.addListener(new C13193g0(c13188f0));
                        animatorSet.start();
                    }
                    return s.a;
                }
            });
            c13191c = new C13191c(bannerViewX);
        } else {
            c13191c = this.f38309a.onCreateViewHolder(viewGroup, i);
        }
        return c13191c;
    }
}
