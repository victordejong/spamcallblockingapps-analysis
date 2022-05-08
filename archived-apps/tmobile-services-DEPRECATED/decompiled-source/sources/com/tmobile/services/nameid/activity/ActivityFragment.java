package com.tmobile.services.nameid.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.tabs.TabLayout;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.activity.ActivityPresenter;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerDetailsData;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.ActivityRealm;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.UIAnalyticConfigurator;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.CallLogHelper;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.Feature;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PermissionChecker;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.RecyclerViewClickListener;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import io.realm.OrderedRealmCollectionImpl;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityFragment.class */
public class ActivityFragment extends Fragment implements TabFragmentInterface {
    @Nullable

    /* renamed from: B */
    private RealmResults<Caller> f13054B;

    /* renamed from: f */
    private ActivityRecyclerViewAdapter f13055f;

    /* renamed from: g */
    private MessageActivityRecyclerViewAdapter f13056g;

    /* renamed from: h */
    RecyclerView f13057h;

    /* renamed from: i */
    LinearLayout f13058i;

    /* renamed from: j */
    LinearLayout f13059j;

    /* renamed from: k */
    TabLayout f13060k;

    /* renamed from: l */
    LinearLayout f13061l;

    /* renamed from: m */
    SwipeRefreshLayout f13062m;

    /* renamed from: n */
    private ActivityPresenter f13063n;

    /* renamed from: o */
    private Dialog f13064o;
    @Nullable

    /* renamed from: q */
    private RealmResults<TmoUserStatus> f13066q;
    @Nullable

    /* renamed from: r */
    private RealmResults<LicenseResponseItem> f13067r;
    @Nullable

    /* renamed from: s */
    private Realm f13068s;

    /* renamed from: t */
    private LinearLayoutManager f13069t;

    /* renamed from: u */
    private ActivityType f13070u;

    /* renamed from: p */
    private boolean f13065p = false;

    /* renamed from: v */
    private RecyclerView.AdapterDataObserver f13071v = new RecyclerView.AdapterDataObserver() { // from class: com.tmobile.services.nameid.activity.ActivityFragment.1
        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        /* renamed from: a */
        public void mo7065a() {
            super.mo7065a();
            ActivityFragment.this.f13063n.m7047n(ActivityFragment.this.m7125R0());
        }
    };

    /* renamed from: w */
    private boolean f13072w = false;

