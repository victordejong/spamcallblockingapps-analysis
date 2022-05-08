package com.tmobile.services.nameid.utility;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.api.MockTmoApiConfig;
import com.tmobile.services.nameid.api.TmoApiWrapper;
import com.tmobile.services.nameid.model.TmoUserStatus;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b1\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\r\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\r\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\r\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0004R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001f\u001a\u00020\u001e8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010$\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010\u001dR\u0016\u0010%\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b%\u0010\u001aR\u0016\u0010'\u001a\u00020&8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\"\u0010/\u001a\u000e\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u00020.0,8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100¨\u00062"}, d2 = {"Lcom/tmobile/services/nameid/utility/DebugFragment;", "Landroidx/fragment/app/Fragment;", "", "loadMsisdn", "()V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onDestroyView", "selectAccountRadioButton", "selectMataUrlRadioButton", "updateAll", "updateMataSource", "updateMockAccountStatus", "updateMsisdn", "", "LOG_TAG", "Ljava/lang/String;", "Landroid/widget/RadioGroup;", "accountRadioGroup", "Landroid/widget/RadioGroup;", "Landroid/widget/RadioGroup$OnCheckedChangeListener;", "accountRadioGroupListener", "Landroid/widget/RadioGroup$OnCheckedChangeListener;", "Landroid/widget/TextView;", "editRealmLink", "Landroid/widget/TextView;", "Landroid/view/View$OnClickListener;", "editRealmLinkListener", "Landroid/view/View$OnClickListener;", "mataRadioGroupListener", "mataURLRadioGroup", "Landroid/widget/EditText;", "msisdnEditText", "Landroid/widget/EditText;", "Landroid/view/View$OnKeyListener;", "msisdnTextListener", "Landroid/view/View$OnKeyListener;", "", "", "Lcom/tmobile/services/nameid/api/MockTmoApiConfig$StatusConfig;", "radioButtonValue", "Ljava/util/Map;", "<init>", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DebugFragment.class */
public final class DebugFragment extends Fragment {

    /* renamed from: g */
    private RadioGroup f14261g;

    /* renamed from: h */
    private RadioGroup f14262h;

    /* renamed from: i */
    private EditText f14263i;

    /* renamed from: j */
    private TextView f14264j;

    /* renamed from: l */
    private final Map<Integer, MockTmoApiConfig.StatusConfig> f14266l;

    /* renamed from: p */
    private HashMap f14270p;

    /* renamed from: f */
    private final String f14260f = "DebugFragment#";

