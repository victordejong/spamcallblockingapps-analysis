package com.tmobile.services.nameid.Settings.MyAccount;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.NameIDTextView;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.FoRegistrationHelper;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MataErrorInterpreter;
import com.tmobile.services.nameid.utility.MetroLicenseHelper;
import com.tmobile.services.nameid.utility.MyAccountHelper;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.functions.Consumer;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmResults;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.annotation.Nullable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/MyAccount/MyAccountFragment.class */
public class MyAccountFragment extends Fragment implements TabFragmentInterface {

    /* renamed from: A */
    TextView f12715A;

    /* renamed from: B */
    NameIDButton f12716B;

    /* renamed from: C */
    NameIDButton f12717C;

    /* renamed from: D */
    TextView f12718D;

    /* renamed from: E */
    NameIDTextView f12719E;

    /* renamed from: F */
    private boolean f12720F = false;

    /* renamed from: G */
    private boolean f12721G = false;

    /* renamed from: H */
    private boolean f12722H = false;

    /* renamed from: I */
    private boolean f12723I = false;

    /* renamed from: J */
    private boolean f12724J = false;

    /* renamed from: K */
    private int f12725K = 0;

    /* renamed from: L */
    private boolean f12726L = false;

    /* renamed from: M */
    private boolean f12727M = true;

    /* renamed from: N */
    boolean f12728N = false;

    /* renamed from: O */
    private boolean f12729O = false;

    /* renamed from: P */
    private boolean f12730P = false;
    @Nullable

    /* renamed from: Q */
    private RealmResults<TmoUserStatus> f12731Q;
    @Nullable

    /* renamed from: R */
    private RealmResults<LicenseResponseItem> f12732R;
    @Nullable

    /* renamed from: S */
    private DialogFragment f12733S;

    /* renamed from: f */
    LinearLayout f12734f;

    /* renamed from: g */
    TextView f12735g;

    /* renamed from: h */
    TextView f12736h;

    /* renamed from: i */
    LinearLayout f12737i;

    /* renamed from: j */
    TextView f12738j;

    /* renamed from: k */
    TextView f12739k;

    /* renamed from: l */
    TextView f12740l;

    /* renamed from: m */
    LinearLayout f12741m;

    /* renamed from: n */
    ImageView f12742n;

    /* renamed from: o */
    ImageView f12743o;

    /* renamed from: p */
    ImageView f12744p;

    /* renamed from: q */
    ImageView f12745q;

    /* renamed from: r */
    ImageView f12746r;

    /* renamed from: s */
    LinearLayout f12747s;

    /* renamed from: t */
    TextView f12748t;

    /* renamed from: u */
    TextView f12749u;

    /* renamed from: v */
    TextView f12750v;

    /* renamed from: w */
    TextView f12751w;

    /* renamed from: x */
    View f12752x;

    /* renamed from: y */
    TextView f12753y;

    /* renamed from: z */
    View f12754z;