    /* renamed from: x */
    View.OnClickListener f13073x = new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.t
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ActivityFragment.this.m7074s1(view);
        }
    };

    /* renamed from: y */
    View.OnClickListener f13074y = new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.d
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ActivityFragment.this.m7073t1(view);
        }
    };

    /* renamed from: z */
    private ViewTreeObserver.OnGlobalLayoutListener f13075z = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.tmobile.services.nameid.activity.c
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            ActivityFragment.this.m7072u1();
        }
    };

    /* renamed from: A */
    private ContactListener f13053A = new ContactListener();

    /* renamed from: com.tmobile.services.nameid.activity.ActivityFragment$3 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityFragment$3.class */
    static /* synthetic */ class C16233 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13078a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13079b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:4:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:20:0x0028). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[ActivityPresenter.MessageFilterType.values().length];
            f13079b = iArr;
            try {
                iArr[ActivityPresenter.MessageFilterType.BLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            int[] iArr2 = new int[ActivityPresenter.CallFilterType.values().length];
            f13078a = iArr2;
            try {
                iArr2[ActivityPresenter.CallFilterType.BLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13078a[ActivityPresenter.CallFilterType.VOICEMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13078a[ActivityPresenter.CallFilterType.APPROVED.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityFragment$ActivityFilterClickListener.class */
    class ActivityFilterClickListener implements MainActivity.ToolbarHomeClickListener {
        ActivityFilterClickListener() {
        }

        @Override // com.tmobile.services.nameid.MainActivity.ToolbarHomeClickListener
        /* renamed from: a */
        public void mo7063a() {
            ActivityFragment.this.f13063n.m7037x();
            AnalyticsWrapper.m5865o("Tap", "Activity Filter Menu");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityFragment$ActivityType.class */
    public enum ActivityType {
        CALLS(0),
        MESSAGES(1);
        
        private final int value;

        ActivityType(int i) {
            this.value = i;
        }

        public static ActivityType from(int i) {
            return values()[i];
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityFragment$ActivityTypeTabListener.class */
    private class ActivityTypeTabListener implements TabLayout.OnTabSelectedListener {
        private ActivityTypeTabListener() {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: N */
        public void mo6558N(TabLayout.Tab tab) {
            ActivityFragment.this.m7082m2();
            ActivityFragment.this.m7078o2();
            ActivityFragment.this.f13063n.m7055f();
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: t */
        public void mo6544t(TabLayout.Tab tab) {
            if (ActivityFragment.this.f13070u == null) {
                ActivityFragment.this.m7082m2();
            }
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        /* renamed from: u0 */
        public void mo6543u0(TabLayout.Tab tab) {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityFragment$ContactListener.class */
    private class ContactListener extends ContactLookup.ContactUpdateListener {
        private ContactListener() {
        }

        @Override // com.tmobile.services.nameid.utility.ContactLookup.ContactUpdateListener
        /* renamed from: b */
        public void mo5819b() {
            if (ActivityFragment.this.f13055f != null) {
                ActivityFragment.this.f13055f.notifyDataSetChanged();
            }
            if (ActivityFragment.this.f13056g != null) {
                ActivityFragment.this.f13056g.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A1 */
    public static /* synthetic */ void m7153A1(Throwable th) throws Exception {
        LogUtil.m5632o("ActivityFragment#", "Update call log failed - will retry again next time");
        PreferenceUtils.m5386k("PREF_AIRPLANE_MODE_TOGGLED", true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C1 */
    public static /* synthetic */ void m7151C1(Throwable th) throws Exception {
        LogUtil.m5632o("ActivityFragment#", "Update event summary failed - will retry again next time");
        PreferenceUtils.m5386k("PREF_AIRPLANE_MODE_TOGGLED", true);
    }

    /* renamed from: J1 */
    private void m7140J1(boolean z) {
        this.f13055f.m7028j(z);
        PreferenceUtils.m5386k("PREF_REACHED_LAST_CALL_ITEM", z);
        this.f13063n.m7042s(z);
        this.f13055f.notifyDataSetChanged();
    }

    /* renamed from: K1 */
    private void m7138K1(boolean z) {
        this.f13056g.m6903g(z);
        LogUtil.m5643d("ActivityFragment#notifyNoMoreMessageItems", "All event summary items retrieved from backend? Setting flag to " + z);
        PreferenceUtils.m5386k("PREF_EVENT_SUMMARY_RETRIEVED_ALL_ITEMS", z);
        this.f13063n.m7041t(z);
        this.f13056g.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N1 */
    public void m7132N1(RealmResults<TmoUserStatus> realmResults) {
        if (!realmResults.isEmpty()) {
            TmoUserStatus.SubscriptionType.fromTypeLetter(realmResults.get(0).getTypeLetter());
            if (Feature.NUMBER_LOOKUP.isOwned() && BuildUtils.m5851c()) {
                m7130O1();
            }
            this.f13055f.notifyDataSetChanged();
        }
    }

    /* renamed from: O0 */
    private void m7131O0() {
        this.f13055f.registerAdapterDataObserver(this.f13071v);
        this.f13056g.registerAdapterDataObserver(this.f13071v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R0 */
    public boolean m7125R0() {
        RecyclerView.Adapter adapter = this.f13057h.getAdapter();
        LogUtil.m5639h("ActivityFragment#", "recyclerViewActivity is currently using " + adapter.getClass().getSimpleName() + " as its adapter.");
        boolean z = true;
        if (adapter.getItemCount() <= 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: R1 */
    private void m7124R1() {
        this.f13055f.m7031g(CallLogHelper.m5830m());
        this.f13055f.m7028j(PreferenceUtils.m5395b("PREF_REACHED_LAST_CALL_ITEM", false));
        this.f13055f.notifyDataSetChanged();
    }

    /* renamed from: S1 */
    private void m7122S1() {
        this.f13057h.getViewTreeObserver().removeOnGlobalLayoutListener(this.f13075z);
    }

    /* renamed from: U0 */
    private ActivityRecyclerViewAdapter m7119U0() {
        return new ActivityRecyclerViewAdapter(new RecyclerViewClickListener() { // from class: com.tmobile.services.nameid.activity.l
            @Override // com.tmobile.services.nameid.utility.RecyclerViewClickListener
            /* renamed from: a */
            public final void mo5380a(int i) {
                ActivityFragment.this.m7079o1(i);
            }
        });
    }

    /* renamed from: W0 */
    private int m7115W0() {
        return this.f13060k.getSelectedTabPosition();
    }

    /* renamed from: Y0 */
    private List<EventSummaryItem> m7111Y0() {
        Realm realm = this.f13068s;
        if (realm == null || realm.isClosed()) {
            return new ArrayList();
        }
        RealmQuery Q0 = this.f13068s.m3053Q0(EventSummaryItem.class);
        Q0.m2914I("messageCountReceived", 0);
        Q0.m2903T();
        Q0.m2914I("messageCountBlocked", 0);
        return Q0.m2918E();
    }

    /* renamed from: Z0 */
    private MessageActivityRecyclerViewAdapter m7109Z0() {
        return new MessageActivityRecyclerViewAdapter(new RecyclerViewClickListener() { // from class: com.tmobile.services.nameid.activity.p
            @Override // com.tmobile.services.nameid.utility.RecyclerViewClickListener
            /* renamed from: a */
            public final void mo5380a(int i) {
                ActivityFragment.this.m7077p1(i);
            }
        });
    }

    /* renamed from: Z1 */
    private void m7108Z1() {
        ViewGroup l = UIAnalyticConfigurator.m6240l(this.f13060k);
        if (l != null) {
            UIAnalyticConfigurator.m6238n(l, ActivityType.CALLS.value, "Calls Tab");
            UIAnalyticConfigurator.m6238n(l, ActivityType.MESSAGES.value, "Messages Tab");
        }
    }

    /* renamed from: a2 */
    private void m7106a2() {
        if (this.f13070u != ActivityType.MESSAGES || !this.f13063n.m7038w()) {
            this.f13061l.setVisibility(8);
        } else {
            this.f13061l.setVisibility(0);
        }
    }

    @Nullable
    /* renamed from: b1 */
    private ActivityItem m7105b1(Date date) {
        Realm realm = this.f13068s;
        if (realm == null) {
            return null;
        }
        RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
        Q0.m2907P("date", date);
        OrderedRealmCollectionImpl r = Q0.m2918E().m3090r("date");
        if (r.size() >= 50) {
            return (ActivityItem) r.get(0);
        }
        return null;
    }

    /* renamed from: b2 */
    private void m7104b2() {
        this.f13062m.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.tmobile.services.nameid.activity.g
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            /* renamed from: a */
            public final void mo6900a() {
                ActivityFragment.this.m7144H1();
            }
        });
        this.f13062m.setColorSchemeResources(2131034197);
    }

    /* renamed from: f2 */
    private void m7096f2() {
        if ((getContext() instanceof AppCompatActivity) && !((Activity) getContext()).isFinishing()) {
            this.f13064o.show();
        }
    }

    /* renamed from: i1 */
    private void m7091i1() {
        m7122S1();
        this.f13057h.getViewTreeObserver().addOnGlobalLayoutListener(this.f13075z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m2 */
    public void m7082m2() {
        m7116V1(ActivityType.from(m7115W0()));
        m7106a2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o2 */
    public void m7078o2() {
        if (m7115W0() == ActivityType.MESSAGES.value) {
            this.f13057h.setAdapter(this.f13056g);
        } else {
            this.f13057h.setAdapter(this.f13055f);
        }
    }

    /* renamed from: B1 */
    public /* synthetic */ void m7152B1(List list) throws Exception {
        LogUtil.m5632o("ActivityFragment#", "Successfully updated call log");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            EventSummaryItem eventSummaryItem = (EventSummaryItem) it.next();
            if (eventSummaryItem.hasMessageData()) {
                arrayList.add(eventSummaryItem.copy());
            }
        }
        m7126Q1(arrayList);
    }

    /* renamed from: D1 */
    public /* synthetic */ void m7150D1(List list) throws Exception {
        LogUtil.m5632o("ActivityFragment#", "Successfully updated call log");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ApiUtils.ActivityFromCaller activityFromCaller = (ApiUtils.ActivityFromCaller) it.next();
            arrayList.add(activityFromCaller.m6819b().copy());
            EventManager.m5722d(getContext(), activityFromCaller.m6819b().copy());
        }
        if (arrayList.size() > 0) {
            m7130O1();
        }
        m7128P1(arrayList);
    }

    /* renamed from: E1 */
    public /* synthetic */ void m7149E1(RealmResults realmResults) {
        ActivityRecyclerViewAdapter activityRecyclerViewAdapter = this.f13055f;
        if (activityRecyclerViewAdapter != null) {
            activityRecyclerViewAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.ACTIVITY;
    }

    /* renamed from: F1 */
    public /* synthetic */ void m7148F1(List list) throws Exception {
        this.f13055f.m7031g(list);
        this.f13055f.notifyDataSetChanged();
        this.f13063n.m7058c();
    }

    /* renamed from: H1 */
    public /* synthetic */ void m7144H1() {
        if (WidgetUtils.m5241c0(getActivity(), getChildFragmentManager())) {
            this.f13062m.setRefreshing(false);
            return;
        }
        AnalyticsWrapper.m5883E("ActivityFragment", "pull_to_refresh");
        LogUtil.m5632o("ActivityFragment#setupPullToRefresh#onSuccess", "Loading activity items from cache");
        m7124R1();
        ApiWrapper.m6770j0(new Consumer() { // from class: com.tmobile.services.nameid.activity.n
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ActivityFragment.this.m7071v1((List) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.activity.w
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ActivityFragment.this.m7070w1((Throwable) obj);
            }
        }, false);
        if (this.f13063n.m7036y()) {
            ApiWrapper.m6764m0(new Consumer() { // from class: com.tmobile.services.nameid.activity.y
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ActivityFragment.this.m7069x1((List) obj);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.activity.o
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ActivityFragment.this.m7067y1((Throwable) obj);
                }
            });
        }
    }

    /* renamed from: I1 */
    public boolean m7142I1() {
        if (PreferenceUtils.m5395b("PREF_EVENT_SUMMARY_RETRIEVED_ALL_ITEMS", false)) {
            LogUtil.m5632o("ActivityFragment#", "getting next items, however, we've already retrieved all items from /eventSummary");
            this.f13063n.m7046o();
            return false;
        }
        boolean t = ApiWrapper.m6757t(new Consumer() { // from class: com.tmobile.services.nameid.activity.z
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ActivityFragment.this.m7076q1((List) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.activity.u
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ActivityFragment.this.m7075r1((Throwable) obj);
            }
        });
        if (t) {
            this.f13065p = true;
        } else {
            m7138K1(true);
            m7123S0();
        }
        LogUtil.m5643d("ActivityFragment#messageGetItemsApi", "worked? " + t);
        return t;
    }

    /* renamed from: L1 */
    public void m7136L1() {
        MainApplication.m7553C("in_app_purchase_initialized", new String[]{"source"}, new String[]{"messages_banner"});
        WidgetUtils.m5231h0(getActivity(), getChildFragmentManager(), null, null);
    }

    /* renamed from: M1 */
    public void m7134M1() {
        PermissionChecker.m5420e(getActivity());
    }

    /* renamed from: O1 */
    public void m7130O1() {
        LogUtil.m5643d("ActivityFragment#performBulkLookupIfNeeded", "Checking if bulk lookup is necessary");
        Single.m4468f(CallableC1663r.f13206f).m4463l(Schedulers.m3239b());
    }

    /* renamed from: P0 */
    public void m7129P0(List<ActivityItem> list, boolean z) {
        if (z) {
            this.f13055f.m7035c(list);
        }
        LogUtil.m5643d("ActivityFragment#appendActivityItems", "appending " + list.size() + " to " + this.f13055f.getItemCount());
        m7140J1(list.isEmpty());
    }

    /* renamed from: P1 */
    public void m7128P1(List<ActivityItem> list) {
        LogUtil.m5643d("ActivityFragment#prependActivityItems", "prepending " + list.size());
        this.f13055f.m7032f(list);
        this.f13055f.notifyDataSetChanged();
    }

    /* renamed from: Q0 */
    public boolean m7127Q0() {
        if (PreferenceUtils.m5395b("PREF_CALL_LOG_RETRIEVED_ALL_ITEMS", false)) {
            LogUtil.m5632o("ActivityFragment#", "getting next items, however, we've already retrieved all items from /calllog");
            this.f13063n.m7046o();
            return false;
        }
        Long valueOf = Long.valueOf(PreferenceUtils.m5393d("PREF_CALL_LOG_LAST_DISPLAYED_DATE"));
        ActivityItem b1 = m7105b1(new Date(valueOf.longValue()));
        if (valueOf.longValue() == 0 || b1 == null) {
            boolean c = CallLogHelper.m5840c(new Consumer() { // from class: com.tmobile.services.nameid.activity.i
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ActivityFragment.this.m7087k1((List) obj);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.activity.v
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ActivityFragment.this.m7085l1((Throwable) obj);
                }
            });
            if (c) {
                this.f13065p = true;
            } else {
                m7140J1(true);
                m7093h1();
            }
            LogUtil.m5643d("ActivityFragment#callGetItemsApi", "worked?" + c);
            return c;
        }
        LogUtil.m5632o("ActivityFragment#", "getting next items, however, we have 50 items from calllog cached");
        LogUtil.m5632o("ActivityFragment#", "prefetching page upto:" + b1.getDate());
        CallLogHelper.m5831l(b1.getDate(), false);
        this.f13063n.m7046o();
        return false;
    }

    /* renamed from: Q1 */
    public void m7126Q1(List<EventSummaryItem> list) {
        LogUtil.m5643d("ActivityFragment#prependEventSummaryItems", "prepending " + list.size());
        this.f13056g.m6905e(list);
        this.f13056g.notifyDataSetChanged();
    }

    /* renamed from: S0 */
    public void m7123S0() {
        if (this.f13064o != null) {
            LogUtil.m5632o("ActivityFragment#", "dismissing dialog");
            this.f13064o.dismiss();
            return;
        }
        LogUtil.m5632o("ActivityFragment#", "wanted to dismiss dialog but it was null");
    }

    /* renamed from: T0 */
    public List<ActivityItem> m7121T0(ActivityItem.Type type) {
        Realm realm = this.f13068s;
        if (realm == null) {
            return new ArrayList();
        }
        RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
        Q0.m2885q("type", Integer.valueOf(type.getValue()));
        return Q0.m2918E().m3089s("date", Sort.DESCENDING);
    }

    /* renamed from: T1 */
    public void m7120T1() {
        m7116V1(ActivityType.from(PreferenceUtils.m5394c("PREF_LAST_USED_ACTIVITY_TYPE", ActivityType.CALLS.value)));
    }

    /* renamed from: U1 */
    public void m7118U1(ActivityItemFilter activityItemFilter) {
        this.f13055f.m7030h(activityItemFilter);
    }

    /* renamed from: V0 */
    public ActivityType m7117V0() {
        return this.f13070u;
    }

    /* renamed from: V1 */
    public void m7116V1(ActivityType activityType) {
        this.f13070u = activityType;
        PreferenceUtils.m5385l("PREF_LAST_USED_ACTIVITY_TYPE", activityType.value);
    }

    /* renamed from: W1 */
    public void m7114W1(ActivityItem activityItem) {
        Realm realm = this.f13068s;
        if (realm != null) {
            RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
            Q0.m2882t("e164Number", activityItem.getE164Number());
            Q0.m2888n("unread", Boolean.TRUE);
            Iterator<E> it = Q0.m2918E().iterator();
            while (it.hasNext()) {
                ActivityItem activityItem2 = (ActivityItem) it.next();
                if (activityItem2 != null) {
                    ActivityRealm.setItemUnread(activityItem2, false);
                }
                if (activityItem.getE164Number() != null) {
                    this.f13055f.m7029i(activityItem.getE164Number());
                }
            }
        }
    }

    /* renamed from: X0 */
    public List<EventSummaryItem> m7113X0(EventSummaryItem.Type type) {
        Realm realm = this.f13068s;
        if (realm == null || realm.isClosed()) {
            return new ArrayList();
        }
        if (type == EventSummaryItem.Type.BLOCKED) {
            RealmQuery Q0 = this.f13068s.m3053Q0(EventSummaryItem.class);
            Q0.m2914I("messageCountBlocked", 0);
            return Q0.m2918E().m3089s("date", Sort.DESCENDING);
        }
        RealmQuery Q02 = this.f13068s.m3053Q0(EventSummaryItem.class);
        Q02.m2914I("messageCountReceived", 0);
        Q02.m2903T();
        Q02.m2914I("messageCountBlocked", 0);
        return Q02.m2918E().m3089s("date", Sort.DESCENDING);
    }

    /* renamed from: X1 */
    public void m7112X1(ActivityItem activityItem) {
        MainActivity mainActivity = (MainActivity) getContext();
        if (isAdded() && mainActivity != null) {
            mainActivity.m7641F0(activityItem);
        }
    }

    /* renamed from: Y1 */
    public void m7110Y1(@StringRes int i) {
        if (getContext() instanceof MainActivity) {
            MainActivity mainActivity = (MainActivity) getContext();
            if (mainActivity.m7571r(mo6305F0())) {
                mainActivity.m7625N0(i);
            }
        }
    }

    /* renamed from: a1 */
    public void m7107a1(Consumer<List<ActivityItem>> consumer) {
        CallLogHelper.m5841b(consumer);
    }

    /* renamed from: c1 */
    public List<ActivityItem> m7103c1() {
        return CallLogHelper.m5830m();
    }

    /* renamed from: c2 */
    public void m7102c2(TabLayout tabLayout) {
        if (this.f13063n.m7039v()) {
            this.f13060k.setVisibility(0);
            tabLayout.setTabMode(1);
            RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(getContext()).inflate(C1517R.layout.lower_tab_custom_layout, (ViewGroup) tabLayout, false);
            ((TextView) relativeLayout.findViewById(C1517R.C1520id.tab_title)).setText(C1517R.string.activity_type_calls_tab_title);
            relativeLayout.findViewById(C1517R.C1520id.tab_title).setContentDescription(getString(C1517R.string.con_desc_activity_calls_tab));
            RelativeLayout relativeLayout2 = (RelativeLayout) LayoutInflater.from(getContext()).inflate(C1517R.layout.lower_tab_custom_layout, (ViewGroup) tabLayout, false);
            ((TextView) relativeLayout2.findViewById(C1517R.C1520id.tab_title)).setText(C1517R.string.activity_type_messages_tab_title);
            relativeLayout2.findViewById(C1517R.C1520id.tab_title).setContentDescription(getString(C1517R.string.con_desc_activity_messages_tab));
            if (BuildUtils.m5850d()) {
                tabLayout.setSelectedTabIndicatorColor(getResources().getColor(C1517R.C1518color.gold_orange));
            }
            TabLayout.Tab x = tabLayout.m8963x();
            x.m8933o(relativeLayout);
            tabLayout.m8983d(x);
            TabLayout.Tab x2 = tabLayout.m8963x();
            x2.m8933o(relativeLayout2);
            tabLayout.m8983d(x2);
            return;
        }
        this.f13060k.setVisibility(8);
    }

    /* renamed from: d1 */
    public void m7101d1(@Nullable CallerDetailsData callerDetailsData) {
        if (callerDetailsData != null) {
            Caller caller = callerDetailsData.getCaller();
            ((MainActivity) getContext()).m7646D(false, caller != null ? caller.getId() : "");
        }
    }

    /* renamed from: d2 */
    public boolean m7100d2() {
        return true;
    }

    /* renamed from: e1 */
    public void m7099e1() {
        this.f13058i.setVisibility(8);
        this.f13059j.setVisibility(8);
        this.f13062m.setVisibility(0);
        this.f13057h.setVisibility(0);
    }

    /* renamed from: e2 */
    public void m7098e2(ActivityPresenter.CallFilterType callFilterType) {
        MainActivity.m7572q0(getString(C1517R.string.con_desc_filter_popup), getContext());
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), C1517R.style.MinimalDialog);
        View inflate = getActivity().getLayoutInflater().inflate(C1517R.layout.filters_dialog_layout, (ViewGroup) null);
        builder.mo9811n(inflate);
        AlertDialog a = builder.mo9823a();
        this.f13064o = a;
        Window window = a.getWindow();
        if (window != null) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(window.getAttributes());
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.gravity = 8388659;
            window.setAttributes(layoutParams);
        }
        NameIDButton nameIDButton = (NameIDButton) inflate.findViewById(C1517R.C1520id.filter_dialog_all_button);
        NameIDButton nameIDButton2 = (NameIDButton) inflate.findViewById(C1517R.C1520id.filter_dialog_blocked_button);
        NameIDButton nameIDButton3 = (NameIDButton) inflate.findViewById(C1517R.C1520id.filter_dialog_voicemail_button);
        NameIDButton nameIDButton4 = (NameIDButton) inflate.findViewById(C1517R.C1520id.filter_dialog_approved_button);
        int i = C16233.f13078a[callFilterType.ordinal()];
        if (i == 1) {
            nameIDButton2.setTextColor(getContext().getResources().getColor(2131034197));
        } else if (i == 2) {
            nameIDButton3.setTextColor(getContext().getResources().getColor(2131034197));
        } else if (i != 3) {
            nameIDButton.setTextColor(getContext().getResources().getColor(2131034197));
        } else {
            nameIDButton4.setTextColor(getContext().getResources().getColor(2131034197));
        }
        nameIDButton.setOnClickListener(this.f13073x);
        nameIDButton2.setOnClickListener(this.f13073x);
        nameIDButton3.setOnClickListener(this.f13073x);
        nameIDButton4.setOnClickListener(this.f13073x);
        LogUtil.m5632o("ActivityFragment#", "Showing filter dialog with " + callFilterType.name() + " selected");
        m7096f2();
    }

    /* renamed from: f1 */
    public void m7097f1() {
        if (this.f13070u == ActivityType.MESSAGES) {
            m7095g1();
        } else {
            m7099e1();
        }
    }

    /* renamed from: g1 */
    public void m7095g1() {
        this.f13058i.setVisibility(8);
        this.f13059j.setVisibility(8);
        this.f13062m.setVisibility(0);
        this.f13057h.setVisibility(0);
    }

    /* renamed from: g2 */
    public void m7094g2(ActivityPresenter.MessageFilterType messageFilterType) {
        MainActivity.m7572q0(getString(C1517R.string.con_desc_filter_popup), getContext());
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), C1517R.style.MinimalDialog);
        View inflate = getActivity().getLayoutInflater().inflate(C1517R.layout.message_filters_dialog_layout, (ViewGroup) null);
        builder.mo9811n(inflate);
        AlertDialog a = builder.mo9823a();
        this.f13064o = a;
        Window window = a.getWindow();
        if (window != null) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(window.getAttributes());
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.gravity = 8388659;
            window.setAttributes(layoutParams);
        }
        NameIDButton nameIDButton = (NameIDButton) inflate.findViewById(C1517R.C1520id.message_filter_dialog_all_button);
        NameIDButton nameIDButton2 = (NameIDButton) inflate.findViewById(C1517R.C1520id.message_filter_dialog_blocked_button);
        if (C16233.f13079b[messageFilterType.ordinal()] != 1) {
            nameIDButton.setTextColor(getContext().getResources().getColor(2131034197));
        } else {
            nameIDButton2.setTextColor(getContext().getResources().getColor(2131034197));
        }
        nameIDButton.setOnClickListener(this.f13074y);
        nameIDButton2.setOnClickListener(this.f13074y);
        LogUtil.m5632o("ActivityFragment#", "Showing filter dialog with " + messageFilterType.name() + " selected");
        m7096f2();
    }

    /* renamed from: h1 */
    public void m7093h1() {
        this.f13062m.setRefreshing(false);
    }

    /* renamed from: h2 */
    public void m7092h2() {
        this.f13058i.setVisibility(0);
        this.f13059j.setVisibility(8);
        this.f13062m.setVisibility(8);
        this.f13057h.setVisibility(8);
    }

    /* renamed from: i2 */
    public void m7090i2() {
        if (this.f13070u == ActivityType.MESSAGES) {
            m7088j2();
        } else {
            m7092h2();
        }
    }

    /* renamed from: j2 */
    public void m7088j2() {
        this.f13058i.setVisibility(8);
        this.f13059j.setVisibility(0);
        this.f13062m.setVisibility(8);
        this.f13057h.setVisibility(8);
    }

    /* renamed from: k1 */
    public /* synthetic */ void m7087k1(List list) throws Exception {
        this.f13063n.m7046o();
        this.f13065p = false;
    }

    /* renamed from: k2 */
    public void m7086k2() {
        this.f13062m.setRefreshing(true);
    }

    /* renamed from: l1 */
    public /* synthetic */ void m7085l1(Throwable th) throws Exception {
        LogUtil.m5641f("ActivityFragment#", "error getting call log", th);
        m7093h1();
        this.f13065p = false;
    }

    /* renamed from: l2 */
    public void m7084l2(List<ActivityItem> list) {
        boolean z = false;
        if (list.isEmpty() || PreferenceUtils.m5395b("PREF_REACHED_LAST_CALL_ITEM", false)) {
            z = true;
        }
        m7140J1(z);
        this.f13055f.m7031g(list);
        this.f13055f.notifyDataSetChanged();
        LogUtil.m5639h("ActivityFragment#updateActivityItems", "setting activity list of size " + list.size());
    }

    /* renamed from: n2 */
    public void m7080n2(List<EventSummaryItem> list) {
        boolean z = false;
        if (list.isEmpty() || PreferenceUtils.m5395b("PREF_EVENT_SUMMARY_RETRIEVED_ALL_ITEMS", false)) {
            z = true;
        }
        m7138K1(z);
        this.f13056g.m6904f(list);
        this.f13056g.notifyDataSetChanged();
        LogUtil.m5639h("ActivityFragment#updateEventSummaryItems", "setting event summary list of size " + list.size());
    }

    /* renamed from: o1 */
    public /* synthetic */ void m7079o1(int i) {
        if (!this.f13055f.m7033e(i)) {
            ActivityItem d = this.f13055f.m7034d(i);
            this.f13072w = true;
            PreferenceUtils.m5385l("PREF_LAST_CLICKED_CALLER_ACTIVITY", this.f13069t.m17630W1());
            if (d != null) {
                this.f13063n.m7054g(d);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5639h("ActivityFragment#onCreate", "start");
        this.f13055f = m7119U0();
        this.f13056g = m7109Z0();
        this.f13063n = new ActivityPresenter(this);
        this.f13072w = false;
        Context context = getContext();
        if (context != null) {
            this.f13068s = ((MainActivity) context).m7593f();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        LogUtil.m5639h("ActivityFragment#createView", "creating view");
        View inflate = layoutInflater.inflate(C1517R.layout.fragment_activity, viewGroup, false);
        this.f13057h = (RecyclerView) inflate.findViewById(C1517R.C1520id.recycler_view_activity);
        this.f13058i = (LinearLayout) inflate.findViewById(C1517R.C1520id.no_items_container);
        this.f13059j = (LinearLayout) inflate.findViewById(C1517R.C1520id.no_message_items_container);
        this.f13060k = (TabLayout) inflate.findViewById(C1517R.C1520id.activity_type_tab_layout);
        this.f13061l = (LinearLayout) inflate.findViewById(C1517R.C1520id.messages_banner);
        this.f13062m = (SwipeRefreshLayout) inflate.findViewById(C1517R.C1520id.activity_pull_to_refresh);
        ((Button) inflate.findViewById(C1517R.C1520id.messages_banner_button)).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ActivityFragment.this.m7066z1(view);
            }
        });
        this.f13069t = new LinearLayoutManager(getContext());
        this.f13057h.setHasFixedSize(true);
        this.f13057h.setLayoutManager(this.f13069t);
        m7131O0();
        m7078o2();
        this.f13057h.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.tmobile.services.nameid.activity.ActivityFragment.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            /* renamed from: b */
            public void mo7064b(RecyclerView recyclerView, int i, int i2) {
                super.mo7064b(recyclerView, i, i2);
                if (i2 > 0) {
                    LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
                    int K = linearLayoutManager.m17441K();
                    int Z = linearLayoutManager.m17420Z();
                    int b2 = linearLayoutManager.m17624b2();
                    if (!ActivityFragment.this.f13065p && K + b2 >= Z) {
                        AnalyticsWrapper.m5883E("ActivityFragment", "scroll_to_load_calls");
                        ActivityFragment.this.f13063n.m7048m();
                    }
                }
            }
        });
        m7091i1();
        m7102c2(this.f13060k);
        this.f13060k.m8984c(new ActivityTypeTabListener());
        m7108Z1();
        m7104b2();
        LogUtil.m5639h("ActivityFragment#createView", "done creating view");
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        m7122S1();
        this.f13055f.unregisterAdapterDataObserver(this.f13071v);
        this.f13056g.unregisterAdapterDataObserver(this.f13071v);
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        LogUtil.m5643d("ActivityFragment#", "onResume");
        m7091i1();
        super.onResume();
        this.f13063n.m7043r(ActivityPresenter.MessageFilterType.ALL);
        m7120T1();
        if (this.f13063n.m7040u()) {
            TabLayout.Tab w = this.f13060k.m8964w(1);
            if (w != null) {
                w.m8937k();
            }
        } else {
            ActivityType activityType = this.f13070u;
            if (activityType != null) {
                TabLayout.Tab w2 = this.f13060k.m8964w(activityType.value);
                if (w2 != null) {
                    w2.m8937k();
                }
            } else {
                TabLayout.Tab w3 = this.f13060k.m8964w(0);
                if (w3 != null) {
                    w3.m8937k();
                }
            }
        }
        m7138K1(PreferenceUtils.m5395b("PREF_EVENT_SUMMARY_RETRIEVED_ALL_ITEMS", false));
        if (PreferenceUtils.m5395b("PREF_REFRESH_ACTIVITY", true)) {
            if (m7100d2()) {
                LogUtil.m5632o("ActivityFragment#", "Updating call log from API");
                PreferenceUtils.m5386k("PREF_REFRESH_ACTIVITY", false);
                ApiWrapper.m6770j0(new Consumer() { // from class: com.tmobile.services.nameid.activity.j
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        ActivityFragment.this.m7150D1((List) obj);
                    }
                }, C1665s.f13208f, false);
            }
            if (this.f13063n.m7036y()) {
                ApiWrapper.m6764m0(new Consumer() { // from class: com.tmobile.services.nameid.activity.e
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        ActivityFragment.this.m7152B1((List) obj);
                    }
                }, C1639f.f13178f);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f13063n.m7058c();
        LogUtil.m5639h("ActivityFragment#onStart", "getting activity list");
        ContactLookup.m5824d().m5825c(this.f13053A);
        Realm realm = this.f13068s;
        if (realm != null && !realm.isClosed()) {
            RealmResults<Caller> F = this.f13068s.m3053Q0(Caller.class).m2917F();
            this.f13054B = F;
            F.m2865v(new RealmChangeListener() { // from class: com.tmobile.services.nameid.activity.k
                @Override // io.realm.RealmChangeListener
                /* renamed from: a */
                public final void mo2506a(Object obj) {
                    ActivityFragment.this.m7149E1((RealmResults) obj);
                }
            });
        }
        if (Long.valueOf(PreferenceUtils.m5393d("PREF_CALL_LOG_LAST_DISPLAYED_DATE")).longValue() == 0) {
            LogUtil.m5632o("ActivityFragment#onStart", "Reloading activity items");
            CallLogHelper.m5841b(new Consumer() { // from class: com.tmobile.services.nameid.activity.h
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ActivityFragment.this.m7148F1((List) obj);
                }
            });
        } else {
            LogUtil.m5632o("ActivityFragment#onStart", "Loading activity items from cache");
            m7124R1();
        }
        this.f13056g.m6904f(m7111Y0());
        if (getContext() instanceof MainActivity) {
            ((MainActivity) getContext()).m7629L0(new ActivityFilterClickListener());
        }
        Realm realm2 = this.f13068s;
        if (realm2 != null && !realm2.isClosed()) {
            RealmResults<TmoUserStatus> E = this.f13068s.m3053Q0(TmoUserStatus.class).m2918E();
            this.f13066q = E;
            m7132N1(E);
            this.f13066q.m2865v(new RealmChangeListener() { // from class: com.tmobile.services.nameid.activity.m
                @Override // io.realm.RealmChangeListener
                /* renamed from: a */
                public final void mo2506a(Object obj) {
                    ActivityFragment.this.m7132N1((RealmResults) obj);
                }
            });
        }
        m7134M1();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        LogUtil.m5639h("ActivityFragment#onStop", "");
        ContactLookup.m5824d().m5821g(this.f13053A);
        if (getContext() instanceof MainActivity) {
            ((MainActivity) getContext()).m7629L0(null);
        }
        RealmResults<TmoUserStatus> realmResults = this.f13066q;
        if (realmResults != null && realmResults.isValid()) {
            this.f13066q.m2870B();
        }
        RealmResults<LicenseResponseItem> realmResults2 = this.f13067r;
        if (realmResults2 != null && realmResults2.isValid()) {
            this.f13067r.m2870B();
        }
        RealmResults<Caller> realmResults3 = this.f13054B;
        if (realmResults3 != null && realmResults3.isValid()) {
            this.f13054B.m2870B();
        }
    }

    /* renamed from: p1 */
    public /* synthetic */ void m7077p1(int i) {
        if (!this.f13056g.m6906d(i)) {
            EventSummaryItem c = this.f13056g.m6907c(i);
            this.f13072w = true;
            PreferenceUtils.m5385l("PREF_LAST_CLICKED_CALLER_ACTIVITY", this.f13069t.m17630W1());
            if (c != null) {
                this.f13063n.m7053h(c);
            }
        }
    }

    /* renamed from: q1 */
    public /* synthetic */ void m7076q1(List list) throws Exception {
        this.f13063n.m7046o();
        this.f13065p = false;
    }

    /* renamed from: r1 */
    public /* synthetic */ void m7075r1(Throwable th) throws Exception {
        LogUtil.m5641f("ActivityFragment#", "error getting event summary.", th);
        m7123S0();
        this.f13065p = false;
    }

    /* renamed from: s1 */
    public /* synthetic */ void m7074s1(View view) {
        ActivityPresenter.CallFilterType callFilterType;
        ActivityPresenter.CallFilterType callFilterType2 = ActivityPresenter.CallFilterType.ALL;
        switch (view.getId()) {
            case C1517R.C1520id.filter_dialog_approved_button /* 2131231179 */:
                callFilterType = ActivityPresenter.CallFilterType.APPROVED;
                break;
            case C1517R.C1520id.filter_dialog_blocked_button /* 2131231180 */:
                callFilterType = ActivityPresenter.CallFilterType.BLOCKED;
                break;
            case C1517R.C1520id.filter_dialog_root_container /* 2131231181 */:
            default:
                callFilterType = ActivityPresenter.CallFilterType.ALL;
                break;
            case C1517R.C1520id.filter_dialog_voicemail_button /* 2131231182 */:
                callFilterType = ActivityPresenter.CallFilterType.VOICEMAIL;
                break;
        }
        AnalyticsWrapper.m5883E("ActivityFragment", "activity_filter_" + callFilterType.name().toLowerCase());
        this.f13063n.m7044q(callFilterType);
        this.f13064o.dismiss();
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        if (z) {
            this.f13063n.m7058c();
            this.f13063n.m7045p();
            MainActivity.m7572q0(getString(C1517R.string.con_desc_activity), getContext());
        }
    }

    /* renamed from: t1 */
    public /* synthetic */ void m7073t1(View view) {
        ActivityPresenter.MessageFilterType messageFilterType = ActivityPresenter.MessageFilterType.ALL;
        ActivityPresenter.MessageFilterType messageFilterType2 = view.getId() != 2131231323 ? ActivityPresenter.MessageFilterType.ALL : ActivityPresenter.MessageFilterType.BLOCKED;
        AnalyticsWrapper.m5883E("ActivityFragment", "activity_filter_" + messageFilterType2.name().toLowerCase());
        this.f13063n.m7043r(messageFilterType2);
        this.f13064o.dismiss();
    }

    /* renamed from: u1 */
    public /* synthetic */ void m7072u1() {
        m7122S1();
        int c = PreferenceUtils.m5394c("PREF_LAST_CLICKED_CALLER_ACTIVITY", 0);
        LogUtil.m5639h("ActivityFragment#", "Last clicked = #" + c);
        if (c > 0 && c < this.f13055f.getItemCount() && !this.f13072w) {
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) this.f13057h.getLayoutManager();
            if (linearLayoutManager != null) {
                linearLayoutManager.m17650E2(c, 0);
            } else {
                this.f13057h.scrollToPosition(1);
            }
            PreferenceUtils.m5385l("PREF_LAST_CLICKED_CALLER_ACTIVITY", 0);
        } else if (c < 0 || c >= this.f13055f.getItemCount()) {
            LogUtil.m5631p("ActivityFragment#OnGlobalLayoutListener", "Index was OOB, so reset it to 0.");
            PreferenceUtils.m5385l("PREF_LAST_CLICKED_CALLER_ACTIVITY", 0);
        }
    }

    /* renamed from: v1 */
    public /* synthetic */ void m7071v1(List list) throws Exception {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ApiUtils.ActivityFromCaller activityFromCaller = (ApiUtils.ActivityFromCaller) it.next();
                arrayList.add(activityFromCaller.m6819b().copy());
                EventManager.m5722d(getContext(), activityFromCaller.m6819b().copy());
            }
            m7128P1(arrayList);
            if (arrayList.size() > 0) {
                Completable.m4519e(2000L, TimeUnit.MILLISECONDS).m4520c(new C1668t0(this));
            }
            this.f13062m.setRefreshing(false);
        } catch (Exception e) {
            LogUtil.m5641f("ActivityFragment#setupPullToRefresh#onSuccess", "Error encountered while refreshing call log", e);
        }
    }

    /* renamed from: w1 */
    public /* synthetic */ void m7070w1(Throwable th) throws Exception {
        try {
            LogUtil.m5632o("ActivityFragment#", "Refresh failed - " + th.getMessage());
            this.f13062m.setRefreshing(false);
        } catch (Exception e) {
            LogUtil.m5641f("ActivityFragment#setupPullToRefresh#onSuccess", "Error encountered while refreshing call log", e);
        }
    }

    /* renamed from: x1 */
    public /* synthetic */ void m7069x1(List list) throws Exception {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                EventSummaryItem eventSummaryItem = (EventSummaryItem) it.next();
                if (eventSummaryItem.hasMessageData()) {
                    arrayList.add(eventSummaryItem.copy());
                }
            }
            m7126Q1(arrayList);
            if (arrayList.size() > 0) {
                Completable.m4519e(2000L, TimeUnit.MILLISECONDS).m4520c(new C1668t0(this));
            }
            this.f13062m.setRefreshing(false);
            LogUtil.m5632o("ActivityFragment#", "Successfully refreshed message log");
        } catch (Exception e) {
            LogUtil.m5641f("ActivityFragment#setupPullToRefresh#onSuccess", "Error encountered while refreshing message log", e);
        }
    }

    /* renamed from: y0 */
    public void m7068y0(@Nullable final String str) {
        if (str == null || WidgetUtils.m5268E(str)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Wanted to lookup ");
            String str2 = str;
            if (str == null) {
                str2 = "";
            }
            sb.append(str2);
            sb.append(" but it was unknown");
            LogUtil.m5632o("ActivityFragment#", sb.toString());
            return;
        }
        Observable<Caller> i = ApiWrapper.m6773i(str, Caller.shouldSuppressCategory(), Caller.shouldSuppressName());
        if (i != null) {
            i.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.activity.q
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    Caller caller = (Caller) obj;
                    LogUtil.m5632o("ActivityFragment#", "Got lookup for " + str);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.activity.x
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    LogUtil.m5641f("ActivityFragment#", "Lookup failed for " + str, (Throwable) obj);
                }
            });
        }
    }

    /* renamed from: y1 */
    public /* synthetic */ void m7067y1(Throwable th) throws Exception {
        try {
            LogUtil.m5632o("ActivityFragment#", "Refresh failed - " + th.getMessage());
            this.f13062m.setRefreshing(false);
        } catch (Exception e) {
            LogUtil.m5641f("ActivityFragment#setupPullToRefresh#onSuccess", "Error encountered while refreshing call log", e);
        }
    }

    /* renamed from: z1 */
    public /* synthetic */ void m7066z1(View view) {
        m7136L1();
    }
}