    /* renamed from: k */
    private final View.OnClickListener f14265k = new View.OnClickListener() { // from class: com.tmobile.services.nameid.utility.DebugFragment$editRealmLinkListener$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            FragmentActivity activity = DebugFragment.this.getActivity();
            if (activity != null) {
                MainActivity.m7640G(activity);
                return;
            }
            throw new NullPointerException("null cannot be cast to non-null type android.content.Context");
        }
    };

    /* renamed from: m */
    private final RadioGroup.OnCheckedChangeListener f14267m = new RadioGroup.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.utility.DebugFragment$accountRadioGroupListener$1
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public final void onCheckedChanged(RadioGroup radioGroup, int i) {
            DebugFragment.this.m5769N0();
        }
    };

    /* renamed from: n */
    private final RadioGroup.OnCheckedChangeListener f14268n = new RadioGroup.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.utility.DebugFragment$mataRadioGroupListener$1
        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public final void onCheckedChanged(RadioGroup radioGroup, int i) {
            DebugFragment.this.m5770M0();
        }
    };

    /* renamed from: o */
    private final View.OnKeyListener f14269o = new View.OnKeyListener() { // from class: com.tmobile.services.nameid.utility.DebugFragment$msisdnTextListener$1
        @Override // android.view.View.OnKeyListener
        public final boolean onKey(View view, int i, KeyEvent keyEvent) {
            DebugFragment.this.m5768O0();
            return false;
        }
    };

    public DebugFragment() {
        Map<Integer, MockTmoApiConfig.StatusConfig> h;
        h = MapsKt__MapsKt.m2083h(TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_prepaid), MockTmoApiConfig.StatusConfig.PREPAID), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_trial_eligible), MockTmoApiConfig.StatusConfig.TRIAL_ELIGIBLE), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_active), MockTmoApiConfig.StatusConfig.ACTIVE), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_bundle_vvm), MockTmoApiConfig.StatusConfig.BUNDLE_VVM), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_vvm_only), MockTmoApiConfig.StatusConfig.VVM_ONLY), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_inactive_paid), MockTmoApiConfig.StatusConfig.INACTIVE_PAID), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_inactive_trial), MockTmoApiConfig.StatusConfig.INACTIVE_TRIAL), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_pending_paid), MockTmoApiConfig.StatusConfig.PENDING_PAID), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_pending_trial), MockTmoApiConfig.StatusConfig.PENDING_TRIAL), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_trial_30), MockTmoApiConfig.StatusConfig.TRIAL_30), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_trial_10), MockTmoApiConfig.StatusConfig.TRIAL_10), TuplesKt.m2469a(Integer.valueOf((int) C1517R.C1520id.debug_account_state_radio_button_non_pah), MockTmoApiConfig.StatusConfig.NON_PAH));
        this.f14266l = h;
    }

    /* renamed from: I0 */
    private final void m5774I0() {
        String h = PreferenceUtils.m5389h("PREF_LAB_MSISDN", "");
        EditText editText = this.f14263i;
        if (editText != null) {
            editText.setText(h, TextView.BufferType.EDITABLE);
        } else {
            Intrinsics.m1814u("msisdnEditText");
            throw null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x015e  */
    /* renamed from: J0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m5773J0() {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.DebugFragment.m5773J0():void");
    }

    /* renamed from: K0 */
    private final void m5772K0() {
        int i = PreferenceUtils.m5395b("PREF_USE_LAB_MATA", false) ? C1517R.C1520id.debug_mata_radio_button_lab : PreferenceUtils.m5395b("PREF_USE_MOCK_MATA", false) ? C1517R.C1520id.debug_mata_radio_button_local : C1517R.C1520id.debug_mata_radio_button_prod;
        RadioGroup radioGroup = this.f14261g;
        if (radioGroup != null) {
            radioGroup.check(i);
        } else {
            Intrinsics.m1814u("mataURLRadioGroup");
            throw null;
        }
    }

    /* renamed from: G0 */
    public void m5776G0() {
        HashMap hashMap = this.f14270p;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: L0 */
    public final void m5771L0() {
        m5770M0();
        m5769N0();
        m5768O0();
        TmoApiWrapper.m6620t(new Consumer<TmoUserStatus>() { // from class: com.tmobile.services.nameid.utility.DebugFragment$updateAll$1
            /* renamed from: a */
            public final void accept(TmoUserStatus tmoUserStatus) {
                String str;
                str = DebugFragment.this.f14260f;
                LogUtil.m5643d(str, "getUserStatus succeeded");
            }
        }, new Consumer<Throwable>() { // from class: com.tmobile.services.nameid.utility.DebugFragment$updateAll$2
            /* renamed from: a */
            public final void accept(Throwable th) {
                String str;
                str = DebugFragment.this.f14260f;
                LogUtil.m5643d(str, "getUserStatus failed");
            }
        }, null);
    }

    /* renamed from: M0 */
    public final void m5770M0() {
        RadioGroup radioGroup = this.f14261g;
        if (radioGroup != null) {
            int checkedRadioButtonId = radioGroup.getCheckedRadioButtonId();
            boolean z = true;
            PreferenceUtils.m5386k("PREF_USE_LAB_MATA", checkedRadioButtonId == 2131231083);
            if (checkedRadioButtonId != 2131231084) {
                z = false;
            }
            PreferenceUtils.m5386k("PREF_USE_MOCK_MATA", z);
            return;
        }
        Intrinsics.m1814u("mataURLRadioGroup");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        if (r4 != null) goto L_0x0032;
     */
    /* renamed from: N0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m5769N0() {
        /*
            r3 = this;
            r0 = r3
            android.widget.RadioGroup r0 = r0.f14262h
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0039
            r0 = r4
            int r0 = r0.getCheckedRadioButtonId()
            r5 = r0
            r0 = r3
            java.util.Map<java.lang.Integer, com.tmobile.services.nameid.api.MockTmoApiConfig$StatusConfig> r0 = r0.f14266l
            r1 = r5
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            java.lang.Object r0 = r0.get(r1)
            com.tmobile.services.nameid.api.MockTmoApiConfig$StatusConfig r0 = (com.tmobile.services.nameid.api.MockTmoApiConfig.StatusConfig) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002f
            r0 = r4
            java.lang.String r0 = r0.name()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002f
            goto L_0x0032
        L_0x002f:
            java.lang.String r0 = ""
            r4 = r0
        L_0x0032:
            java.lang.String r0 = "PREF_MOCK_MATA_ACCOUNT_STATUS"
            r1 = r4
            com.tmobile.services.nameid.utility.PreferenceUtils.m5383n(r0, r1)
            return
        L_0x0039:
            java.lang.String r0 = "accountRadioGroup"
            kotlin.jvm.internal.Intrinsics.m1814u(r0)
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.utility.DebugFragment.m5769N0():void");
    }

    /* renamed from: O0 */
    public final void m5768O0() {
        EditText editText = this.f14263i;
        if (editText != null) {
            PreferenceUtils.m5383n("PREF_LAB_MSISDN", editText.getText().toString());
        } else {
            Intrinsics.m1814u("msisdnEditText");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.m1830e(inflater, "inflater");
        View inflate = inflater.inflate(C1517R.layout.fragment_debug, viewGroup, false);
        View findViewById = inflate.findViewById(C1517R.C1520id.debug_mata_url_radio_group);
        Intrinsics.m1831d(findViewById, "view.findViewById(R.id.debug_mata_url_radio_group)");
        RadioGroup radioGroup = (RadioGroup) findViewById;
        this.f14261g = radioGroup;
        if (radioGroup != null) {
            radioGroup.setOnCheckedChangeListener(this.f14268n);
            View findViewById2 = inflate.findViewById(C1517R.C1520id.debug_account_state_radio_group);
            Intrinsics.m1831d(findViewById2, "view.findViewById(R.id.d…ccount_state_radio_group)");
            RadioGroup radioGroup2 = (RadioGroup) findViewById2;
            this.f14262h = radioGroup2;
            if (radioGroup2 != null) {
                radioGroup2.setOnCheckedChangeListener(this.f14267m);
                View findViewById3 = inflate.findViewById(C1517R.C1520id.debug_msisdn_edit_text);
                Intrinsics.m1831d(findViewById3, "view.findViewById(R.id.debug_msisdn_edit_text)");
                EditText editText = (EditText) findViewById3;
                this.f14263i = editText;
                if (editText != null) {
                    editText.setOnKeyListener(this.f14269o);
                    View findViewById4 = inflate.findViewById(C1517R.C1520id.edit_realm_link);
                    Intrinsics.m1831d(findViewById4, "view. findViewById(R.id.edit_realm_link)");
                    TextView textView = (TextView) findViewById4;
                    this.f14264j = textView;
                    if (textView != null) {
                        textView.setOnClickListener(this.f14265k);
                        m5772K0();
                        m5773J0();
                        m5774I0();
                        return inflate;
                    }
                    Intrinsics.m1814u("editRealmLink");
                    throw null;
                }
                Intrinsics.m1814u("msisdnEditText");
                throw null;
            }
            Intrinsics.m1814u("accountRadioGroup");
            throw null;
        }
        Intrinsics.m1814u("mataURLRadioGroup");
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        m5771L0();
        m5776G0();
    }
}
