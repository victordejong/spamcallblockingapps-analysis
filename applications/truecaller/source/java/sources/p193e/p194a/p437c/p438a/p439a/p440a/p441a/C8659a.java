package p193e.p194a.p437c.p438a.p439a.p440a.p441a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import com.google.android.material.card.MaterialCardView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.tooltip.TooltipDirection;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p437c.p438a.p446c.p450g.C8832b;
import p193e.p194a.p437c.p438a.p446c.p450g.C8833c;
import p193e.p194a.p437c.p438a.p446c.p450g.C8834d;
import p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j;
import p193e.p194a.p437c.p438a.p477g.C9012a2;
import p193e.p194a.p437c.p438a.p477g.C9055n1;
import p193e.p194a.p437c.p578p.C10480a;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.a.a.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/a.class */
public final class C8659a extends AbstractC8665e<AdapterItem.C4117i> {

    /* renamed from: e */
    public final C9012a2 f26526e;

    /* renamed from: f */
    public final AbstractC8852j f26527f;

    /* renamed from: e.a.c.a.a.a.a.a$a */
    /* loaded from: classes2-dex2jar.jar:e/a/c/a/a/a/a/a$a.class */
    public static final class View$OnClickListenerC8660a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f26528a;

        /* renamed from: b */
        public final /* synthetic */ Object f26529b;

        /* renamed from: c */
        public final /* synthetic */ Object f26530c;

        /* renamed from: d */
        public final /* synthetic */ Object f26531d;

        /* renamed from: e */
        public final /* synthetic */ Object f26532e;

