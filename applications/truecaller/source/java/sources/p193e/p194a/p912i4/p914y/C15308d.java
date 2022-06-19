package p193e.p194a.p912i4.p914y;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import com.truecaller.ads.AdLayoutTypeX;
import com.truecaller.ads.CustomTemplate;
import com.truecaller.network.notification.NotificationType;
import com.truecaller.notifications.internal.InternalTruecallerNotification;
import com.truecaller.p183ui.SingleActivity;
import com.truecaller.p183ui.WizardActivity;
import com.truecaller.wizard.framework.WizardStartContext;
import e.a.r.t.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.TreeSet;
import n3.r.a.l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p682e.AbstractC13258g1;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p905t.AbstractC15231e;
import p193e.p194a.p852i.p905t.C15226a;
import p193e.p194a.p852i.p905t.C15230d;
import p193e.p194a.p852i.p905t.C15232f;
import p193e.p194a.p937j4.p939b.p940a.C15569f;
/* renamed from: e.a.i4.y.d */
/* loaded from: classes11-dex2jar.jar:e/a/i4/y/d.class */
public class C15308d extends AbstractC13258g1 {

    /* renamed from: j */
    public static final /* synthetic */ int f43559j = 0;

    /* renamed from: e */
    public RecyclerView f43560e;

    /* renamed from: f */
    public C15309e f43561f;

    /* renamed from: g */
    public C15226a f43562g;

    /* renamed from: h */
    public AbstractC15231e f43563h;

    /* renamed from: i */
    public C15569f f43564i;

    /* renamed from: cB */
    public static Intent m18942cB(Context context) {
        return SingleActivity.m34590va(context, SingleActivity.FragmentSingle.NOTIFICATIONS, false);
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    /* renamed from: PA */
    public void mo10110PA() {
        this.f43564i = null;
    }

    /* renamed from: dB */
    public final void m18941dB() {
        if (getActivity() == null || mo18684li()) {
            return;
        }
        Collection<InternalTruecallerNotification> m18666n = this.f43564i.m18666n();
        C15309e c15309e = this.f43561f;
        Objects.requireNonNull(c15309e);
        c15309e.f43565b = new ArrayList(m18666n);
        c15309e.notifyDataSetChanged();
        m18940eB();
        Iterator it = ((TreeSet) m18666n).iterator();
        while (it.hasNext()) {
            if (((InternalTruecallerNotification) it.next()).m34842q() == NotificationType.DEFAULT_SMS_PROMO) {
                C12864a2.m22582L("Dsan2-View");
                return;
            }
        }
    }

    /* renamed from: eB */
    public void m18940eB() {
        C15309e c15309e = this.f43561f;
        boolean z = c15309e == null || c15309e.getItemCount() == 0;
        C19045j0.m14194v(m21977WA(), z, true);
        C19045j0.m14194v(mo10108YA(), z, true);
    }

    public void onAttach(Context context) {
        C15308d.super.onAttach(context);
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        l activity = getActivity();
        AbstractApplicationC8442a abstractApplicationC8442a = (AbstractApplicationC8442a) activity.getApplicationContext();
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) abstractApplicationC8442a).mo10154s();
        if (!abstractApplicationC8442a.mo28540W() || !c.ya()) {
            c.Ca(activity, WizardActivity.class, "widget", WizardStartContext.NOTIFICATIONS_VIEW);
            activity.overridePendingTransition(0, 0);
            activity.finish();
            return;
        }
        this.f43561f = new C15309e(getActivity(), C17891a1.C17902k.m15658M1(this));
        C15222s.C15223a m19043a = C15222s.m19043a(mo10154s.mo12430c4().m19081a("notificationAdUnitId"), null, "NOTIFICATIONS", mo10154s.mo11648b());
        m19043a.f43331i = "notificationsList";
        m19043a.f43338p = 0;
        m19043a.m19037f(CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER);
        m19043a.f43327e = 0;
        m19043a.f43333k = true;
        m19043a.f43334l = true;
        m19043a.f43335m = true;
        m19043a.f43336n = false;
        C15222s c15222s = new C15222s(m19043a);
        C15232f c15232f = new C15232f(mo10154s.mo12356h7(), c15222s, mo10154s.mo12378g());
        this.f43563h = c15232f;
        this.f43562g = new C15226a(this.f43561f, AdLayoutTypeX.MEGA_VIDEO, new C15230d(2), c15232f);
        this.f43564i = new C15569f(activity);
        C22128a.m8596m1().mo13274b(C19597a.m13114b("notificationsList"));
        mo10154s.mo12356h7().m19083m(c15222s, null);
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        if (m21921SA()) {
            menuInflater.inflate(C2752R.C2756menu.notifications_menu, menu);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        setHasOptionsMenu(true);
        View inflate = layoutInflater.inflate(C2752R.layout.view_notifications, viewGroup, false);
        this.f43560e = (RecyclerView) inflate.findViewById(2131365378);
        return inflate;
    }

