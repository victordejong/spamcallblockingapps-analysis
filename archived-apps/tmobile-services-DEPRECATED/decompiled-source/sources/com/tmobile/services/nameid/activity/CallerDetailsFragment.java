package com.tmobile.services.nameid.activity;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.provider.MediaStore;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.stetho.server.http.HttpStatus;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.domain.policy.FavoritesContactsPolicy;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerDetailsData;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.activity.RecentActivityDisplayable;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.NameIDCardView;
import com.tmobile.services.nameid.p007ui.NameIDImageButton;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.p007ui.manage.ManageButton;
import com.tmobile.services.nameid.report.GenericReportActivity;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.ManageDialog;
import com.tmobile.services.nameid.utility.NetworkChecks;
import com.tmobile.services.nameid.utility.PermissionChecker;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import de.hdodenhof.circleimageview.CircleImageView;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/CallerDetailsFragment.class */
public abstract class CallerDetailsFragment extends Fragment implements TabFragmentInterface, ManageDialog.ManageButtonDebouncer {

    /* renamed from: A */
    NameIDButton f13134A;

    /* renamed from: B */
    private CallDetailsPresenter f13135B;

    /* renamed from: C */
    CallDetailsRecyclerViewAdapter f13136C;
    @Nullable

    /* renamed from: D */
    RealmResults<Caller> f13137D;
    @Nullable

    /* renamed from: E */
    Realm f13138E;

    /* renamed from: F */
    private boolean f13139F = false;

    /* renamed from: f */
    ImageView f13140f;

    /* renamed from: g */
    CircleImageView f13141g;

    /* renamed from: h */
    ImageView f13142h;

    /* renamed from: i */
    TextView f13143i;

    /* renamed from: j */
    TextView f13144j;

    /* renamed from: k */
    TextView f13145k;

    /* renamed from: l */
    TextView f13146l;

    /* renamed from: m */
    TextView f13147m;

    /* renamed from: n */
    TextView f13148n;

    /* renamed from: o */
    RecyclerView f13149o;

    /* renamed from: p */
    ManageButton f13150p;

    /* renamed from: q */
    ManageButton f13151q;

    /* renamed from: r */
    ManageButton f13152r;

    /* renamed from: s */
    ManageButton f13153s;

    /* renamed from: t */
    NameIDCardView f13154t;

    /* renamed from: u */
    CardView f13155u;

    /* renamed from: v */
    LinearLayout f13156v;

    /* renamed from: w */
    TextView f13157w;

    /* renamed from: x */
    TextView f13158x;

    /* renamed from: y */
    NestedScrollView f13159y;

