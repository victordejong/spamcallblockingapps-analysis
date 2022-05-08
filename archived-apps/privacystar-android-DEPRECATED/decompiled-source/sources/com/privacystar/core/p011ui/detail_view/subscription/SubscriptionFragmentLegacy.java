package com.privacystar.core.p011ui.detail_view.subscription;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.StringRes;
import android.support.design.widget.Snackbar;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentTransaction;
import android.support.p004v7.widget.CardView;
import android.text.Html;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.PlayStoreReceipt;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.helper.PlayStoreReceiptRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.home.HomeActivity;
import com.privacystar.core.p011ui.util.DialogUtil;
import com.privacystar.core.p011ui.widgets.ProvisioningConfirmationFragment;
import com.privacystar.core.p011ui.widgets.dialog.ButtonAction;
import com.privacystar.core.p011ui.widgets.dialog.DialogButton;
import com.privacystar.core.p011ui.widgets.dialog.DialogType;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.analytics.apptentive.ApptentiveConstants;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import com.privacystar.core.service.jobs.GooglePlayCancelJob;
import com.privacystar.core.service.network.handler.CallWatchPaymentHandler;
import com.privacystar.core.service.network.model.request.CallWatchPaymentRequest;
import com.privacystar.core.service.network.model.response.CallWatchPaymentResponse;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.DateUtil;
import com.privacystar.core.util.RealmUtil;
import com.privacystar.core.util.SubscriptionUtil;
import com.privacystar.core.util.ThemeUtil;
import com.rey.material.widget.RadioButton;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.PublishSubject;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmObject;
import io.realm.RealmResults;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import retrofit2.Response;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/subscription/SubscriptionFragmentLegacy.class */
public class SubscriptionFragmentLegacy extends DetailFragment {
    @BindView(C1566R.C1569id.subscription_annual_premium_container)
    LinearLayout annualContainer;
    @BindView(C1566R.C1569id.subscription_annual_premium_radio)
    RadioButton annualPremiumRadio;
    @BindView(C1566R.C1569id.upgrade_annual_premium_subtitle)
    TextView annualPremiumSubtitle;
    RealmResults<PlayStoreReceipt> gpReceipts;
    @BindView(C1566R.C1569id.subscription_fragment_log_current)
    TextView logCurrent;
    @BindView(C1566R.C1569id.subscription_monthly_premium_container)
    LinearLayout monthlyContainer;
    @BindView(C1566R.C1569id.subscription_monthly_premium_radio)
    RadioButton monthlyPremiumRadio;
    private String pendingProductId;
    private String selectedProductId;
    @BindView(C1566R.C1569id.subscription_fragment_sub_cancel)
    TextView subCancel;
    Subscription subscription;
    @BindView(C1566R.C1569id.subscription_status_fl)
    FrameLayout subscriptionStatusCard;
    @BindView(C1566R.C1569id.subscription_status_tv)
    TextView subscriptionStatusTv;
    @BindView(C1566R.C1569id.subscription_upgrade_cv)
    CardView upgradeButton;
    private boolean purchasePending = false;
    private boolean usesGP = true;
    private Collection<Disposable> disposables = new HashSet();
    private PublishSubject<Response<CallWatchPaymentResponse>> responsePubSub = PublishSubject.create();
    private RealmChangeListener<Subscription> subscriptionListener = new RealmChangeListener(this) { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy$$Lambda$0
        private final SubscriptionFragmentLegacy arg$1;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.arg$1 = this;
        }

