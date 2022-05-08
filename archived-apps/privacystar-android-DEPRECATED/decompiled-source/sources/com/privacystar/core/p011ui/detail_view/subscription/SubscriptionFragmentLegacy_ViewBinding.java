package com.privacystar.core.p011ui.detail_view.subscription;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.support.p004v7.widget.CardView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.rey.material.widget.RadioButton;
/* renamed from: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/subscription/SubscriptionFragmentLegacy_ViewBinding.class */
public class SubscriptionFragmentLegacy_ViewBinding implements Unbinder {
    private SubscriptionFragmentLegacy target;
    private View view2131297304;
    private View view2131297305;
    private View view2131297307;
    private View view2131297308;
    private View view2131297317;
    private View view2131297318;
    private View view2131297321;

    @UiThread
    public SubscriptionFragmentLegacy_ViewBinding(final SubscriptionFragmentLegacy subscriptionFragmentLegacy, View view) {
        this.target = subscriptionFragmentLegacy;
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.subscription_fragment_sub_cancel, "field 'subCancel' and method 'onSubscriptionCancel'");
        subscriptionFragmentLegacy.subCancel = (TextView) Utils.castView(findRequiredView, C1566R.C1569id.subscription_fragment_sub_cancel, "field 'subCancel'", TextView.class);
        this.view2131297308 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                subscriptionFragmentLegacy.onSubscriptionCancel();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.subscription_fragment_log_current, "field 'logCurrent' and method 'onLogCurrent'");
        subscriptionFragmentLegacy.logCurrent = (TextView) Utils.castView(findRequiredView2, C1566R.C1569id.subscription_fragment_log_current, "field 'logCurrent'", TextView.class);
        this.view2131297307 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                subscriptionFragmentLegacy.onLogCurrent();
            }
        });
        View findRequiredView3 = Utils.findRequiredView(view, C1566R.C1569id.subscription_monthly_premium_container, "field 'monthlyContainer' and method 'onMonthlySubPremium'");
        subscriptionFragmentLegacy.monthlyContainer = (LinearLayout) Utils.castView(findRequiredView3, C1566R.C1569id.subscription_monthly_premium_container, "field 'monthlyContainer'", LinearLayout.class);
        this.view2131297317 = findRequiredView3;
        findRequiredView3.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy_ViewBinding.3
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                subscriptionFragmentLegacy.onMonthlySubPremium();
            }
        });
        View findRequiredView4 = Utils.findRequiredView(view, C1566R.C1569id.subscription_annual_premium_container, "field 'annualContainer' and method 'onAnnualSubPremium'");
        subscriptionFragmentLegacy.annualContainer = (LinearLayout) Utils.castView(findRequiredView4, C1566R.C1569id.subscription_annual_premium_container, "field 'annualContainer'", LinearLayout.class);
        this.view2131297304 = findRequiredView4;
        findRequiredView4.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy_ViewBinding.4
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                subscriptionFragmentLegacy.onAnnualSubPremium();
            }
        });
        subscriptionFragmentLegacy.annualPremiumSubtitle = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.upgrade_annual_premium_subtitle, "field 'annualPremiumSubtitle'", TextView.class);
        View findRequiredView5 = Utils.findRequiredView(view, C1566R.C1569id.subscription_annual_premium_radio, "field 'annualPremiumRadio' and method 'onAnnualSubPremium'");
        subscriptionFragmentLegacy.annualPremiumRadio = (RadioButton) Utils.castView(findRequiredView5, C1566R.C1569id.subscription_annual_premium_radio, "field 'annualPremiumRadio'", RadioButton.class);
        this.view2131297305 = findRequiredView5;
        findRequiredView5.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy_ViewBinding.5
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                subscriptionFragmentLegacy.onAnnualSubPremium();
            }
        });
        View findRequiredView6 = Utils.findRequiredView(view, C1566R.C1569id.subscription_monthly_premium_radio, "field 'monthlyPremiumRadio' and method 'onMonthlySubPremium'");
        subscriptionFragmentLegacy.monthlyPremiumRadio = (RadioButton) Utils.castView(findRequiredView6, C1566R.C1569id.subscription_monthly_premium_radio, "field 'monthlyPremiumRadio'", RadioButton.class);
        this.view2131297318 = findRequiredView6;
        findRequiredView6.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy_ViewBinding.6
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                subscriptionFragmentLegacy.onMonthlySubPremium();
            }
        });
        subscriptionFragmentLegacy.subscriptionStatusCard = (FrameLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.subscription_status_fl, "field 'subscriptionStatusCard'", FrameLayout.class);
        subscriptionFragmentLegacy.subscriptionStatusTv = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.subscription_status_tv, "field 'subscriptionStatusTv'", TextView.class);
        View findRequiredView7 = Utils.findRequiredView(view, C1566R.C1569id.subscription_upgrade_cv, "field 'upgradeButton' and method 'onUpgradeClicked'");
        subscriptionFragmentLegacy.upgradeButton = (CardView) Utils.castView(findRequiredView7, C1566R.C1569id.subscription_upgrade_cv, "field 'upgradeButton'", CardView.class);
        this.view2131297321 = findRequiredView7;
        findRequiredView7.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy_ViewBinding.7
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                subscriptionFragmentLegacy.onUpgradeClicked();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SubscriptionFragmentLegacy subscriptionFragmentLegacy = this.target;
        if (subscriptionFragmentLegacy == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        subscriptionFragmentLegacy.subCancel = null;
        subscriptionFragmentLegacy.logCurrent = null;
        subscriptionFragmentLegacy.monthlyContainer = null;
        subscriptionFragmentLegacy.annualContainer = null;
        subscriptionFragmentLegacy.annualPremiumSubtitle = null;
        subscriptionFragmentLegacy.annualPremiumRadio = null;
        subscriptionFragmentLegacy.monthlyPremiumRadio = null;
        subscriptionFragmentLegacy.subscriptionStatusCard = null;
        subscriptionFragmentLegacy.subscriptionStatusTv = null;
        subscriptionFragmentLegacy.upgradeButton = null;
        this.view2131297308.setOnClickListener(null);
        this.view2131297308 = null;
        this.view2131297307.setOnClickListener(null);
        this.view2131297307 = null;
        this.view2131297317.setOnClickListener(null);
        this.view2131297317 = null;
        this.view2131297304.setOnClickListener(null);
        this.view2131297304 = null;
        this.view2131297305.setOnClickListener(null);
        this.view2131297305 = null;
        this.view2131297318.setOnClickListener(null);
        this.view2131297318 = null;
        this.view2131297321.setOnClickListener(null);
        this.view2131297321 = null;
    }
}
