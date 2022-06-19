package p193e.p194a.p437c.p438a.p494m.p496b;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.insights.models.InsightsReminder;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.reminders.actions.binders.BillReminderMeta;
import com.truecaller.insights.utils.DateFormat;
import e.m.e.k;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p437c.p438a.p477g.C9088y1;
import p193e.p194a.p437c.p570j.AbstractC10442e;
import p193e.p194a.p437c.p570j.AbstractC10443f;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p437c.p598v.p599f.p601b.C10720a;
import p193e.p194a.p437c.p598v.p603h.AbstractC10738e;
import p193e.p194a.p437c.p598v.p604i.C10748g;
import s1.s;
import s1.z.b.l;
import w3.b.a.b;
import w3.b.a.e0.i;
import w3.b.a.h;
/* renamed from: e.a.c.a.m.b.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/g.class */
public final class C9263g extends RecyclerView.AbstractC0317g<C9264a> {

    /* renamed from: a */
    public final List<InsightsReminder> f28192a = new ArrayList();

    /* renamed from: b */
    public final C10720a f28193b;

    /* renamed from: c */
    public final AbstractC10442e<AbstractC10443f.C10444a> f28194c;

    /* renamed from: d */
    public final l<InsightsReminder, s> f28195d;

    /* renamed from: e.a.c.a.m.b.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/b/g$a.class */
    public static final class C9264a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final C9088y1 f28196a;

        /* renamed from: b */
        public final C10720a f28197b;

        /* renamed from: c */
        public final AbstractC10442e<AbstractC10443f.C10444a> f28198c;