        public View$OnClickListenerC8660a(int i, Object obj, Object obj2, Object obj3, Object obj4) {
            this.f26528a = i;
            this.f26529b = obj;
            this.f26530c = obj2;
            this.f26531d = obj3;
            this.f26532e = obj4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f26528a;
            if (i == 0) {
                C8659a.m28134U4((C8659a) this.f26531d, (AdapterItem.C4117i) this.f26532e, (C8833c) this.f26529b);
            } else if (i != 1) {
                throw null;
            } else {
                C8659a.m28134U4((C8659a) this.f26531d, (AdapterItem.C4117i) this.f26532e, (C8833c) this.f26529b);
            }
        }
    }

    /* renamed from: e.a.c.a.a.a.a.a$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/a/a/a/a$b.class */
    public static final class View$OnClickListenerC8661b implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C8832b f26533a;

        /* renamed from: b */
        public final /* synthetic */ C8659a f26534b;

        public View$OnClickListenerC8661b(C8832b c8832b, C8659a c8659a, AdapterItem.C4117i c4117i) {
            this.f26533a = c8832b;
            this.f26534b = c8659a;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ConstraintLayout constraintLayout = this.f26534b.f26526e.f27371a;
            l.d(constraintLayout, "binding.root");
            Context context = constraintLayout.getContext();
            s1.z.b.l<Context, s> lVar = this.f26533a.f26926c;
            l.d(context, AnalyticsConstants.CONTEXT);
            lVar.d(context);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8659a(p193e.p194a.p437c.p438a.p477g.C9012a2 r5, p193e.p194a.p437c.p438a.p446c.p451h.AbstractC8852j r6, p193e.p194a.p437c.p438a.p479i.AbstractC9114h r7) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "binding"
            s1.z.c.l.e(r0, r1)
            r0 = r6
            java.lang.String r1 = "lifecycleAwareToolTipController"
            s1.z.c.l.e(r0, r1)
            r0 = r7
            java.lang.String r1 = "lifeCycleAwareAnalyticsLogger"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            androidx.constraintlayout.widget.ConstraintLayout r0 = r0.f27371a
            r8 = r0
            r0 = r8
            java.lang.String r1 = "binding.root"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r8
            r2 = r7
            r0.<init>(r1, r2)
            r0 = r4
            r1 = r5
            r0.f26526e = r1
            r0 = r4
            r1 = r6
            r0.f26527f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8659a.<init>(e.a.c.a.g.a2, e.a.c.a.c.h.j, e.a.c.a.i.h):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
    /* renamed from: U4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m28134U4(p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8659a r8, com.truecaller.insights.p168ui.models.AdapterItem.C4117i r9, p193e.p194a.p437c.p438a.p446c.p450g.C8833c r10) {
        /*
            r0 = r8
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r9
            int r0 = r0.f12875a
            r11 = r0
            int r0 = com.truecaller.insights.p168ui.C4078R.string.transactions
            r12 = r0
            java.lang.String r0 = ""
            r13 = r0
            r0 = r11
            r1 = r12
            if (r0 != r1) goto L1f
            java.lang.String r0 = "recent_transactions"
            r9 = r0
            goto L36
        L1f:
            r0 = r11
            int r1 = com.truecaller.insights.p168ui.C4078R.string.updates
            if (r0 != r1) goto L2c
            java.lang.String r0 = "recent_updates"
            r9 = r0
            goto L36
        L2c:
            r0 = r11
            int r1 = com.truecaller.insights.p168ui.C4078R.string.reminders
            if (r0 != r1) goto L3c
            java.lang.String r0 = "upcoming_smart_card"
            r9 = r0
        L36:
            r0 = r9
            r14 = r0
            goto L40
        L3c:
            java.lang.String r0 = ""
            r14 = r0
        L40:
            r0 = r11
            r1 = r12
            if (r0 != r1) goto L4c
            java.lang.String r0 = "Bank"
            r9 = r0
        L49:
            goto L69
        L4c:
            r0 = r11
            int r1 = com.truecaller.insights.p168ui.C4078R.string.updates
            if (r0 != r1) goto L59
            java.lang.String r0 = "update"
            r9 = r0
            goto L49
        L59:
            r0 = r13
            r9 = r0
            r0 = r11
            int r1 = com.truecaller.insights.p168ui.C4078R.string.reminders
            if (r0 != r1) goto L49
            java.lang.String r0 = "Bill"
            r9 = r0
            goto L49
        L69:
            r0 = r8
            r1 = r14
            r2 = r9
            r3 = 0
            r4 = 0
            java.lang.String r5 = "insights_tab"
            java.lang.String r6 = "view_all"
            r0.m28129P4(r1, r2, r3, r4, r5, r6)
            r0 = r10
            s1.z.b.l<android.content.Context, s1.s> r0 = r0.f26928b
            r9 = r0
            r0 = r8
            android.view.View r0 = r0.itemView
            r8 = r0
            r0 = r8
            java.lang.String r1 = "itemView"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            android.content.Context r0 = r0.getContext()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "itemView.context"
            s1.z.c.l.d(r0, r1)
            r0 = r9
            r1 = r8
            java.lang.Object r0 = r0.d(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p439a.p440a.p441a.C8659a.m28134U4(e.a.c.a.a.a.a.a, com.truecaller.insights.ui.models.AdapterItem$i, e.a.c.a.c.g.c):void");
    }

    /* renamed from: V4 */
    public static final C9012a2 m28133V4(ViewGroup viewGroup) {
        l.e(viewGroup, "parent");
        Context context = viewGroup.getContext();
        l.d(context, "parent.context");
        View inflate = LayoutInflater.from(C10480a.m26090B0(context)).inflate(C4078R.layout.reminder_title_item, viewGroup, false);
        int i = C4078R.C4080id.actionBt;
        ImageView imageView = (ImageView) inflate.findViewById(i);
        if (imageView != null) {
            i = C4078R.C4080id.bar;
            Group group = (Group) inflate.findViewById(i);
            if (group != null) {
                i = C4078R.C4080id.dummyView;
                View findViewById = inflate.findViewById(i);
                if (findViewById != null) {
                    i = C4078R.C4080id.line;
                    ImageView imageView2 = (ImageView) inflate.findViewById(i);
                    if (imageView2 != null) {
                        i = C4078R.C4080id.secondaryBtnContainer;
                        MaterialCardView findViewById2 = inflate.findViewById(i);
                        if (findViewById2 != null) {
                            int i2 = C4078R.C4080id.secondaryBtnIcon;
                            AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById2.findViewById(i2);
                            if (appCompatImageView != null) {
                                i2 = C4078R.C4080id.secondaryBtnTitle;
                                TextView textView = (TextView) findViewById2.findViewById(i2);
                                if (textView != null) {
                                    C9055n1 c9055n1 = new C9055n1(findViewById2, appCompatImageView, textView);
                                    i = C4078R.C4080id.title;
                                    TextView textView2 = (TextView) inflate.findViewById(i);
                                    if (textView2 != null) {
                                        C9012a2 c9012a2 = new C9012a2((ConstraintLayout) inflate, imageView, group, findViewById, imageView2, c9055n1, textView2);
                                        l.d(c9012a2, "ReminderTitleItemBinding…rapper()), parent, false)");
                                        return c9012a2;
                                    }
                                }
                            }
                            throw new NullPointerException("Missing required view with ID: ".concat(findViewById2.getResources().getResourceName(i2)));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // p193e.p194a.p437c.p438a.p439a.p440a.p441a.AbstractC8665e
    /* renamed from: S4 */
    public void mo27509S4(AdapterItem.C4117i c4117i) {
        l.e(c4117i, "item");
    }

    /* renamed from: W4 */
    public void m28132W4(AdapterItem.C4117i c4117i) {
        l.e(c4117i, "item");
        C9012a2 c9012a2 = this.f26526e;
        c9012a2.f27375e.setText(c4117i.f12875a);
        C8833c c8833c = c4117i.f12878d;
        if (c8833c != null) {
            c9012a2.f27371a.setOnClickListener(new View$OnClickListenerC8660a(0, c8833c, c9012a2, this, c4117i));
            Integer num = c4117i.f12880f;
            if (num != null) {
                int intValue = num.intValue();
                ImageView imageView = c9012a2.f27372b;
                l.d(imageView, "actionBt");
                TooltipDirection tooltipDirection = TooltipDirection.END;
                AbstractC8852j abstractC8852j = this.f26527f;
                View view = this.itemView;
                Objects.requireNonNull(view, "null cannot be cast to non-null type android.view.ViewGroup");
                WeakReference weakReference = new WeakReference((ViewGroup) view);
                WeakReference weakReference2 = new WeakReference(imageView);
                View view2 = this.itemView;
                l.d(view2, "itemView");
                abstractC8852j.mo28005aa(new C8834d(weakReference, tooltipDirection, intValue, weakReference2, ((ViewGroup) view2).getResources().getDimension(C4078R.dimen.dp8), null, C8676o.f26562b));
            }
            ImageView imageView2 = c9012a2.f27372b;
            l.d(imageView2, "actionBt");
            C19286f.m13684T(imageView2);
            c9012a2.f27372b.setOnClickListener(new View$OnClickListenerC8660a(1, c8833c, c9012a2, this, c4117i));
        } else {
            ImageView imageView3 = c9012a2.f27372b;
            l.d(imageView3, "actionBt");
            C19286f.m13689O(imageView3);
        }
        Integer num2 = c4117i.f12881g;
        if (num2 != null) {
            int intValue2 = num2.intValue();
            C9055n1 c9055n1 = c9012a2.f27374d;
            l.d(c9055n1, "secondaryBtnContainer");
            MaterialCardView materialCardView = c9055n1.f27562a;
            l.d(materialCardView, "secondaryBtnContainer.root");
            TooltipDirection tooltipDirection2 = TooltipDirection.END;
            AbstractC8852j abstractC8852j2 = this.f26527f;
            View view3 = this.itemView;
            Objects.requireNonNull(view3, "null cannot be cast to non-null type android.view.ViewGroup");
            WeakReference weakReference3 = new WeakReference((ViewGroup) view3);
            WeakReference weakReference4 = new WeakReference(materialCardView);
            View view4 = this.itemView;
            l.d(view4, "itemView");
            abstractC8852j2.mo28005aa(new C8834d(weakReference3, tooltipDirection2, intValue2, weakReference4, ((ViewGroup) view4).getResources().getDimension(C4078R.dimen.dp8), 5000L, C8675n.f26561b));
        }
        C9055n1 c9055n12 = this.f26526e.f27374d;
        C8832b c8832b = c4117i.f12879e;
        if (c8832b != null) {
            c9055n12.f27563b.setBackgroundResource(c8832b.f26925b);
            c9055n12.f27564c.setText(c8832b.f26924a);
            c9055n12.f27562a.setOnClickListener(new View$OnClickListenerC8661b(c8832b, this, c4117i));
        }
        MaterialCardView materialCardView2 = c9055n12.f27562a;
        l.d(materialCardView2, "root");
        C19286f.m13683U(materialCardView2, c4117i.f12879e != null);
    }
}