    public void onDestroy() {
        C15308d.super.onDestroy();
        AbstractC15231e abstractC15231e = this.f43563h;
        if (abstractC15231e != null) {
            abstractC15231e.mo19026a();
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (C15308d.super.onOptionsItemSelected(menuItem)) {
            return true;
        }
        int itemId = menuItem.getItemId();
        if (itemId == 2131362009) {
            m21972f(true);
            new AsyncTaskC15307c(this);
            return true;
        } else if (itemId == 2131361985) {
            C15569f c15569f = this.f43564i;
            c15569f.m18664p(c15569f.m18622e(), InternalTruecallerNotification.NotificationState.VIEWED);
            this.f43561f.notifyDataSetChanged();
            return true;
        } else if (itemId != 2131361986) {
            return false;
        } else {
            C15569f c15569f2 = this.f43564i;
            c15569f2.m18664p(c15569f2.m18622e(), InternalTruecallerNotification.NotificationState.NEW);
            this.f43561f.notifyDataSetChanged();
            return true;
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onResume() {
        super.onResume();
        if (this.f43561f != null) {
            m18941dB();
        }
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.f43561f == null) {
            return;
        }
        getActivity().setTitle(C2752R.string.TabBarMessages);
        m21973bB(getString((int) C2752R.string.NotificationsListEmpty), null, C2752R.attr.notificationsEmptyListImage);
        m18940eB();
        this.f43560e.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f43561f.registerAdapterDataObserver(new C15306b(this));
        this.f43561f.f38359a = new AbstractC13209t.AbstractC13210a() { // from class: e.a.i4.y.a
            @Override // p193e.p194a.p682e.p699c2.AbstractC13209t.AbstractC13210a
            /* renamed from: a */
            public final void mo10041a(int i, long j) {
                C15308d c15308d = C15308d.this;
                InternalTruecallerNotification internalTruecallerNotification = c15308d.f43561f.f43565b.get(i);
                if (internalTruecallerNotification != null) {
                    Intent m34590va = SingleActivity.m34590va(c15308d.getActivity(), SingleActivity.FragmentSingle.NOTIFICATION_MESSAGES, false);
                    m34590va.putExtra("arg_notification", internalTruecallerNotification.mo18609a().toString());
                    c15308d.startActivity(m34590va);
                }
                C15569f c15569f = c15308d.f43564i;
                Objects.requireNonNull(c15569f);
                c15569f.m18664p(Arrays.asList(internalTruecallerNotification), InternalTruecallerNotification.NotificationState.VIEWED);
                c15308d.f43561f.notifyItemChanged(i);
                if (internalTruecallerNotification.m34842q() == NotificationType.DEFAULT_SMS_PROMO) {
                    C12864a2.m22582L("Dsan3-VisitNotification");
                }
            }
        };
        this.f43560e.setAdapter(this.f43562g);
    }
}