        @Override // io.realm.RealmChangeListener
        public void onChange(Object obj) {
            this.arg$1.lambda$new$0$SubscriptionFragmentLegacy((Subscription) obj);
        }
    };
    private RealmChangeListener<RealmResults<PlayStoreReceipt>> gpReceiptsListener = new RealmChangeListener(this) { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy$$Lambda$1
        private final SubscriptionFragmentLegacy arg$1;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.arg$1 = this;
        }

        @Override // io.realm.RealmChangeListener
        public void onChange(Object obj) {
            this.arg$1.lambda$new$1$SubscriptionFragmentLegacy((RealmResults) obj);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/subscription/SubscriptionFragmentLegacy$1.class */
    public static /* synthetic */ class C16331 {

        /* renamed from: $SwitchMap$com$privacystar$core$service$network$model$response$CallWatchPaymentResponse$DPIResultCode */
        static final /* synthetic */ int[] f291xc7424fa4 = new int[CallWatchPaymentResponse.DPIResultCode.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.CANCEL_TRANS_KEY_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.SUCCESS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.USER_ACCT_HAS_SOC.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.ADV_PAYMENT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.USER_ACCT_FUTURE_CHARGE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.PREV_PURCHASE_CONCLUDED_EARLY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.PREMIUM_CID_SOC.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.USER_ACCT_INTERRUPTED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.USER_ACCT_INELIGIBLE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.USER_ACCT_NOT_SPG.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.INTERNAL_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f291xc7424fa4[CallWatchPaymentResponse.DPIResultCode.UNKNOWN.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    private Subscription getGPReceipts() {
        if (this.gpReceipts == null || !RealmUtil.isSafe(this.gpReceipts)) {
            this.gpReceipts = PlayStoreReceiptRealm.getReceipts(getRealm());
            if (this.gpReceipts != null) {
                Timber.m28v("Adding changeListener to gpReceipts.", new Object[0]);
                this.gpReceipts.addChangeListener(this.gpReceiptsListener);
            }
        }
        return this.subscription;
    }

    private Subscription getSubscription() {
        if (this.subscription == null || !RealmUtil.isSafe((RealmObject) this.subscription) || !this.subscription.isValid()) {
            this.subscription = SubscriptionRealm.getSubscription(getRealm());
            if (this.subscription != null) {
                this.subscription.addChangeListener(this.subscriptionListener);
            }
        }
        return this.subscription;
    }

    private void onProvisionImpl(String str) {
        Timber.m28v("Attempting to provision [%s]", str);
        CallWatchPaymentHandler.getInstance().generateAndSendRequest(getContext(), CallWatchPaymentRequest.CallWatchPaymentActionType.PURCHASE, this.responsePubSub);
    }

    private void onProvisionRequested(PublishSubject<Response<CallWatchPaymentResponse>> publishSubject, String str) {
        Timber.m28v("Provisioning of [%s] initialized.", str);
        showProvisionDialog(publishSubject, str);
    }

    private void onSubImpl(String str) {
        if (str == null) {
            Timber.m25w("Tried to subscribe to a null product ID.", new Object[0]);
            return;
        }
        Timber.m37d("Attempting purchase of sku [%s]", str);
        storeAttemptedPurchaseAction(str);
        PreferenceUtil.putLastPurchaseSucceeded(false);
        PreferenceUtil.putLastPurchaseFailed(false);
        BillingHelper.attemptPurchase(getContext(), str, IABV3Helper.SkuType.SUBSCRIPTION);
    }

    private void presentPostPurchaseDialog() {
        if (this.usesGP) {
            if (!this.purchasePending || this.pendingProductId == null) {
                return;
            }
        } else if (!this.purchasePending) {
            return;
        }
        updateGPCache(getContext());
        this.purchasePending = false;
        if (PreferenceUtil.getLastPurchaseSucceeded()) {
            Timber.m37d("Last purchase succeeded. Showing upgrade success dialog.", new Object[0]);
            showUpgradeSuccessDialog();
        } else if (this.usesGP && PreferenceUtil.getLastPurchaseFailed()) {
            Timber.m37d("Last purchase failed. Showing upgrade success dialog.", new Object[0]);
            showUpgradeFailureDialog(this.pendingProductId);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: processCWResponse */
    public void bridge$lambda$0$SubscriptionFragmentLegacy(Response<CallWatchPaymentResponse> response) {
        if (response == null) {
            Timber.m37d("Payment response was null.", new Object[0]);
        } else if (!response.isSuccessful() || response.body() == null) {
            Timber.m31i("Processing unsuccessful paymentResponse request. [%s]", Integer.valueOf(response.code()));
            showProcessorErrorDialog();
        } else {
            Timber.m37d("Processing successful paymentResponse.", new Object[0]);
            processDPICode(response.body());
        }
    }

    private void processDPICode(CallWatchPaymentResponse callWatchPaymentResponse) {
        CallWatchPaymentResponse.DPIResultCode resultCode = callWatchPaymentResponse.getResultCode();
        CallWatchPaymentResponse.DPIResultCode dPIResultCode = resultCode;
        if (resultCode == null) {
            dPIResultCode = CallWatchPaymentResponse.DPIResultCode.UNKNOWN;
        }
        Timber.m31i("Processing DPI code [%d][%s]", Integer.valueOf(dPIResultCode.getValue()), dPIResultCode);
        if (!isVisible()) {
            Timber.m37d("Subscription is not currently in the foreground, won't show result dialog.", new Object[0]);
            return;
        }
        switch (C16331.f291xc7424fa4[dPIResultCode.ordinal()]) {
            case 1:
                Timber.m31i("Received response that should only come from cancellation, not subscription.", new Object[0]);
                return;
            case 2:
            case 3:
                showUpgradeSuccessDialog();
                return;
            case 4:
                showDPIAdvancePayDialog();
                return;
            case 5:
                showDPIFutureDatedDialog();
                return;
            case 6:
                showDPISubscriptionExistsDialog();
                return;
            case 7:
                showDPIPremiumSocDialog();
                return;
            default:
                showProcessorErrorDialog();
                return;
        }
    }

    private void setUpgradeButtonEnabled(boolean z) {
        this.upgradeButton.setEnabled(z);
        this.upgradeButton.setCardBackgroundColor(z ? ThemeUtil.resolveAttributeColor(getContext(), 2130968832) : getResources().getColor(C1566R.color.subscription_button_disabled));
    }

    private void setupButton(boolean z, @StringRes Integer num) {
        if (this.activity != null) {
            this.activity.enableButton(z);
            if (num != null) {
                this.activity.setButtonText(num.intValue());
            }
        }
    }

    private void setupPurchaseListener(boolean z) {
        if (z) {
            Timber.m37d("Initializing GP purchase listener.", new Object[0]);
            getGPReceipts();
        }
    }

    private void setupSubscription() {
        Spanned spanned;
        int i = 0;
        if (this.annualPremiumSubtitle == null || this.subscriptionStatusCard == null || this.subscriptionStatusTv == null || this.monthlyContainer == null || this.annualContainer == null || this.subCancel == null || this.logCurrent == null) {
            Timber.m31i("Subscription UI element was null.", new Object[0]);
        } else if (isAdded()) {
            this.annualPremiumSubtitle.setText(Html.fromHtml(getString(C1566R.string.subscription_annual_premium_subtitle)));
            SubscriptionType subscriptionType = getSubscription() != null ? getSubscription().getSubscriptionType() : SubscriptionType.INACTIVE;
            int subscriptionDaysLeft = (int) SubscriptionRealm.subscriptionDaysLeft(getRealm());
            boolean compareSubscriptionState = SubscriptionRealm.compareSubscriptionState(this.subscription, SubscriptionType.INACTIVE);
            int i2 = C1566R.color.ps3_green_300;
            int i3 = C1566R.C1568drawable.cardview_border_highlight_green;
            if (compareSubscriptionState) {
                i3 = C1566R.C1568drawable.cardview_border_highlight_red;
                i2 = C1566R.color.ps3_red_300;
                spanned = Html.fromHtml(getString(C1566R.string.navigation_drawer_subscription_expired));
                Timber.m37d("Subscription is not active, setting header to: %s.", spanned);
            } else if (SubscriptionRealm.isSubscriptionActive(this.subscription)) {
                spanned = Html.fromHtml(getString(C1566R.string.navigation_drawer_subscription_active));
            } else {
                String string = getString(C1566R.string.subscription_type_trial);
                spanned = Html.fromHtml(string + " " + getResources().getQuantityString(C1566R.plurals.subscription_display_long, subscriptionDaysLeft, Integer.valueOf(subscriptionDaysLeft)));
            }
            Timber.m37d("Subscription is %s, setting header to: %s.", subscriptionType.getDisplayName(), spanned);
            this.subscriptionStatusCard.setVisibility(0);
            this.subscriptionStatusCard.setBackgroundResource(i3);
            this.subscriptionStatusTv.setText(spanned);
            this.subscriptionStatusTv.setTextColor(getResources().getColor(i2));
            boolean doesVariantOfferMonthlySubscription = BuildUtil.INSTANCE.doesVariantOfferMonthlySubscription(getContext());
            boolean doesVariantOfferAnnualSubscription = BuildUtil.INSTANCE.doesVariantOfferAnnualSubscription(getContext());
            this.monthlyContainer.setVisibility(doesVariantOfferMonthlySubscription ? 0 : 8);
            this.annualContainer.setVisibility(doesVariantOfferAnnualSubscription ? 0 : 8);
            this.subCancel.setVisibility(BuildUtil.INSTANCE.isDevelopmentBuild() ? 0 : 8);
            TextView textView = this.logCurrent;
            if (!BuildUtil.INSTANCE.isDevelopmentBuild()) {
                i = 8;
            }
            textView.setVisibility(i);
        } else {
            Timber.m31i("Fragment not attached, aborting setup.", new Object[0]);
        }
    }

    private void setupToolbar() {
        this.activity.setDetailToolbarTitle(C1566R.string.subscription_fragment_toolbar_title);
        this.activity.enableToolbarMenu(false);
        this.activity.enableFab(false);
    }

    private void showDPIAdvancePayDialog() {
        DialogButton dialogButton = new DialogButton(getString(C1566R.string.info_dialog_okay), new ButtonAction(this) { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy$$Lambda$3
            private final SubscriptionFragmentLegacy arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public void performAction(Context context) {
                this.arg$1.lambda$showDPIAdvancePayDialog$2$SubscriptionFragmentLegacy(context);
            }
        });
        Intent intent = new Intent(getActivity(), HomeActivity.class);
        intent.addFlags(67108864);
        new InformationDialog.Builder(DialogType.INFORMATION).withBody(ThemeUtil.populateStringWithCarrier(getContext(), C1566R.string.info_dialog_upgrade_alert_body_advance)).withButtons(dialogButton, DialogButton.createFromIntent(getString(C1566R.string.info_dialog_no_thanks), intent)).build().show(getActivity().getSupportFragmentManager(), "processor_advance_pay_fragment");
    }

    private void showDPIFutureDatedDialog() {
        new InformationDialog.Builder(DialogType.INFORMATION).withBody(ThemeUtil.populateStringWithCarrier(getContext(), C1566R.string.info_dialog_upgrade_alert_body_pending)).withButtons(new DialogButton(getString(C1566R.string.info_dialog_okay))).build().show(getActivity().getSupportFragmentManager(), "processor_future_dated_fragment");
    }

    private void showDPIPremiumSocDialog() {
        new InformationDialog.Builder(DialogType.INFORMATION).withBody(getString(C1566R.string.info_dialog_premium_soc_body)).withButtons(new DialogButton(getString(C1566R.string.info_dialog_okay))).build().show(getActivity().getSupportFragmentManager(), "processor_premium_soc_fragment");
    }

    private void showDPISubscriptionExistsDialog() {
        new Date(0L);
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            Date mrcDate = SubscriptionUtil.getMrcDate(SubscriptionRealm.getSubscription(defaultInstance));
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            String string = mrcDate.getTime() <= 0 ? getContext().getResources().getString(C1566R.string.info_dialog_subscription_not_complete_body_no_date) : getContext().getResources().getString(C1566R.string.info_dialog_subscription_not_complete_body_with_date, DateUtil.formatDateSimple(mrcDate));
            Intent intent = new Intent(getActivity(), HomeActivity.class);
            intent.addFlags(67108864);
            new InformationDialog.Builder(DialogType.INFORMATION).withBody(getContext().getResources().getString(C1566R.string.info_dialog_subscription_not_complete_body, string)).withButtons(DialogButton.createFromIntent(getString(C1566R.string.info_dialog_okay), intent)).build().show(getActivity().getSupportFragmentManager(), "processor_subscription_exists_fragment");
        } finally {
            try {
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void showProcessorErrorDialog() {
        new InformationDialog.Builder(DialogType.ERROR).withTitle(getString(C1566R.string.verification_failed_fragment_title)).withBody(getString(C1566R.string.verification_failed_fragment_subtitle)).withButtons(new DialogButton(getString(C1566R.string.info_dialog_okay))).build().show(getActivity().getSupportFragmentManager(), "processor_error_explanation_fragment");
    }

    private void showProvisionDialog(PublishSubject<Response<CallWatchPaymentResponse>> publishSubject, String str) {
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        ProvisioningConfirmationFragment provisioningConfirmationFragment = new ProvisioningConfirmationFragment();
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        beginTransaction.add(provisioningConfirmationFragment, "provisioning_request_fragment");
        beginTransaction.commitAllowingStateLoss();
        provisioningConfirmationFragment.setupPubSub(publishSubject);
    }

    private void showUpgradeFailureDialog(final String str) {
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        DialogButton dialogButton = new DialogButton(getString(C1566R.string.info_dialog_upgrade_failure_retry_purchase), new ButtonAction(this, str) { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy$$Lambda$4
            private final SubscriptionFragmentLegacy arg$1;
            private final String arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = str;
            }

            @Override // com.privacystar.core.p011ui.widgets.dialog.ButtonAction
            public void performAction(Context context) {
                this.arg$1.lambda$showUpgradeFailureDialog$3$SubscriptionFragmentLegacy(this.arg$2, context);
            }
        });
        Intent intent = new Intent(getActivity(), HomeActivity.class);
        intent.addFlags(67108864);
        new InformationDialog.Builder(DialogType.ERROR).withTitle(getString(C1566R.string.info_dialog_upgrade_failure_title)).withBody(getString(C1566R.string.info_dialog_upgrade_failure_explanation)).withButtons(dialogButton, DialogButton.createFromIntent(getString(C1566R.string.info_dialog_upgrade_failure_abort_purchase), intent)).build().show(supportFragmentManager, "upgrade_failure_explanation_fragment");
    }

    private void showUpgradeSuccessDialog() {
        if (getActivity() != null) {
            Timber.m37d("Activity is null, can't show upgrade success dialog.", new Object[0]);
            return;
        }
        FragmentManager supportFragmentManager = getActivity().getSupportFragmentManager();
        Intent intent = new Intent(getActivity(), HomeActivity.class);
        intent.addFlags(67108864);
        DialogUtil.INSTANCE.showAllowingStateLoss(new InformationDialog.Builder(DialogType.SUCCESS).withTitle(getString(C1566R.string.info_dialog_upgrade_title)).withBody(getString(C1566R.string.info_dialog_upgrade_explanation)).withButtons(DialogButton.createFromIntent(getString(C1566R.string.info_dialog_okay), intent)).build(), supportFragmentManager, "upgrade_success_explanation_fragment", this.activity);
    }

    private void storeAttemptedPurchaseAction(String str) {
        this.purchasePending = true;
        this.pendingProductId = str;
    }

    private void trackAnalytics() {
        AnalyticsManager.INSTANCE.fire(new Event.PaymentStartedEvent(this.usesGP ? Event.PaymentInterface.GP : Event.PaymentInterface.SPRINT));
    }

    private void updateGPCache(Context context) {
        Timber.m28v("Refreshing GP purchase cache.", new Object[0]);
        BillingHelper.checkPurchases(context);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.subscription_fragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$new$0$SubscriptionFragmentLegacy(Subscription subscription) {
        Timber.m37d("SubscriptionFragment observed a Subscription change, redrawing subscription header.", new Object[0]);
        setupSubscription();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$new$1$SubscriptionFragmentLegacy(RealmResults realmResults) {
        Timber.m37d("SubscriptionFragment observed a PlayStoreReceipts change.", new Object[0]);
        if (!PreferenceUtil.getLastPurchaseSucceeded()) {
            showUpgradeSuccessDialog();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$showDPIAdvancePayDialog$2$SubscriptionFragmentLegacy(Context context) {
        CallWatchPaymentHandler.getInstance().generateAndSendRequest(context, CallWatchPaymentRequest.CallWatchPaymentActionType.CANCEL_ADV_PAYMENT, this.responsePubSub);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$showUpgradeFailureDialog$3$SubscriptionFragmentLegacy(String str, Context context) {
        this.purchasePending = true;
        if (context != null && str != null) {
            BillingHelper.attemptPurchase(context, str, IABV3Helper.SkuType.SUBSCRIPTION);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    public SubscriptionFragmentLegacy newInstance() {
        return new SubscriptionFragmentLegacy();
    }

    @OnClick({C1566R.C1569id.subscription_annual_premium_container, C1566R.C1569id.subscription_annual_premium_radio})
    public void onAnnualSubPremium() {
        this.annualPremiumRadio.setChecked(true);
        this.monthlyPremiumRadio.setChecked(false);
        setUpgradeButtonEnabled(true);
        this.selectedProductId = getString(C1566R.string.play_store_sku_premium_annual);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(getLayoutResId(), viewGroup, false);
        this.unbinder = ButterKnife.bind(this, inflate);
        Timber.m37d("Inflating %s", toString());
        if (!getResources().getBoolean(C1566R.bool.subscription_enabled)) {
            Timber.m31i("Subscription view launched when it is not enabled.", new Object[0]);
            Intent intent = new Intent(getContext(), HomeActivity.class);
            intent.setFlags(268468224);
            startActivity(intent);
            return inflate;
        }
        setupToolbar();
        setupSubscription();
        setupButton(false, null);
        this.disposables.add(this.responsePubSub.subscribe(new Consumer(this) { // from class: com.privacystar.core.ui.detail_view.subscription.SubscriptionFragmentLegacy$$Lambda$2
            private final SubscriptionFragmentLegacy arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // io.reactivex.functions.Consumer
            public void accept(Object obj) {
                this.arg$1.bridge$lambda$0$SubscriptionFragmentLegacy((Response) obj);
            }
        }));
        this.usesGP = BuildUtil.INSTANCE.doesVariantHaveGpPurchases(getContext());
        setupPurchaseListener(this.usesGP);
        trackAnalytics();
        outputNameAccessibility(C1566R.string.con_desc_subscription_upgrade_fragment);
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        for (Disposable disposable : this.disposables) {
            disposable.dispose();
        }
        super.onDestroy();
    }

    @OnClick({C1566R.C1569id.subscription_fragment_log_current})
    public void onLogCurrent() {
        View view = getView();
        if (view != null) {
            Snackbar.make(view, "Querying Play Store for purchases...", 0).setAction(ApptentiveConstants.ONBOARDING_SUBSCRIPTION_KEY, (View.OnClickListener) null).show();
        }
        BillingHelper.checkPurchases(getContext());
    }

    @OnClick({C1566R.C1569id.subscription_monthly_premium_container, C1566R.C1569id.subscription_monthly_premium_radio})
    public void onMonthlySubPremium() {
        this.annualPremiumRadio.setChecked(false);
        this.monthlyPremiumRadio.setChecked(true);
        setUpgradeButtonEnabled(true);
        this.selectedProductId = getString(C1566R.string.play_store_sku_premium_monthly);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        Timber.m37d("Fragment resumed", new Object[0]);
        presentPostPurchaseDialog();
        setupSubscription();
    }

    @Override // com.privacystar.core.p011ui.PSFragment, android.support.p001v4.app.Fragment
    public void onStop() {
        if (this.subscription != null && this.subscription.isManaged()) {
            Timber.m28v("Removing change listener from Subscription.", new Object[0]);
            this.subscription.removeChangeListener(this.subscriptionListener);
        }
        if (this.gpReceipts != null && this.gpReceipts.isManaged()) {
            Timber.m28v("Removing change listener from GPReceipts.", new Object[0]);
            this.gpReceipts.removeChangeListener(this.gpReceiptsListener);
        }
        this.subscription = null;
        this.gpReceipts = null;
        super.onStop();
    }

    @OnClick({C1566R.C1569id.subscription_fragment_sub_cancel})
    public void onSubscriptionCancel() {
        PSApplication.getInstance().getJobManager().addJobInBackground(new GooglePlayCancelJob());
    }

    @OnClick({C1566R.C1569id.subscription_upgrade_cv})
    public void onUpgradeClicked() {
        Timber.m37d("Upgrade button clicked.", new Object[0]);
        if (this.usesGP) {
            onSubImpl(this.selectedProductId);
        } else {
            onProvisionRequested(this.responsePubSub, this.selectedProductId);
        }
    }
}