        /* renamed from: d */
        public final l<InsightsReminder, s> f28199d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C9264a(C9088y1 c9088y1, C10720a c10720a, AbstractC10442e<AbstractC10443f.C10444a> abstractC10442e, l<? super InsightsReminder, s> lVar) {
            super(c9088y1.f27734a);
            s1.z.c.l.e(c9088y1, "binding");
            s1.z.c.l.e(c10720a, "actionHandler");
            s1.z.c.l.e(abstractC10442e, "deepLinkFactory");
            s1.z.c.l.e(lVar, "clickListener");
            this.f28196a = c9088y1;
            this.f28197b = c10720a;
            this.f28198c = abstractC10442e;
            this.f28199d = lVar;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C9263g(C10720a c10720a, AbstractC10442e<AbstractC10443f.C10444a> abstractC10442e, l<? super InsightsReminder, s> lVar) {
        s1.z.c.l.e(c10720a, "actionHandler");
        s1.z.c.l.e(abstractC10442e, "deepLinkFactory");
        s1.z.c.l.e(lVar, "clickListener");
        this.f28193b = c10720a;
        this.f28194c = abstractC10442e;
        this.f28195d = lVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f28192a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C9264a c9264a, int i) {
        String str;
        StringBuilder sb;
        String str2;
        StringBuilder sb2;
        String str3;
        C9264a c9264a2 = c9264a;
        s1.z.c.l.e(c9264a2, "holder");
        InsightsReminder insightsReminder = this.f28192a.get(i);
        s1.z.c.l.e(insightsReminder, "reminder");
        C9088y1 c9088y1 = c9264a2.f28196a;
        BillReminderMeta billReminderMeta = (BillReminderMeta) new k().f(insightsReminder.getMetaJsonString(), BillReminderMeta.class);
        DateFormat dateFormat = DateFormat.yyyy_MM_dd_HH_mm_ss;
        String f = dateFormat.formatter().f(new b(insightsReminder.getDueDate().getTime()));
        String f2 = dateFormat.formatter().f(new b(insightsReminder.getGeneratedDate().getTime()));
        h r = h.r(new b(insightsReminder.getGeneratedDate().getTime()).L(), new b().L());
        s1.z.c.l.d(r, "Days.daysBetween(DateTim…Time.now().toLocalDate())");
        int i2 = ((i) r).a;
        TextView textView = c9088y1.f27736c;
        s1.z.c.l.d(textView, "billerName");
        textView.setText(insightsReminder.getVendorName());
        TextView textView2 = c9088y1.f27735b;
        s1.z.c.l.d(textView2, "accountId");
        textView2.setText(billReminderMeta.getAccountNumber());
        TextView textView3 = c9088y1.f27740g;
        s1.z.c.l.d(textView3, "dueAmt");
        textView3.setText(String.valueOf(billReminderMeta.getBillAmount()));
        TextView textView4 = c9088y1.f27741h;
        s1.z.c.l.d(textView4, "dueDate");
        textView4.setText(f);
        TextView textView5 = c9088y1.f27742i;
        s1.z.c.l.d(textView5, "genDate");
        textView5.setText(f2);
        TextView textView6 = c9088y1.f27738e;
        s1.z.c.l.d(textView6, "datesUtil");
        textView6.setText(String.valueOf(i2));
        int timesNotified = insightsReminder.getTimesNotified();
        View view = c9264a2.itemView;
        s1.z.c.l.d(view, "itemView");
        Context context = view.getContext();
        if (insightsReminder.getPendingNotification()) {
            TextView textView7 = c9088y1.f27743j;
            int i3 = C4078R.color.amountRed;
            Object obj = C26467a.f74235a;
            textView7.setBackgroundColor(C26467a.C26471d.m1787a(context, i3));
            if (insightsReminder.getDismissed()) {
                sb2 = new StringBuilder();
                str3 = "PEN<>DIS<>";
            } else {
                sb2 = new StringBuilder();
                str3 = "PEN<>UN-DIS<>";
            }
            sb2.append(str3);
            sb2.append(timesNotified);
            str = sb2.toString();
        } else {
            TextView textView8 = c9088y1.f27743j;
            int i4 = C4078R.color.amountGreen;
            Object obj2 = C26467a.f74235a;
            textView8.setBackgroundColor(C26467a.C26471d.m1787a(context, i4));
            if (insightsReminder.getDismissed()) {
                sb = new StringBuilder();
                str2 = "NOTI<>DIS<>";
            } else {
                sb = new StringBuilder();
                str2 = "NOTIFIED<>UN-DIS<>";
            }
            sb.append(str2);
            sb.append(timesNotified);
            str = sb.toString();
        }
        TextView textView9 = c9088y1.f27743j;
        s1.z.c.l.d(textView9, "notified");
        textView9.setText(str);
        l<? super String, s> c9262f = new C9262f(c9088y1);
        BillReminderMeta m26017T1 = C10480a.m26017T1(insightsReminder.getMetaJsonString());
        if (m26017T1 != null) {
            C10748g c10748g = new C10748g(m26017T1, insightsReminder.getUniqueRefId(), AbstractC10738e.C10739a.f31897c, 1);
            Double billAmount = c10748g.f31935a.getBillAmount();
            AbstractC10443f.C10444a mo26130c = c9264a2.f28198c.mo26130c(c10748g.f31935a.getVendorName(), billAmount != null ? (float) billAmount.doubleValue() : 0.0f, c10748g.f31935a.getAccountNumber(), C10480a.m25925n0(c10748g));
            C10720a c10720a = c9264a2.f28197b;
            Objects.requireNonNull(c10720a);
            s1.z.c.l.e(c9262f, "dlCallback");
            if (mo26130c != null) {
                c10720a.f31874a.mo26135a(mo26130c, c9262f);
            }
        } else {
            c9262f.m27771d(null);
        }
        c9088y1.f27737d.setOnClickListener(new View$OnClickListenerC9261e(c9264a2, insightsReminder));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C9264a onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        s1.z.c.l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4078R.layout.qa_reminder_item, viewGroup, false);
        int i2 = C4078R.C4080id.accountId;
        TextView textView = (TextView) inflate.findViewById(i2);
        if (textView != null) {
            i2 = C4078R.C4080id.billerName;
            TextView textView2 = (TextView) inflate.findViewById(i2);
            if (textView2 != null) {
                i2 = C4078R.C4080id.button;
                Button button = (Button) inflate.findViewById(i2);
                if (button != null) {
                    i2 = C4078R.C4080id.datesUtil;
                    TextView textView3 = (TextView) inflate.findViewById(i2);
                    if (textView3 != null) {
                        i2 = C4078R.C4080id.deepLink;
                        TextView textView4 = (TextView) inflate.findViewById(i2);
                        if (textView4 != null) {
                            i2 = C4078R.C4080id.dueAmt;
                            TextView textView5 = (TextView) inflate.findViewById(i2);
                            if (textView5 != null) {
                                i2 = C4078R.C4080id.dueDate;
                                TextView textView6 = (TextView) inflate.findViewById(i2);
                                if (textView6 != null) {
                                    i2 = C4078R.C4080id.genDate;
                                    TextView textView7 = (TextView) inflate.findViewById(i2);
                                    if (textView7 != null) {
                                        i2 = C4078R.C4080id.notified;
                                        TextView textView8 = (TextView) inflate.findViewById(i2);
                                        if (textView8 != null) {
                                            C9088y1 c9088y1 = new C9088y1((ConstraintLayout) inflate, textView, textView2, button, textView3, textView4, textView5, textView6, textView7, textView8);
                                            s1.z.c.l.d(c9088y1, "QaReminderItemBinding.in….context), parent, false)");
                                            return new C9264a(c9088y1, this.f28193b, this.f28194c, this.f28195d);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