    /* renamed from: G0 */
    private void m7457G0(View view) {
        this.f12734f = (LinearLayout) view.findViewById(C1517R.C1520id.my_account_pending_layout);
        this.f12735g = (TextView) view.findViewById(C1517R.C1520id.my_account_pending_title);
        this.f12736h = (TextView) view.findViewById(C1517R.C1520id.my_account_pending_desc);
        this.f12737i = (LinearLayout) view.findViewById(C1517R.C1520id.my_account_error_header);
        this.f12738j = (TextView) view.findViewById(C1517R.C1520id.my_account_error_header_text);
        this.f12739k = (TextView) view.findViewById(C1517R.C1520id.my_account_status_header_status);
        this.f12740l = (TextView) view.findViewById(C1517R.C1520id.my_account_status_header_last_updated);
        this.f12741m = (LinearLayout) view.findViewById(C1517R.C1520id.my_account_ineligible_header);
        this.f12742n = (ImageView) view.findViewById(C1517R.C1520id.account_square_logo);
        this.f12743o = (ImageView) view.findViewById(C1517R.C1520id.account_plus_icon);
        this.f12744p = (ImageView) view.findViewById(C1517R.C1520id.account_square_vvm_logo);
        this.f12745q = (ImageView) view.findViewById(C1517R.C1520id.account_square_logo_centered);
        this.f12746r = (ImageView) view.findViewById(C1517R.C1520id.account_id_illustration_centered);
        this.f12747s = (LinearLayout) view.findViewById(C1517R.C1520id.my_account_summary_layout);
        this.f12748t = (TextView) view.findViewById(C1517R.C1520id.my_account_summary_title_tv);
        this.f12749u = (TextView) view.findViewById(C1517R.C1520id.my_account_active_subtitle);
        this.f12750v = (TextView) view.findViewById(C1517R.C1520id.my_account_free_features_tv);
        this.f12751w = (TextView) view.findViewById(C1517R.C1520id.my_account_summary_desc_tv);
        this.f12752x = view.findViewById(C1517R.C1520id.my_account_features_horiz_rule);
        this.f12753y = (TextView) view.findViewById(C1517R.C1520id.my_account_summary_bottom_tv);
        this.f12754z = view.findViewById(C1517R.C1520id.my_account_horizontal_rule_6);
        this.f12715A = (TextView) view.findViewById(C1517R.C1520id.account_vvm_footnote_tv);
        this.f12716B = (NameIDButton) view.findViewById(C1517R.C1520id.my_account_summary_color_button);
        this.f12717C = (NameIDButton) view.findViewById(C1517R.C1520id.my_account_summary_clear_button);
        this.f12718D = (TextView) view.findViewById(C1517R.C1520id.my_account_start_trial_tv);
        this.f12719E = (NameIDTextView) view.findViewById(C1517R.C1520id.my_account_summary_learn_more_tv);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I0 */
    public void m7455I0() {
        DialogFragment dialogFragment = this.f12733S;
        if (dialogFragment != null) {
            try {
                dialogFragment.dismissAllowingStateLoss();
            } catch (IllegalArgumentException e) {
                LogUtil.m5641f("MyAccountFragment#dismissDialog", "Attempted to dismiss dialog but activity was destroyed", e);
            }
        }
    }

    /* renamed from: K0 */
    private String m7453K0(Date date) {
        return new SimpleDateFormat("MM/dd/yy", DeviceInfoUtils.m5758f()).format(date);
    }

    /* renamed from: L0 */
    private String m7452L0(Date date) {
        return new SimpleDateFormat("h:mm a", DeviceInfoUtils.m5758f()).format(date);
    }

    /* renamed from: M0 */
    private void m7451M0() {
        LogUtil.m5643d("MyAccountFragment#", "entering hideUpgradeDowngradeButtons");
        this.f12717C.setVisibility(8);
        this.f12716B.setVisibility(8);
        this.f12718D.setVisibility(8);
    }

    /* renamed from: N0 */
    private void m7450N0() {
        this.f12747s.setVisibility(8);
        this.f12734f.setVisibility(8);
        this.f12741m.setVisibility(8);
        this.f12717C.setVisibility(8);
        this.f12716B.setVisibility(8);
        this.f12718D.setVisibility(8);
        this.f12753y.setVisibility(8);
        this.f12754z.setVisibility(8);
        this.f12737i.setVisibility(8);
        m7429i1();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S0 */
    public static /* synthetic */ Unit m7445S0() {
        MainApplication.m7553C("unsubscribe", new String[]{"result"}, new String[]{"cancelled"});
        AnalyticsWrapper.m5883E("MyAccountFragment", "end_trial_cancelled");
        return Unit.f20447a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d1 */
    public static /* synthetic */ Unit m7434d1() {
        MainApplication.m7553C("unsubscribe", new String[]{"result"}, new String[]{"cancelled"});
        AnalyticsWrapper.m5883E("MyAccountFragment", "unsubscribe_cancelled");
        return Unit.f20447a;
    }

    /* renamed from: f1 */
    private void m7432f1(String str) {
        this.f12739k.setText(str);
    }

    /* renamed from: g1 */
    private void m7431g1() {
        if (getContext() instanceof MainActivity) {
            MainActivity mainActivity = (MainActivity) getContext();
            if (mainActivity.m7571r(mo6305F0())) {
                mainActivity.m7625N0(C1517R.string.setting_my_account_title);
            }
        }
    }

    /* renamed from: h1 */
    private void m7430h1() {
        this.f12718D.setText(C1517R.string.my_account_settings_end_trial);
        this.f12718D.setVisibility(0);
        this.f12718D.setTextColor(getResources().getColor(C1517R.C1518color.black_5));
        this.f12718D.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.MyAccount.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyAccountFragment.this.m7440X0(view);
            }
        });
    }