    /* renamed from: z */
    TextView f13160z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.activity.CallerDetailsFragment$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/CallerDetailsFragment$1.class */
    public static /* synthetic */ class C16281 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13161a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CallerSetting.Action.values().length];
            f13161a = iArr;
            try {
                iArr[CallerSetting.Action.BLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13161a[CallerSetting.Action.VOICEMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13161a[CallerSetting.Action.APPROVED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/CallerDetailsFragment$DisabledOptionListener.class */
    public class DisabledOptionListener implements View.OnClickListener {
        private DisabledOptionListener() {
        }

        /* synthetic */ DisabledOptionListener(CallerDetailsFragment callerDetailsFragment, C16281 r5) {
            this();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WidgetUtils.m5247Z(CallerDetailsFragment.this.getChildFragmentManager());
        }
    }

    /* renamed from: N0 */
    private void m6956N0() {
        this.f13150p.setEnabled(false);
        this.f13150p.setOnClickListener(new DisabledOptionListener(this, null));
    }

    /* renamed from: U0 */
    private boolean m6943U0() {
        return getActivity() == null || !isAdded();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g1 */
    public static /* synthetic */ void m6930g1(UserPreference userPreference, Realm realm) {
        CallerSetting callerSetting = (CallerSetting) realm.m3045v0((CallerSetting) userPreference, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h1 */
    public static /* synthetic */ void m6929h1(UserPreference userPreference, Realm realm) {
        MessageUserPreference messageUserPreference = (MessageUserPreference) realm.m3045v0((MessageUserPreference) userPreference, new ImportFlag[0]);
    }

    /* renamed from: r1 */
    private void m6919r1(boolean z) {
        this.f13151q.setEnabled(z);
        this.f13153s.setEnabled(z);
        this.f13152r.setEnabled(z);
        if (!z) {
            this.f13151q.setOnClickListener(new DisabledOptionListener(this, null));
            this.f13153s.setOnClickListener(new DisabledOptionListener(this, null));
            this.f13152r.setOnClickListener(new DisabledOptionListener(this, null));
        }
    }

    /* renamed from: z1 */
    private void m6911z1(@Nullable CallerSetting callerSetting) {
        if (callerSetting == null) {
            m6919r1(false);
            return;
        }
        int i = C16281.f13161a[CallerSetting.Action.fromValue(callerSetting.getAction()).ordinal()];
        if (i == 1) {
            this.f13153s.setEnabled(false);
            this.f13153s.setOnClickListener(new DisabledOptionListener(this, null));
            this.f13152r.setEnabled(false);
            this.f13152r.setOnClickListener(new DisabledOptionListener(this, null));
        } else if (i == 2) {
            this.f13151q.setEnabled(false);
            this.f13151q.setOnClickListener(new DisabledOptionListener(this, null));
            this.f13152r.setEnabled(false);
            this.f13152r.setOnClickListener(new DisabledOptionListener(this, null));
        } else if (i != 3) {
            m6919r1(false);
        } else {
            this.f13151q.setEnabled(false);
            this.f13151q.setOnClickListener(new DisabledOptionListener(this, null));
            this.f13153s.setEnabled(false);
            this.f13153s.setOnClickListener(new DisabledOptionListener(this, null));
        }
    }

    /* renamed from: A1 */
    public void m6974A1(@Nullable CallerSetting callerSetting, @Nullable MessageUserPreference messageUserPreference) {
        m6911z1(callerSetting);
        if (messageUserPreference == null) {
            m6956N0();
        }
    }

    /* renamed from: B1 */
    public void m6973B1(String str) {
        this.f13148n.setText(str);
    }

    /* renamed from: C1 */
    public void m6972C1(boolean z) {
        this.f13148n.setVisibility(z ? 0 : 8);
    }

    /* renamed from: D1 */
    public void m6971D1(@StringRes int i, @StringRes int i2) {
        this.f13157w.setText(i);
        this.f13158x.setText(i2);
    }

    /* renamed from: E1 */
    public void m6970E1(boolean z) {
        this.f13154t.setVisibility(z ? 0 : 8);
    }

    /* renamed from: F1 */
    public void m6969F1(boolean z) {
        this.f13145k.setVisibility(z ? 0 : 8);
    }

    /* renamed from: G0 */
    public void m6968G0(String str, int i, UserPreference userPreference) {
        LogUtil.m5632o("CallerDetailsFragment#", " add caller setting " + str);
        ApiWrapper.m6785c(userPreference, userPreference instanceof MessageUserPreference ? new ManageDialog.MessagePrefAddApiObserver(str, i, getContext()) : new ManageDialog.ResponseAddObserver(str, i, this, getContext()));
    }

    /* renamed from: G1 */
    public void m6967G1(String str) {
        this.f13147m.setText(str);
    }

    /* renamed from: H0 */
    public void m6966H0(final String str, final String str2, FavoritesContactsPolicy favoritesContactsPolicy) {
        if (favoritesContactsPolicy.m6584b()) {
            final boolean a = favoritesContactsPolicy.m6585a();
            LogUtil.m5643d("CallerDetailsFragment#", "addContactAction fired, activityContext = $activityContext");
            NameIDDialogBuilder.f13943m.m6142b(str, str2, new Function0() { // from class: com.tmobile.services.nameid.activity.l0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return CallerDetailsFragment.this.m6939X0(a, str, str2);
                }
            }).m6160b(getChildFragmentManager());
        }
    }

    /* renamed from: H1 */
    public void m6965H1() {
        this.f13134A.setTextColor(getResources().getColor(C1517R.C1518color.grey_8));
        this.f13134A.setClickable(false);
    }

    /* renamed from: I0 */
    public void mo6910I0() {
        ((MainActivity) getContext()).m7563v0();
    }

    /* renamed from: I1 */
    public void m6964I1(boolean z) {
        int i = z ? 8 : 0;
        this.f13156v.setVisibility(i);
        this.f13155u.setVisibility(i);
    }

    /* renamed from: J0 */
    public void m6963J0(String str, UserPreference userPreference, int i) {
        LogUtil.m5632o("CallerDetailsFragment#", " delete caller setting " + str);
        ApiWrapper.m6775h(userPreference, userPreference instanceof MessageUserPreference ? new ManageDialog.UserPrefDeleteObserver(userPreference, getContext()) : new ManageDialog.ResponseObserver(str, i, this, getContext()));
    }

    /* renamed from: J1 */
    public void m6962J1(boolean z) {
        this.f13153s.setChecked(z);
    }

    /* renamed from: K0 */
    public abstract String mo6909K0();

    /* renamed from: K1 */
    public void m6961K1(List<RecentActivityDisplayable> list) {
        this.f13149o.setHasFixedSize(true);
        this.f13149o.setLayoutManager(new LinearLayoutManager(getContext()));
        CallDetailsRecyclerViewAdapter callDetailsRecyclerViewAdapter = new CallDetailsRecyclerViewAdapter(new ArrayList(list.subList(0, Math.min(list.size(), (int) HttpStatus.HTTP_OK))));
        this.f13136C = callDetailsRecyclerViewAdapter;
        this.f13149o.setAdapter(callDetailsRecyclerViewAdapter);
    }

    /* renamed from: L0 */
    public void m6960L0() {
        m6956N0();
        m6919r1(false);
    }

    /* renamed from: L1 */
    public void m6959L1(boolean z) {
        this.f13149o.setVisibility(!z ? 8 : 0);
    }

    /* renamed from: M0 */
    public void m6958M0() {
        this.f13151q.setEnabled(false);
        this.f13153s.setEnabled(false);
    }

    /* renamed from: M1 */
    public void m6957M1(boolean z, boolean z2) {
        this.f13160z.setText(z2 ? C1517R.string.call_details_call_no_activity : C1517R.string.activity_no_more_items);
        this.f13160z.setVisibility(z ? 0 : 8);
    }

    /* renamed from: N1 */
    public void m6955N1(String str, String str2, @StringRes int i, int i2, String str3) {
        EventManager.m5725a(getActivity(), "Complaint_Started_From_Details");
        Intent intent = new Intent(getContext(), GenericReportActivity.class);
        intent.putExtra("name", str2);
        intent.putExtra("number", str);
        if (i != 2131689880) {
            intent.putExtra("category", getString(i));
        } else {
            intent.putExtra("category", "");
        }
        intent.putExtra("bucketId", i2);
        intent.putExtra("numberAsInput", str3);
        startActivity(intent);
    }

    /* renamed from: O0 */
    public SubscriptionHelper.State m6954O0(boolean z) {
        return z ? SubscriptionHelper.m5323e() : SubscriptionHelper.m5325c();
    }

    /* renamed from: O1 */
    public void m6953O1() {
        RealmResults<Caller> realmResults = this.f13137D;
        if (realmResults != null) {
            realmResults.m2870B();
        }
    }

    /* renamed from: P0 */
    public abstract CallerDetailsData mo6908P0();

    /* renamed from: P1 */
    public void m6952P1() {
        if (isAdded()) {
            this.f13144j.setTextColor(getResources().getColor(C1517R.C1518color.magenta_or_royal_purple));
        }
    }

    /* renamed from: Q0 */
    public MessageUserPreference m6951Q0(String str) {
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(MessageUserPreference.class);
            Q0.m2882t("e164Number", str);
            MessageUserPreference messageUserPreference = (MessageUserPreference) Q0.m2916G();
            if (messageUserPreference != null) {
                MessageUserPreference copy = messageUserPreference.copy();
                if (G0 != null) {
                    G0.close();
                }
                return copy;
            } else if (G0 == null) {
                return null;
            } else {
                G0.close();
                return null;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: Q1 */
    public void m6950Q1() {
        this.f13136C.notifyDataSetChanged();
    }

    /* renamed from: R0 */
    public CallerSetting m6949R0(String str) {
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(CallerSetting.class);
            Q0.m2882t("e164Number", str);
            CallerSetting callerSetting = (CallerSetting) Q0.m2916G();
            if (callerSetting != null) {
                CallerSetting copy = callerSetting.copy();
                if (G0 != null) {
                    G0.close();
                }
                return copy;
            } else if (G0 == null) {
                return null;
            } else {
                G0.close();
                return null;
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: R1 */
    public void m6948R1(String str, UserPreference userPreference, int i) {
        LogUtil.m5632o("CallerDetailsFragment#", " update on caller setting " + str);
        ApiWrapper.m6766l0(userPreference, userPreference instanceof MessageUserPreference ? new ManageDialog.UserPrefDeleteObserver(userPreference, getContext()) : new ManageDialog.ResponseObserver(str, i, this, getContext()));
    }

    /* renamed from: S0 */
    public Contact m6947S0(String str) {
        return ContactLookup.m5824d().m5823e(str);
    }

    /* renamed from: S1 */
    public void m6946S1(String str) {
        this.f13141g.setVisibility(4);
        this.f13140f.setVisibility(4);
        this.f13142h.setVisibility(0);
        this.f13143i.setVisibility(0);
        this.f13143i.setText(str);
    }

    /* renamed from: T0 */
    public void m6945T0() {
        WidgetUtils.m5235f0(getActivity(), getChildFragmentManager(), null, null);
    }

    /* renamed from: T1 */
    public void m6944T1(@DrawableRes int i, @StringRes int i2) {
        if (!m6943U0()) {
            this.f13141g.setVisibility(4);
            this.f13140f.setContentDescription(getString(i2));
            this.f13140f.setVisibility(0);
            this.f13140f.setImageDrawable(getResources().getDrawable(i));
            this.f13142h.setVisibility(4);
            this.f13143i.setVisibility(4);
        }
    }

    /* renamed from: U1 */
    public void m6942U1(String str) {
        try {
            this.f13141g.setImageBitmap(MediaStore.Images.Media.getBitmap(getContext().getContentResolver(), Uri.parse(str)));
        } catch (Exception e) {
            LogUtil.m5641f("onBindViewHolder", "error getting contact uri", e);
        }
        this.f13141g.setVisibility(0);
        this.f13140f.setVisibility(4);
        this.f13142h.setVisibility(4);
        this.f13143i.setVisibility(4);
    }

    /* renamed from: V0 */
    public boolean m6941V0() {
        return NetworkChecks.f14407b.m5480c(getContext());
    }

    /* renamed from: W0 */
    public boolean m6940W0() {
        return SubscriptionHelper.m5310r(SubscriptionHelper.m5325c());
    }

    /* renamed from: X0 */
    public /* synthetic */ Unit m6939X0(boolean z, String str, String str2) {
        if (getActivity() != null && !getActivity().isFinishing()) {
            if (z) {
                PreferenceUtils.m5383n("PREF_PENDING_CONTACT_ADD_NAME", str);
                PreferenceUtils.m5383n("PREF_PENDING_CONTACT_ADD_E164", str2);
                PermissionChecker.m5421d(getActivity());
            } else {
                Intent intent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
                intent.putExtra("name", str);
                intent.putExtra("phone", str2);
                intent.addFlags(268435456);
                getActivity().startActivity(intent);
            }
        }
        return Unit.f20447a;
    }

    @Override // com.tmobile.services.nameid.utility.ManageDialog.ManageButtonDebouncer
    /* renamed from: Y */
    public void mo5617Y() {
        LogUtil.m5643d("CallerDetailsFragment#", "onLock");
        this.f13139F = true;
    }

    /* renamed from: Y0 */
    public /* synthetic */ void m6938Y0(View view) {
        mo6910I0();
    }

    /* renamed from: Z0 */
    public /* synthetic */ void m6937Z0(View view) {
        m6922o1();
    }

    /* renamed from: a1 */
    public /* synthetic */ void m6936a1(View view) {
        m6925l1();
    }

    /* renamed from: b1 */
    public /* synthetic */ void m6935b1(View view) {
        m6926k1();
    }

    /* renamed from: c1 */
    public /* synthetic */ void m6934c1(View view) {
        m6927j1();
    }

    /* renamed from: d1 */
    public /* synthetic */ void m6933d1(View view) {
        m6921p1();
    }

    /* renamed from: e1 */
    public /* synthetic */ void m6932e1(View view) {
        m6924m1();
    }

    /* renamed from: f1 */
    public /* synthetic */ void m6931f1(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
        NestedScrollView nestedScrollView2 = this.f13159y;
        View childAt = nestedScrollView2.getChildAt(nestedScrollView2.getChildCount() - 1);
        if (childAt != null && childAt.getBottom() == nestedScrollView.getHeight() + i2) {
            this.f13135B.m6984t();
        }
    }

    /* renamed from: i1 */
    public void m6928i1(String str) {
        Realm realm = this.f13138E;
        if (realm != null) {
            RealmQuery Q0 = realm.m3053Q0(Caller.class);
            Q0.m2882t("e164Number", str);
            RealmResults<Caller> E = Q0.m2918E();
            this.f13137D = E;
            final CallDetailsPresenter callDetailsPresenter = this.f13135B;
            callDetailsPresenter.getClass();
            E.m2865v(new RealmChangeListener() { // from class: com.tmobile.services.nameid.activity.s0
                @Override // io.realm.RealmChangeListener
                /* renamed from: a */
                public final void mo2506a(Object obj) {
                    CallDetailsPresenter.this.m7015K((RealmResults) obj);
                }
            });
        }
    }

    @Override // com.tmobile.services.nameid.utility.ManageDialog.ManageButtonDebouncer
    /* renamed from: j0 */
    public void mo5616j0() {
        LogUtil.m5643d("CallerDetailsFragment#", "onUnlock");
        this.f13139F = false;
    }

    /* renamed from: j1 */
    public void m6927j1() {
        if (!this.f13139F) {
            this.f13135B.m7014L(CallerSetting.Action.APPROVED, !this.f13152r.isChecked());
        }
    }

    /* renamed from: k1 */
    public void m6926k1() {
        if (!this.f13139F) {
            this.f13135B.m7014L(CallerSetting.Action.BLOCKED, !this.f13151q.isChecked());
        }
    }

    /* renamed from: l1 */
    public void m6925l1() {
        this.f13135B.m7011O(!this.f13150p.isChecked());
    }

    /* renamed from: m1 */
    public void m6924m1() {
        this.f13135B.m6982v();
    }

    /* renamed from: n1 */
    public void m6923n1(int i) {
        if (i == CategorySetting.BucketId.SCAM.getValue() || i == CategorySetting.BucketId.CALL_BLOCKING.getValue()) {
            ((MainActivity) getContext()).m7632K();
        } else {
            ((MainActivity) getContext()).m7644E();
        }
    }

    /* renamed from: o1 */
    public void m6922o1() {
        this.f13135B.m6981w();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        LogUtil.m5639h("CallerDetailsFragment#createView", "creating view");
        Context context = getContext();
        if (context != null) {
            this.f13138E = ((MainActivity) context).m7593f();
            EventManager.m5725a(context, "Details_View_Entered");
        }
        String K0 = mo6909K0();
        if (K0 != null) {
            K0.isEmpty();
        }
        CallerDetailsData P0 = mo6908P0();
        View inflate = layoutInflater.inflate(C1517R.layout.fragment_caller_details, viewGroup, false);
        this.f13140f = (ImageView) inflate.findViewById(C1517R.C1520id.call_details_caller_type_image);
        this.f13141g = (CircleImageView) inflate.findViewById(C1517R.C1520id.call_details_contact_image);
        this.f13142h = (ImageView) inflate.findViewById(C1517R.C1520id.call_details_initials_background);
        this.f13143i = (TextView) inflate.findViewById(C1517R.C1520id.call_details_initials_text_view);
        this.f13144j = (TextView) inflate.findViewById(C1517R.C1520id.caller_details_caller_name);
        this.f13145k = (TextView) inflate.findViewById(C1517R.C1520id.caller_details_no_info_label);
        this.f13146l = (TextView) inflate.findViewById(C1517R.C1520id.caller_details_caller_category);
        this.f13147m = (TextView) inflate.findViewById(C1517R.C1520id.call_details_caller_number);
        this.f13148n = (TextView) inflate.findViewById(C1517R.C1520id.call_details_caller_location);
        this.f13149o = (RecyclerView) inflate.findViewById(C1517R.C1520id.caller_details_rv);
        FrameLayout frameLayout = (FrameLayout) inflate.findViewById(C1517R.C1520id.trial_days_left_banner_container);
        ConstraintLayout constraintLayout = (ConstraintLayout) inflate.findViewById(C1517R.C1520id.top_container);
        this.f13150p = (ManageButton) inflate.findViewById(C1517R.C1520id.call_details_block_messages);
        this.f13151q = (ManageButton) inflate.findViewById(C1517R.C1520id.call_details_block);
        this.f13152r = (ManageButton) inflate.findViewById(C1517R.C1520id.call_details_approve);
        this.f13153s = (ManageButton) inflate.findViewById(C1517R.C1520id.call_details_voicemail);
        this.f13154t = (NameIDCardView) inflate.findViewById(C1517R.C1520id.call_details_what_kind_card);
        this.f13155u = (CardView) inflate.findViewById(C1517R.C1520id.caller_details_header_card);
        this.f13156v = (LinearLayout) inflate.findViewById(C1517R.C1520id.buttons_container);
        this.f13157w = (TextView) inflate.findViewById(C1517R.C1520id.call_details_what_kind_card_text);
        this.f13158x = (TextView) inflate.findViewById(C1517R.C1520id.call_details_what_kind_card_txt_btn);
        this.f13159y = (NestedScrollView) inflate.findViewById(C1517R.C1520id.caller_details_scroll_view);
        this.f13160z = (TextView) inflate.findViewById(C1517R.C1520id.call_details_no_more_items);
        this.f13134A = (NameIDButton) inflate.findViewById(C1517R.C1520id.call_details_report_button);
        NameIDImageButton nameIDImageButton = (NameIDImageButton) inflate.findViewById(C1517R.C1520id.caller_details_back_button);
        ManageButton manageButton = (ManageButton) inflate.findViewById(C1517R.C1520id.call_details_block_messages);
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(C1517R.C1520id.caller_details_icon_container);
        nameIDImageButton.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallerDetailsFragment.this.m6938Y0(view);
            }
        });
        this.f13134A.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.p0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallerDetailsFragment.this.m6937Z0(view);
            }
        });
        manageButton.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallerDetailsFragment.this.m6936a1(view);
            }
        });
        this.f13151q.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallerDetailsFragment.this.m6935b1(view);
            }
        });
        this.f13152r.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallerDetailsFragment.this.m6934c1(view);
            }
        });
        this.f13153s.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallerDetailsFragment.this.m6933d1(view);
            }
        });
        this.f13158x.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.activity.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallerDetailsFragment.this.m6932e1(view);
            }
        });
        LogUtil.m5639h("CallerDetailsFragment#createView", "done creating view");
        this.f13152r.setContent(ManageButton.ManageAction.ALWAYS_ALLOW_CALLS);
        this.f13153s.setContent(ManageButton.ManageAction.SEND_CALLS_TO_VM);
        this.f13151q.setContent(ManageButton.ManageAction.BLOCK_CALLS);
        manageButton.setContent(ManageButton.ManageAction.BLOCK_MESSAGES);
        this.f13149o.setNestedScrollingEnabled(false);
        this.f13159y.setOnScrollChangeListener(new NestedScrollView.OnScrollChangeListener() { // from class: com.tmobile.services.nameid.activity.k0
            @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
            /* renamed from: a */
            public final void mo6899a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4) {
                CallerDetailsFragment.this.m6931f1(nestedScrollView, i, i2, i3, i4);
            }
        });
        CallDetailsPresenter callDetailsPresenter = new CallDetailsPresenter(this, P0);
        this.f13135B = callDetailsPresenter;
        callDetailsPresenter.m6987q();
        if (this.f13135B.m7009Q()) {
            manageButton.setVisibility(0);
        } else {
            manageButton.setVisibility(8);
        }
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f13135B.m7017I();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        ((MainActivity) getContext()).m7565u0();
        mo5616j0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f13135B.m7018H();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
    }

    /* renamed from: p1 */
    public void m6921p1() {
        if (!this.f13139F) {
            this.f13135B.m7014L(CallerSetting.Action.VOICEMAIL, !this.f13153s.isChecked());
        }
    }

    /* renamed from: q1 */
    public void m6920q1(final UserPreference userPreference) {
        Realm G0 = Realm.m3064G0();
        try {
            if (userPreference instanceof MessageUserPreference) {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.activity.o0
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        CallerDetailsFragment.m6929h1(UserPreference.this, realm);
                    }
                });
            } else if (userPreference instanceof CallerSetting) {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.activity.h0
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        CallerDetailsFragment.m6930g1(UserPreference.this, realm);
                    }
                });
            }
            if (G0 != null) {
                G0.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: s1 */
    public void m6918s1(boolean z) {
        this.f13152r.setChecked(z);
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("Setting mainActivity banner visibility to ");
        sb.append(!z);
        sb.append(" from CallerDetails");
        LogUtil.m5643d("CallerDetailsFragment#setVisible", sb.toString());
        ((MainActivity) getContext()).m7627M0(!z);
    }

    /* renamed from: t1 */
    public void m6917t1(boolean z) {
        this.f13151q.setChecked(z);
    }

    /* renamed from: u1 */
    public void m6916u1(boolean z) {
        this.f13150p.setChecked(z);
    }

    /* renamed from: v1 */
    public void m6915v1(String str) {
        this.f13144j.setText(str);
    }

    /* renamed from: w1 */
    public void m6914w1(boolean z) {
        int i = 8;
        this.f13156v.setVisibility(z ? 8 : 0);
        CardView cardView = this.f13155u;
        if (!z) {
            i = 0;
        }
        cardView.setVisibility(i);
    }

    /* renamed from: x1 */
    public void m6913x1(String str) {
        if (!m6943U0()) {
            this.f13146l.setText(str);
        }
    }

    /* renamed from: y1 */
    public void m6912y1(boolean z) {
        this.f13146l.setVisibility(z ? 0 : 8);
    }
}
