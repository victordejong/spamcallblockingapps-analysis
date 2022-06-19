package p193e.p194a.p437c.p438a.p480j.p483c;

import android.net.Uri;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.card.MaterialCardView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.insights.p168ui.C4078R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import p1727n3.p1744b0.p1745a.AbstractC25615p;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p419m.p422c.AbstractC8511a;
import p193e.p194a.p437c.p438a.p477g.C9069s0;
import p193e.p194a.p437c.p438a.p480j.p482b.C9141j;
import q3.a.p1;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.u.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.j.c.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/f.class */
public final class C9147f extends AbstractC25615p<C9141j, C9152j> {

    /* renamed from: a */
    public p<? super C9141j, ? super Boolean, s> f27857a;

    /* renamed from: b */
    public final Set<Integer> f27858b = new LinkedHashSet();

    /* renamed from: c */
    public final AbstractC8511a f27859c;

    /* renamed from: e.a.c.a.j.c.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/j/c/f$a.class */
    public static final class RunnableC9148a implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ List f27861b;

        public RunnableC9148a(List list) {
            C9147f.this = r4;
            this.f27861b = list;
        }

        @Override // java.lang.Runnable
        public final void run() {
            s1.u.s sVar;
            List list = this.f27861b;
            if (list != null) {
                s1.u.s arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (true) {
                    sVar = arrayList;
                    if (!it.hasNext()) {
                        break;
                    }
                    C9141j c9141j = (C9141j) it.next();
                    Integer valueOf = c9141j.f27852e ? Integer.valueOf(c9141j.hashCode()) : null;
                    if (valueOf != null) {
                        arrayList.add(valueOf);
                    }
                }
            } else {
                sVar = s1.u.s.a;
            }
            C9147f.this.f27858b.clear();
            C9147f.this.f27858b.addAll(sVar);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9147f(AbstractC8511a abstractC8511a) {
        super(new C9146e());
        l.e(abstractC8511a, "addressProfileLoader");
        this.f27859c = abstractC8511a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        C9152j c9152j = (C9152j) abstractC0313c0;
        l.e(c9152j, "holder");
        C9141j item = getItem(i);
        l.d(item, "getItem(position)");
        C9141j c9141j = item;
        Set<Integer> set = this.f27858b;
        p<? super C9141j, ? super Boolean, s> pVar = this.f27857a;
        l.e(c9141j, "filterItem");
        l.e(set, "selectedSenders");
        p1 p1Var = c9152j.f27871a;
        if (p1Var != null) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        C8243a c8243a = new C8243a(new C19235i0(C22128a.m8700J(c9152j.itemView, "itemView", "itemView.context")));
        String str = (String) i.A(c9141j.f27850c.f31256b);
        Uri uri = Uri.EMPTY;
        l.d(uri, "Uri.EMPTY");
        l.e("", AnalyticsConstants.NAME);
        l.e(str, "identifier");
        l.e(uri, RemoteMessageConst.Notification.ICON);
        l.e(str, "identifier");
        l.e("", AnalyticsConstants.NAME);
        l.e(uri, RemoteMessageConst.Notification.ICON);
        C8243a.m28739ok(c8243a, new AvatarXConfig(uri, str, null, null, false, false, true, false, false, false, false, false, false, false, null, false, 65468), false, 2, null);
        C9069s0 c9069s0 = c9152j.f27872b;
        TextView textView = c9069s0.f27673e;
        l.d(textView, "senderText");
        textView.setText(c9141j.f27851d);
        c9069s0.f27672d.setPresenter(c8243a);
        c9069s0.f27671c.setOnCheckedChangeListener(null);
        CheckBox checkBox = c9069s0.f27671c;
        l.d(checkBox, "senderCheck");
        checkBox.setChecked(set.contains(Integer.valueOf(c9141j.hashCode())));
        c8243a.m28738pk(true);
        c9152j.f27871a = c9152j.f27873c.mo28429Iz((String) i.A(c9141j.f27850c.f31256b), new C9149g(c9069s0, c9152j, c9141j, c8243a, set, pVar));
        c9069s0.f27670b.setOnClickListener(new View$OnClickListenerC9151i(c9069s0));
        c9069s0.f27671c.setOnCheckedChangeListener(new C9150h(c9152j, c9141j, c8243a, set, pVar));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        l.e(viewGroup, "parent");
        MaterialCardView inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4078R.layout.item_sender_filter, viewGroup, false);
        int i2 = C4078R.C4080id.main;
        ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(i2);
        if (constraintLayout != null) {
            i2 = C4078R.C4080id.senderCheck;
            CheckBox checkBox = (CheckBox) inflate.findViewById(i2);
            if (checkBox != null) {
                i2 = C4078R.C4080id.senderIcon;
                AvatarXView avatarXView = (AvatarXView) inflate.findViewById(i2);
                if (avatarXView != null) {
                    i2 = C4078R.C4080id.senderText;
                    TextView textView = (TextView) inflate.findViewById(i2);
                    if (textView != null) {
                        C9069s0 c9069s0 = new C9069s0(inflate, constraintLayout, checkBox, avatarXView, textView);
                        l.d(c9069s0, "ItemSenderFilterBinding\n….context), parent, false)");
                        return new C9152j(c9069s0, this.f27859c);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25615p
    public void submitList(List<C9141j> list) {
        super.submitList(list, new RunnableC9148a(list));
    }
}