    /* renamed from: i1 */
    private void m7429i1() {
        this.f12719E.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.MyAccount.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyAccountFragment.this.m7439Y0(view);
            }
        });
    }

    /* renamed from: j1 */
    private void m7428j1() {
        this.f12718D.setText(C1517R.string.my_account_start_trial);
        this.f12718D.setVisibility(0);
        this.f12718D.setTextColor(getResources().getColor(C1517R.C1518color.magenta_or_royal_purple));
        this.f12718D.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.MyAccount.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyAccountFragment.this.m7438Z0(view);
            }
        });
    }

    /* renamed from: k1 */
    private void m7427k1() {
        this.f12716B.setText(C1517R.string.general_upgrade);
        this.f12716B.setContentDescription(getString(C1517R.string.general_upgrade));
        this.f12716B.setVisibility(0);
        this.f12716B.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.MyAccount.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyAccountFragment.this.m7437a1(view);
            }
        });
    }

    /* renamed from: l1 */
    private void m7426l1() {
        this.f12717C.setText(C1517R.string.general_downgrade);
        this.f12717C.setContentDescription(getString(C1517R.string.general_downgrade));
        this.f12717C.setVisibility(0);
        this.f12717C.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.MyAccount.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyAccountFragment.this.m7436b1(view);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
        if (r9 != false) goto L_0x0060;
     */
    /* renamed from: m1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean m7425m1(@javax.annotation.Nullable com.tmobile.services.nameid.model.TmoUserStatus r4) {
        /*
            r3 = this;
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0008
            r0 = 0
            return r0
        L_0x0008:
            r0 = r4
            java.lang.String r0 = r0.getTypeLetter()
            com.tmobile.services.nameid.model.TmoUserStatus$SubscriptionType r0 = com.tmobile.services.nameid.model.TmoUserStatus.SubscriptionType.fromTypeLetter(r0)
            r6 = r0
            r0 = r4
            java.lang.String r0 = r0.getStatusText()
            com.tmobile.services.nameid.model.TmoUserStatus$SubscriptionStatus r0 = com.tmobile.services.nameid.model.TmoUserStatus.SubscriptionStatus.fromStatusText(r0)
            r7 = r0
            r0 = r7
            com.tmobile.services.nameid.model.TmoUserStatus$SubscriptionStatus r1 = com.tmobile.services.nameid.model.TmoUserStatus.SubscriptionStatus.INACTIVE
            if (r0 == r1) goto L_0x0032
            r0 = r7
            com.tmobile.services.nameid.model.TmoUserStatus$SubscriptionStatus r1 = com.tmobile.services.nameid.model.TmoUserStatus.SubscriptionStatus.NOT_FOUND
            if (r0 != r1) goto L_0x002c
            goto L_0x0032
        L_0x002c:
            r0 = 0
            r8 = r0
            goto L_0x0035
        L_0x0032:
            r0 = 1
            r8 = r0
        L_0x0035:
            r0 = r6
            com.tmobile.services.nameid.model.TmoUserStatus$SubscriptionType r1 = com.tmobile.services.nameid.model.TmoUserStatus.SubscriptionType.FREE
            if (r0 != r1) goto L_0x004a
            r0 = r7
            com.tmobile.services.nameid.model.TmoUserStatus$SubscriptionStatus r1 = com.tmobile.services.nameid.model.TmoUserStatus.SubscriptionStatus.ACTIVE
            if (r0 != r1) goto L_0x004a
            r0 = 1
            r9 = r0
            goto L_0x004d
        L_0x004a:
            r0 = 0
            r9 = r0
        L_0x004d:
            r0 = r4
            boolean r0 = r0.isEligible()
            r10 = r0
            r0 = r8
            if (r0 != 0) goto L_0x0060
            r0 = r5
            r11 = r0
            r0 = r9
            if (r0 == 0) goto L_0x006b
        L_0x0060:
            r0 = r5
            r11 = r0
            r0 = r10
            if (r0 != 0) goto L_0x006b
            r0 = 1
            r11 = r0
        L_0x006b:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.Settings.MyAccount.MyAccountFragment.m7425m1(com.tmobile.services.nameid.model.TmoUserStatus):boolean");
    }

    /* renamed from: p1 */
    private void m7422p1() {
        AnalyticsWrapper.m5883E("MyAccountFragment", "unsubscribe_started");
        LogUtil.m5643d("MyAccountFragment#onUnsubscribeClick", "User clicked unsubscribe, showing confirm dialog");
        this.f12733S = NameIDDialogBuilder.f13943m.m6138f(new Function0() { // from class: com.tmobile.services.nameid.Settings.MyAccount.l
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MyAccountFragment.this.m7435c1();
            }
        }, C1549p.f12773f).m6160b(getChildFragmentManager());
    }

    /* renamed from: q1 */
    private void m7421q1() {
        LogUtil.m5643d("MyAccountFragment#", "entering updateErrorUi");
        this.f12747s.setVisibility(0);
        this.f12734f.setVisibility(8);
        this.f12737i.setVisibility(0);
        this.f12717C.setVisibility(8);
        this.f12716B.setVisibility(8);
        this.f12748t.setText(C1517R.string.my_account_inactive_title);
        this.f12748t.setContentDescription(getString(C1517R.string.my_account_inactive_title));
        if (this.f12721G) {
            this.f12738j.setText(C1517R.string.my_account_trial_check_fail);
            this.f12738j.setContentDescription(getString(C1517R.string.my_account_trial_check_fail));
            return;
        }
        this.f12738j.setText(C1517R.string.account_subscription_check_fail);
        this.f12738j.setContentDescription(getString(C1517R.string.account_subscription_check_fail));
    }

    /* renamed from: r1 */
    private void m7420r1() {
        LogUtil.m5643d("MyAccountFragment#", "entering updateInactiveUi");
        this.f12734f.setVisibility(8);
        this.f12747s.setVisibility(0);
        this.f12749u.setVisibility(8);
        this.f12750v.setVisibility(8);
        this.f12752x.setVisibility(8);
        this.f12748t.setText(C1517R.string.my_account_inactive_title);
        this.f12748t.setContentDescription(getString(C1517R.string.my_account_inactive_title));
        m7427k1();
        if (m7458A1()) {
            this.f12753y.setVisibility(0);
            this.f12754z.setVisibility(0);
            this.f12753y.setText(C1517R.string.my_account_trial_expired);
        } else {
            this.f12753y.setVisibility(8);
            this.f12754z.setVisibility(8);
        }
        if (SubscriptionHelper.m5302z()) {
            this.f12742n.setVisibility(8);
            this.f12743o.setVisibility(8);
            this.f12744p.setVisibility(8);
            this.f12715A.setVisibility(8);
            this.f12746r.setVisibility(0);
            this.f12745q.setVisibility(8);
            this.f12751w.setText(C1517R.string.premium_feature_list_minus_vmtt);
        } else {
            this.f12742n.setVisibility(0);
            this.f12743o.setVisibility(0);
            this.f12744p.setVisibility(0);
            this.f12715A.setVisibility(0);
            this.f12746r.setVisibility(8);
            this.f12745q.setVisibility(8);
            this.f12751w.setText(C1517R.string.premium_feature_list);
        }
        if (!this.f12727M) {
            m7419s1();
        }
        if (this.f12728N) {
            m7416v1();
        }
    }

    /* renamed from: s1 */
    private void m7419s1() {
        LogUtil.m5643d("MyAccountFragment#", "entering updateIneligibleUi");
        this.f12717C.setVisibility(8);
        this.f12716B.setVisibility(8);
        this.f12718D.setVisibility(8);
        this.f12753y.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t1 */
    public void m7418t1(RealmResults<LicenseResponseItem> realmResults) {
        boolean z;
        if (isAdded() && !realmResults.isEmpty() && !BuildUtils.m5851c()) {
            LicenseResponseItem licenseResponseItem = null;
            boolean z2 = false;
            if (!realmResults.isEmpty()) {
                licenseResponseItem = realmResults.get(0);
            } else {
                LogUtil.m5643d("MyAccountFragment#updateMetroUI", "licenseResults is empty");
            }
            this.f12727M = true;
            this.f12725K = 0;
            if (licenseResponseItem != null) {
                String billingSoc = licenseResponseItem.getBillingSoc();
                String licenseState = licenseResponseItem.getLicenseState();
                this.f12740l.setVisibility(0);
                this.f12740l.setText(getString(C1517R.string.my_account_updated_at, m7453K0(licenseResponseItem.getLastUpdated()), m7452L0(licenseResponseItem.getLastUpdated())));
                this.f12725K = (int) MetroLicenseHelper.m5534b(licenseResponseItem);
                z2 = licenseResponseItem.isPending();
                z = licenseResponseItem.isPendingCheckError();
                this.f12720F = "nameid".equalsIgnoreCase(billingSoc) || "BLK2".equalsIgnoreCase(billingSoc) || "CMGR".equalsIgnoreCase(billingSoc);
                this.f12723I = "BLK".equalsIgnoreCase(billingSoc);
                this.f12721G = "trial".equalsIgnoreCase(licenseState);
                this.f12724J = "active".equalsIgnoreCase(licenseState);
                if (this.f12721G) {
                    this.f12724J = true;
                } else {
                    this.f12725K = 0;
                }
            } else {
                this.f12740l.setVisibility(8);
                this.f12725K = 0;
                this.f12726L = false;
                z = false;
            }
            LogUtil.m5643d("MyAccountFragment#updateUI", "isTrial=" + this.f12721G + ", isActive=" + this.f12724J + ", BLK=" + this.f12723I + ", isNameId=" + this.f12720F + ", pending=" + z2);
            m7432f1(getString(MetroLicenseHelper.m5535a(licenseResponseItem)));
            m7450N0();
            if (z) {
                m7421q1();
            } else if (z2) {
                m7414x1();
            } else if (!this.f12724J) {
                m7420r1();
            } else if (this.f12720F) {
                m7417u1(this.f12725K);
            } else if (this.f12721G) {
                m7413y1(this.f12725K);
            } else {
                LogUtil.m5639h("MyAccountFragment#", "Fell through to default account state - Basic.");
                m7420r1();
            }
        }
    }

    /* renamed from: u1 */
    private void m7417u1(int i) {
        LogUtil.m5643d("MyAccountFragment#", "entering updateNameIdUi, days left = [" + i + "]");
        this.f12734f.setVisibility(8);
        this.f12747s.setVisibility(0);
        this.f12749u.setVisibility(0);
        this.f12750v.setVisibility(0);
        this.f12752x.setVisibility(0);
        this.f12748t.setText(C1517R.string.my_account_active_title);
        this.f12748t.setContentDescription(getString(C1517R.string.my_account_active_title));
        this.f12718D.setVisibility(8);
        this.f12753y.setVisibility(8);
        this.f12754z.setVisibility(8);
        m7426l1();
        if (i > 0) {
            this.f12753y.setVisibility(0);
            this.f12754z.setVisibility(0);
            if (i > 1) {
                this.f12753y.setText(getString(C1517R.string.my_account_subscribed_days_left, Integer.valueOf(i)));
                this.f12753y.setContentDescription(getString(C1517R.string.my_account_subscribed_days_left, Integer.valueOf(i)));
            } else {
                this.f12753y.setText(getString(C1517R.string.my_account_subscribed_day_left, Integer.valueOf(i)));
                this.f12753y.setContentDescription(getString(C1517R.string.my_account_subscribed_day_left, Integer.valueOf(i)));
            }
        }
        if (!SubscriptionHelper.m5305w()) {
            this.f12742n.setVisibility(8);
            this.f12743o.setVisibility(8);
            this.f12744p.setVisibility(8);
            this.f12715A.setVisibility(8);
            this.f12746r.setVisibility(0);
            this.f12745q.setVisibility(8);
            this.f12750v.setText(C1517R.string.my_account_free_features_legacy);
            this.f12751w.setText(C1517R.string.premium_feature_list_minus_vmtt);
        }
        if (!this.f12727M) {
            m7419s1();
        }
    }

    /* renamed from: v1 */
    private void m7416v1() {
        this.f12741m.setVisibility(0);
    }

    /* renamed from: w1 */
    private void m7415w1() {
        LogUtil.m5643d("MyAccountFragment#", "entering updateNotStartedTrialUi");
        m7428j1();
        this.f12753y.setVisibility(0);
        this.f12754z.setVisibility(0);
        this.f12753y.setText(C1517R.string.my_account_trial_eligible);
        this.f12753y.setContentDescription(getString(C1517R.string.my_account_trial_eligible));
    }

    /* renamed from: x1 */
    private void m7414x1() {
        LogUtil.m5643d("MyAccountFragment#", "entering updatePendingUi");
        this.f12747s.setVisibility(8);
        this.f12734f.setVisibility(0);
        if (this.f12721G) {
            this.f12735g.setText(C1517R.string.my_account_sub_pending);
            this.f12736h.setText(C1517R.string.my_account_sub_pending_desc_text);
            return;
        }
        this.f12735g.setText(C1517R.string.my_account_sub_pending);
        this.f12736h.setText(C1517R.string.my_account_sub_pending_desc_text);
    }

    /* renamed from: y1 */
    private void m7413y1(int i) {
        LogUtil.m5643d("MyAccountFragment#", "entering updateTrialUi");
        this.f12734f.setVisibility(8);
        this.f12747s.setVisibility(0);
        this.f12748t.setText(C1517R.string.my_account_inactive_title);
        this.f12748t.setContentDescription(getString(C1517R.string.my_account_inactive_title));
        if (i > 0) {
            if (!BuildUtils.m5850d()) {
                m7430h1();
            }
            this.f12753y.setVisibility(0);
            this.f12754z.setVisibility(0);
            if (i > 1) {
                this.f12753y.setText(getString(C1517R.string.my_account_subscribed_days_left, Integer.valueOf(i)));
                this.f12753y.setContentDescription(getString(C1517R.string.my_account_subscribed_days_left, Integer.valueOf(i)));
            } else {
                this.f12753y.setText(getString(C1517R.string.my_account_subscribed_day_left, Integer.valueOf(i)));
                this.f12753y.setContentDescription(getString(C1517R.string.my_account_subscribed_day_left, Integer.valueOf(i)));
            }
        }
        if (this.f12727M) {
            m7427k1();
        } else {
            m7451M0();
        }
        if (this.f12728N) {
            m7416v1();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z1 */
    public void m7412z1(RealmResults<TmoUserStatus> realmResults) {
        boolean z;
        boolean z2;
        LogUtil.m5643d("MyAccountFragment#updateUI", "started");
        if (!BuildUtils.m5850d()) {
            TmoUserStatus.SubscriptionType subscriptionType = TmoUserStatus.SubscriptionType.UNKNOWN;
            TmoUserStatus.SubscriptionStatus subscriptionStatus = TmoUserStatus.SubscriptionStatus.UNKNOWN;
            this.f12727M = true;
            this.f12725K = 0;
            TmoUserStatus tmoUserStatus = realmResults.isEmpty() ? null : realmResults.get(0);
            LogUtil.m5643d("MyAccountFragment#updateUI", "tmoUserStatus -> " + tmoUserStatus);
            if (tmoUserStatus != null) {
                this.f12740l.setVisibility(0);
                this.f12740l.setText(getString(C1517R.string.my_account_updated_at, m7453K0(tmoUserStatus.getUpdatedAt()), m7452L0(tmoUserStatus.getUpdatedAt())));
                subscriptionStatus = TmoUserStatus.SubscriptionStatus.fromStatusText(tmoUserStatus.getStatusText());
                subscriptionType = TmoUserStatus.SubscriptionType.fromTypeLetter(tmoUserStatus.getTypeLetter());
                this.f12727M = tmoUserStatus.isEligible();
                this.f12726L = tmoUserStatus.isBundled();
                z = tmoUserStatus.isPendingCheckError();
                z2 = tmoUserStatus.isPending();
                this.f12729O = subscriptionStatus == TmoUserStatus.SubscriptionStatus.NOT_FOUND && this.f12727M;
                this.f12725K = tmoUserStatus.getDaysLeft();
                this.f12730P = SubscriptionHelper.m5321g(tmoUserStatus);
            } else {
                this.f12740l.setVisibility(8);
                this.f12729O = false;
                this.f12727M = true;
                this.f12725K = 0;
                this.f12726L = false;
                this.f12730P = false;
                z = false;
                z2 = false;
            }
            this.f12721G = subscriptionType == TmoUserStatus.SubscriptionType.FREE;
            this.f12724J = subscriptionStatus == TmoUserStatus.SubscriptionStatus.ACTIVE;
            this.f12726L = subscriptionType == TmoUserStatus.SubscriptionType.PREMIUM_BUNDLED || subscriptionType == TmoUserStatus.SubscriptionType.REDUCED_BUNDLED || this.f12726L;
            this.f12728N = m7425m1(tmoUserStatus);
            boolean z3 = true;
            if (subscriptionType != TmoUserStatus.SubscriptionType.PREMIUM_BUNDLED) {
                z3 = subscriptionType == TmoUserStatus.SubscriptionType.PREMIUM_STANDALONE;
            }
            this.f12720F = z3;
            if (!this.f12724J) {
                this.f12725K = 0;
            }
            LogUtil.m5643d("MyAccountFragment#updateUI", "isTrial=" + this.f12721G + ", isActive=" + this.f12724J + ", isBundled=" + this.f12726L + ", isEligible=" + this.f12727M + ", nonPah=" + this.f12728N + ", isNameId=" + this.f12720F + ", pending=" + z2);
            m7432f1(getString(TmoUserStatus.getSubscriptionDescription(subscriptionStatus, subscriptionType, z, z2)));
            m7450N0();
            if (z) {
                m7421q1();
            } else if (z2) {
                m7414x1();
            } else if (!this.f12724J) {
                m7420r1();
                if (this.f12729O && !this.f12730P) {
                    m7415w1();
                }
            } else if (this.f12721G) {
                m7413y1(this.f12725K);
            } else if (this.f12720F) {
                m7417u1(this.f12725K);
            } else {
                LogUtil.m5639h("MyAccountFragment#", "Fell through to default account state - Basic.");
                m7420r1();
            }
        }
    }

    /* renamed from: A1 */
    public boolean m7458A1() {
        boolean z = false;
        if (PreferenceUtils.m5394c("PREF_LAST_ACCOUNT_TYPE", 0) == 1) {
            z = true;
        }
        return z;
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.SETTINGS;
    }

    /* renamed from: H0 */
    boolean m7456H0(boolean z) {
        return !WidgetUtils.m5241c0(getActivity(), getChildFragmentManager());
    }

    /* renamed from: J0 */
    void m7454J0() {
        AnalyticsWrapper.m5883E("MyAccountFragment", "end_trial_started");
        this.f12733S = NameIDDialogBuilder.f13943m.m6137g(new Function0() { // from class: com.tmobile.services.nameid.Settings.MyAccount.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MyAccountFragment.this.m7446R0();
            }
        }, C1541h.f12763f).m6160b(getChildFragmentManager());
        LogUtil.m5632o("MyAccountFragment#", "Clicked 'End Trial', showing dialog");
    }

    /* renamed from: R0 */
    public /* synthetic */ Unit m7446R0() {
        LogUtil.m5632o("MyAccountFragment#", "User confirmed end trial");
        AnalyticsWrapper.m5883E("MyAccountFragment", "end_trial_confirmed");
        MyAccountHelper.m5483e(getActivity(), getChildFragmentManager(), this.f12729O, TmoApiWrapper.AccountType.TRIAL, false, false);
        return Unit.f20447a;
    }

    /* renamed from: T0 */
    public /* synthetic */ void m7444T0(TmoUserStatus tmoUserStatus) throws Exception {
        m7455I0();
    }

    /* renamed from: U0 */
    public /* synthetic */ void m7443U0(Context context, Throwable th) throws Exception {
        m7455I0();
        m7424n1(context);
    }

    /* renamed from: V0 */
    public /* synthetic */ void m7442V0(Context context, TmoUserStatus tmoUserStatus) throws Exception {
        m7455I0();
        String errorText = tmoUserStatus.getErrorText();
        if (errorText != null && !errorText.isEmpty() && !errorText.toLowerCase().equals("none")) {
            m7423o1(MataErrorInterpreter.MataAction.GET_USER_STATUS, errorText, context);
        }
    }

    /* renamed from: W0 */
    public /* synthetic */ void m7441W0(Context context, Throwable th) throws Exception {
        LogUtil.m5641f("MyAccountFragment#onRefresh", "Encountered error - " + th.getMessage(), th);
        m7455I0();
        m7424n1(context);
    }

    /* renamed from: X0 */
    public /* synthetic */ void m7440X0(View view) {
        if (!WidgetUtils.m5241c0(getActivity(), getChildFragmentManager())) {
            m7454J0();
        }
    }

    /* renamed from: Y0 */
    public /* synthetic */ void m7439Y0(View view) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(268435456);
            intent.setData(Uri.parse(BuildUtils.m5851c() ? "https://www.t-mobile.com/apps/scam-shield-app" : "https://www.metrobyt-mobile.com/scam-shield-app"));
            AnalyticsWrapper.m5883E("MyAccountFragment", "learn_more");
            startActivity(intent);
        } catch (Exception e) {
            LogUtil.m5641f("MyAccountFragment#setupLearnMoreLink", "Exception thrown while opening link", e);
        }
    }

    /* renamed from: Z0 */
    public /* synthetic */ void m7438Z0(View view) {
        if (!WidgetUtils.m5241c0(getActivity(), getChildFragmentManager()) && this.f12729O) {
            MainApplication.m7553C("app_trial", new String[]{"result"}, new String[]{"accept_account"});
            AnalyticsWrapper.m5883E("MyAccountFragment", "start_trial");
            MyAccountHelper.m5483e(getActivity(), getChildFragmentManager(), this.f12729O, TmoApiWrapper.AccountType.TRIAL, true, true);
        }
    }

    /* renamed from: a1 */
    public /* synthetic */ void m7437a1(View view) {
        if (SubscriptionHelper.m5302z() || SubscriptionHelper.m5321g(null)) {
            NameIDDialogBuilder.f13943m.m6139e(getContext()).m6160b(getChildFragmentManager());
        } else if (!WidgetUtils.m5241c0(getActivity(), getChildFragmentManager())) {
            MainApplication.m7553C("in_app_purchase_initialized", new String[]{"source"}, new String[]{"account_view"});
            if (!BuildUtils.m5850d()) {
                AnalyticsWrapper.m5883E("MyAccountFragment", "subscribe");
                MyAccountHelper.m5483e(getActivity(), getChildFragmentManager(), this.f12729O, TmoApiWrapper.AccountType.NAMEID, true, true);
                return;
            }
            AnalyticsWrapper.m5883E("MyAccountFragment", "metro_subscribe_started");
            MetroLicenseHelper.m5533c(getContext(), "blk2", true);
        }
    }

    /* renamed from: b1 */
    public /* synthetic */ void m7436b1(View view) {
        if (!WidgetUtils.m5241c0(getActivity(), getChildFragmentManager())) {
            m7422p1();
        }
    }

    /* renamed from: c1 */
    public /* synthetic */ Unit m7435c1() {
        boolean d = BuildUtils.m5850d();
        LogUtil.m5632o("MyAccountFragment#", "User confirmed unsubscribe, isNameId? " + this.f12720F);
        AnalyticsWrapper.m5883E("MyAccountFragment", "unsubscribe_confirmed");
        if (this.f12720F) {
            if (!d) {
                MyAccountHelper.m5483e(getActivity(), getChildFragmentManager(), this.f12729O, TmoApiWrapper.AccountType.NAMEID, false, false);
            } else {
                MetroLicenseHelper.m5533c(getContext(), "blk2", false);
            }
        } else if (this.f12723I) {
            MetroLicenseHelper.m5533c(getContext(), "blk", false);
        } else if (!d) {
            MyAccountHelper.m5483e(getActivity(), getChildFragmentManager(), this.f12729O, TmoApiWrapper.AccountType.TRIAL, false, false);
        } else {
            LogUtil.m5643d("MyAccountFragment#onUnsubscribeClicked", "shouldn't be able to unsubscribe from Trial on Metro");
        }
        return Unit.f20447a;
    }

    /* renamed from: e1 */
    public void m7433e1() {
        if (!m7456H0(true)) {
            LogUtil.m5632o("MyAccountFragment#", "Clicked refresh but no network");
            return;
        }
        DialogFragment dialogFragment = this.f12733S;
        if (dialogFragment != null) {
            dialogFragment.dismiss();
        }
        final Context context = getContext();
        EventManager.m5725a(context, "Refresh_Button_Selected");
        AnalyticsWrapper.m5883E("MyAccountFragment", "refresh");
        if (MainApplication.m7527m() != null) {
            this.f12733S = WidgetUtils.m5245a0(getChildFragmentManager(), C1517R.string.my_account_status_updating_dialog, false);
        }
        if ("".equals(PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN"))) {
            LogUtil.m5643d("MyAccountFragment#onRefresh", "Registering with FO backend - user token is empty");
            FoRegistrationHelper.m5693m(getContext());
            TmoApiWrapper.m6620t(new Consumer() { // from class: com.tmobile.services.nameid.Settings.MyAccount.m
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MyAccountFragment.this.m7444T0((TmoUserStatus) obj);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.Settings.MyAccount.g
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MyAccountFragment.this.m7443U0(context, (Throwable) obj);
                }
            }, null);
        } else {
            LogUtil.m5632o("MyAccountFragment#", "Refreshing Tmobile user status");
            TmoApiWrapper.m6620t(new Consumer() { // from class: com.tmobile.services.nameid.Settings.MyAccount.j
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MyAccountFragment.this.m7442V0(context, (TmoUserStatus) obj);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.Settings.MyAccount.o
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MyAccountFragment.this.m7441W0(context, (Throwable) obj);
                }
            }, null);
        }
        new Handler().postDelayed(new Runnable() { // from class: com.tmobile.services.nameid.Settings.MyAccount.k
            @Override // java.lang.Runnable
            public final void run() {
                MyAccountFragment.this.m7455I0();
            }
        }, 15000L);
    }

    /* renamed from: n1 */
    void m7424n1(@Nullable Context context) {
        LogUtil.m5632o("MyAccountFragment#", "Encountered error getting user status");
        if (context != null && PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false) && isAdded()) {
            NameIDDialogBuilder.f13943m.m6125s().m6160b(getChildFragmentManager());
        }
    }

    /* renamed from: o1 */
    void m7423o1(MataErrorInterpreter.MataAction mataAction, String str, @Nullable Context context) {
        LogUtil.m5632o("MyAccountFragment#", "MATA error in user status response: " + mataAction.name() + "; " + str);
        if (context != null && PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false) && isAdded()) {
            NameIDDialogBuilder.f13943m.m6134j(mataAction, str, context).m6160b(getChildFragmentManager());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5639h("MyAccountFragment##onCreate", "created");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(C1517R.layout.fragment_my_account, viewGroup, false);
        LogUtil.m5639h("MyAccountFragment##onCreateView", "created view");
        m7457G0(inflate);
        EventManager.m5725a(getActivity(), "My_Account_View_Entered");
        if (BuildUtils.m5850d()) {
            this.f12722H = true;
            this.f12748t.setTextColor(getResources().getColor(C1517R.C1518color.deep_purple));
        }
        if (!this.f12722H) {
            Realm f = ((MainActivity) getContext()).m7593f();
            if (f == null || f.isClosed()) {
                LogUtil.m5643d("MyAccountFragment#onCreateView", "realm is null.");
            } else {
                RealmResults<TmoUserStatus> E = f.m3053Q0(TmoUserStatus.class).m2918E();
                this.f12731Q = E;
                m7412z1(E);
                LogUtil.m5643d("MyAccountFragment#onCreateView", "adding TMOUserStatus change listener");
                this.f12731Q.m2865v(new RealmChangeListener() { // from class: com.tmobile.services.nameid.Settings.MyAccount.d
                    @Override // io.realm.RealmChangeListener
                    /* renamed from: a */
                    public final void mo2506a(Object obj) {
                        MyAccountFragment.this.m7412z1((RealmResults) obj);
                    }
                });
            }
        } else {
            Realm f2 = ((MainActivity) getContext()).m7593f();
            if (f2 == null || f2.isClosed()) {
                LogUtil.m5643d("MyAccountFragment#onCreateView", "realm is null.");
            } else {
                RealmResults<LicenseResponseItem> E2 = f2.m3053Q0(LicenseResponseItem.class).m2918E();
                this.f12732R = E2;
                m7418t1(E2);
                LogUtil.m5643d("MyAccountFragment#onCreateView", "Adding metro license change listener");
                this.f12732R.m2865v(new RealmChangeListener() { // from class: com.tmobile.services.nameid.Settings.MyAccount.c
                    @Override // io.realm.RealmChangeListener
                    /* renamed from: a */
                    public final void mo2506a(Object obj) {
                        MyAccountFragment.this.m7418t1((RealmResults) obj);
                    }
                });
            }
        }
        m7431g1();
        MainActivity mainActivity = (MainActivity) getContext();
        mainActivity.m7635I0(mainActivity.m7614T());
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        RealmResults<TmoUserStatus> realmResults = this.f12731Q;
        if (realmResults != null && realmResults.isValid()) {
            this.f12731Q.m2870B();
            LogUtil.m5643d("MyAccountFragment#onDetach", "Removing TMOUserStatus change listener");
        }
        RealmResults<LicenseResponseItem> realmResults2 = this.f12732R;
        if (realmResults2 != null && realmResults2.isValid()) {
            this.f12732R.m2870B();
            LogUtil.m5643d("MyAccountFragment#onDetach", "Removing metro license change listener");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        DialogFragment dialogFragment = this.f12733S;
        if (dialogFragment != null) {
            dialogFragment.dismissAllowingStateLoss();
            this.f12733S = null;
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("setting mainActivity Banner visibility to ");
        sb.append(!z);
        sb.append(" from MyAccountFragmnet");
        LogUtil.m5643d("MyAccountFragment#setVisible", sb.toString());
        if (z) {
            ((MainActivity) getContext()).m7635I0(z);
            m7431g1();
        }
    }
}
