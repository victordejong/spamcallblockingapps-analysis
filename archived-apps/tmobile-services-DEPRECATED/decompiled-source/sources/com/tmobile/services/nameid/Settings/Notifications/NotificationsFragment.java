package com.tmobile.services.nameid.Settings.Notifications;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.TabFragmentInterface;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.Feature;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.SwitchSettingItem;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmResults;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/Notifications/NotificationsFragment.class */
public class NotificationsFragment extends Fragment implements TabFragmentInterface {

    /* renamed from: f */
    SwitchSettingItem f12782f;

    /* renamed from: g */
    SwitchSettingItem f12783g;

    /* renamed from: h */
    SwitchSettingItem f12784h;

    /* renamed from: i */
    SwitchSettingItem f12785i;

    /* renamed from: G0 */
    private void m7409G0(View view) {
        this.f12782f = (SwitchSettingItem) view.findViewById(C1517R.C1520id.notifications_setting_scam_blocked);
        this.f12783g = (SwitchSettingItem) view.findViewById(C1517R.C1520id.notifications_setting_block_list_blocked);
        this.f12784h = (SwitchSettingItem) view.findViewById(C1517R.C1520id.notifications_setting_category_voicemail);
        this.f12785i = (SwitchSettingItem) view.findViewById(C1517R.C1520id.notifications_setting_message_blocked);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(C1517R.C1520id.trial_days_left_banner_container);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J0 */
    public void m7406J0(View view) {
        if (view instanceof SwitchSettingItem) {
            boolean z = false;
            Realm G0 = Realm.m3064G0();
            try {
                TmoUserStatus tmoUserStatus = (TmoUserStatus) G0.m3053Q0(TmoUserStatus.class).m2916G();
                if (tmoUserStatus != null) {
                    z = SubscriptionHelper.m5316l(tmoUserStatus);
                }
                if (G0 != null) {
                    G0.close();
                }
                SwitchSettingItem switchSettingItem = (SwitchSettingItem) view;
                PreferenceUtils.m5386k(switchSettingItem.getPreference() + "_USER_DESIRED", !switchSettingItem.m5291e());
                if (!z) {
                    WidgetUtils.m5235f0(getActivity(), getChildFragmentManager(), null, null);
                } else {
                    switchSettingItem.m5293c();
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K0 */
    public void m7405K0(RealmResults<TmoUserStatus> realmResults) {
        boolean z = !realmResults.isEmpty() && TmoUserStatus.SubscriptionStatus.fromStatusText(realmResults.get(0).getStatusText()) == TmoUserStatus.SubscriptionStatus.ACTIVE;
        this.f12782f.m5292d(false);
        this.f12783g.m5292d(!z);
        this.f12784h.m5292d(!z);
        this.f12785i.m5292d(!z);
        this.f12782f.m5287i();
        this.f12783g.m5287i();
        this.f12784h.m5287i();
        this.f12785i.m5287i();
    }

    /* renamed from: L0 */
    private void m7404L0() {
        if (getContext() instanceof MainActivity) {
            MainActivity mainActivity = (MainActivity) getContext();
            if (mainActivity.m7571r(mo6305F0())) {
                mainActivity.m7625N0(C1517R.string.setting_notifications_title);
            }
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    /* renamed from: F0 */
    public MainActivity.Tabs mo6305F0() {
        return MainActivity.Tabs.SETTINGS;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nonnull Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.m5639h("NotificationsFragment#onCreate", "created");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, @Nonnull ViewGroup viewGroup, @Nonnull Bundle bundle) {
        View inflate = layoutInflater.inflate(C1517R.layout.fragment_notifications, viewGroup, false);
        m7409G0(inflate);
        EventManager.m5725a(getActivity(), "Notifications_View_Entered");
        this.f12782f.setContent(getContext(), C1517R.string.notifications_settings_scam_block, "PREF_NOTIFICATION_SCAM_BLOCKED");
        this.f12783g.setContent(getContext(), C1517R.string.notifications_settings_block_list_blocked, "PREF_NOTIFICATION_BLOCK_LIST_BLOCKED");
        this.f12784h.setContent(getContext(), C1517R.string.notifications_settings_category_voicemail, "PREF_NOTIFICATION_CATEGORY_VOICEMAIL");
        this.f12785i.setContent(getContext(), C1517R.string.notifications_settings_message_blocked, "PREF_NOTIFICATION_MESSAGE_BLOCKED");
        this.f12783g.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.Notifications.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotificationsFragment.this.m7406J0(view);
            }
        });
        this.f12784h.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.Notifications.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotificationsFragment.this.m7406J0(view);
            }
        });
        this.f12785i.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.Notifications.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NotificationsFragment.this.m7406J0(view);
            }
        });
        if (Feature.PNB_MESSAGING.isOwned()) {
            this.f12785i.setVisibility(0);
        } else {
            this.f12785i.setVisibility(8);
        }
        m7404L0();
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Realm f = ((MainActivity) getContext()).m7593f();
        if (f != null) {
            RealmResults<TmoUserStatus> E = f.m3053Q0(TmoUserStatus.class).m2918E();
            E.m2865v(new RealmChangeListener() { // from class: com.tmobile.services.nameid.Settings.Notifications.b
                @Override // io.realm.RealmChangeListener
                /* renamed from: a */
                public final void mo2506a(Object obj) {
                    NotificationsFragment.this.m7405K0((RealmResults) obj);
                }
            });
            m7405K0(E);
        }
    }

    @Override // com.tmobile.services.nameid.TabFragmentInterface
    public void setVisible(boolean z) {
        if (z) {
            this.f12782f.m5287i();
            this.f12783g.m5287i();
            this.f12784h.m5287i();
            this.f12785i.m5287i();
            m7404L0();
        }
    }
}
