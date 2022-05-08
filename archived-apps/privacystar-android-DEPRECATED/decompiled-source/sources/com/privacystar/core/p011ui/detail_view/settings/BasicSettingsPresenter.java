package com.privacystar.core.p011ui.detail_view.settings;

import android.os.Build;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.service.calleryd.CallerYDHelper;
import com.privacystar.core.util.SystemUtil;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\\\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u0001:\u00013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001aH\u0002J\b\u0010\u001b\u001a\u00020\bH\u0002J\b\u0010\u001c\u001a\u00020\u0018H\u0002J\u0006\u0010\u001d\u001a\u00020\u0018J\u000e\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u0018J\u0006\u0010\"\u001a\u00020\u0018J\u0006\u0010#\u001a\u00020\u0018J\u0006\u0010$\u001a\u00020\u0018J\u0006\u0010%\u001a\u00020\u0018J\u000e\u0010&\u001a\u00020\u00182\u0006\u0010'\u001a\u00020(J\u0006\u0010)\u001a\u00020\u0018J\u000e\u0010*\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010+\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010,\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010-\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010.\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010/\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 J\u000e\u00100\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 J\u000e\u00101\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 J\b\u00102\u001a\u00020\u0018H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0002\u001a\u0010\u0012\f\u0012\n \u0016*\u0004\u0018\u00010\u00030\u00030\u0015X\u0082\u0004¢\u0006\u0002\n��¨\u00064"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$View;", "model", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Model;", "(Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$View;Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Model;)V", "headerPromptDisplayed", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsPresenter$HeaderPromptType;", "manager", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsManagerImpl;", "getModel", "()Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Model;", "onAddBlockGroupListener", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnAddBlockGroupListener;", "getOnAddBlockGroupListener", "()Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnAddBlockGroupListener;", "onUnblockClickListener", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnUnblockClickListener;", "getOnUnblockClickListener", "()Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnUnblockClickListener;", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "attemptShowSettingsSavedSnackbar", "", "switch", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$Switches;", "determineHeaderPromptValue", "launchNumberVerification", "onAddGroupBlockingButton", "onAllServicesClicked", "isChecked", "", "onCreateView", "onCydResponseClicked", "onOpenCustomSettings", "onOpenStateSettings", "onPause", "onProtectionLevelSelected", FirebaseAnalytics.Param.LEVEL, "Lcom/privacystar/core/data/blocking/protection/ProtectionLevel;", "onResume", "onSwitchChangedCallCenter", "onSwitchChangedDashboardNotification", "onSwitchChangedGroupBlocking", "onSwitchChangedPostCallNotification", "onSwitchChangedPsService", "onSwitchChangedSendToVoicemail", "onSwitchChangedSpoofing", "onSwitchChangedUnknownNumber", "setupHeader", "HeaderPromptType", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsPresenter.class */
public final class BasicSettingsPresenter {
    @NotNull
    private final BasicSettingsContract.Model model;
    private final WeakReference<BasicSettingsContract.View> view;
    private HeaderPromptType headerPromptDisplayed = HeaderPromptType.NothingNeeded;
    private BasicSettingsManagerImpl manager = BasicSettingsManagerImpl.INSTANCE;
    @NotNull
    private final BasicSettingsContract.OnAddBlockGroupListener onAddBlockGroupListener = new BasicSettingsPresenter$onAddBlockGroupListener$1(this);
    @NotNull
    private final BasicSettingsContract.OnUnblockClickListener onUnblockClickListener = new BasicSettingsContract.OnUnblockClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsPresenter$onUnblockClickListener$1
        @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.OnUnblockClickListener
        public void onUnblock(@NotNull String number) {
            WeakReference weakReference;
            Intrinsics.checkParameterIsNotNull(number, "number");
            BasicSettingsPresenter basicSettingsPresenter = BasicSettingsPresenter.this;
            basicSettingsPresenter.getModel().removeBlockingGroup(number);
            weakReference = basicSettingsPresenter.view;
            BasicSettingsContract.View view = (BasicSettingsContract.View) weakReference.get();
            if (view != null) {
                view.refreshGroupBlockList();
            }
        }
    };

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsPresenter$HeaderPromptType;", "", "(Ljava/lang/String;I)V", "PermissionsNeeded", "NumberVerificationNeeded", "NothingNeeded", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsPresenter$HeaderPromptType */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsPresenter$HeaderPromptType.class */
    public enum HeaderPromptType {
        PermissionsNeeded,
        NumberVerificationNeeded,
        NothingNeeded
    }

    public BasicSettingsPresenter(@NotNull BasicSettingsContract.View view, @NotNull BasicSettingsContract.Model model) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(model, "model");
        this.model = model;
        this.view = new WeakReference<>(view);
    }

    private final void attemptShowSettingsSavedSnackbar(BasicSettingsContract.Switches switches) {
        BasicSettingsContract.View view;
        if (this.manager.shouldShowSettingSavedSnackbar() && (view = this.view.get()) != null) {
            view.showSettingsSavedSnackbar(switches);
        }
    }

    static /* synthetic */ void attemptShowSettingsSavedSnackbar$default(BasicSettingsPresenter basicSettingsPresenter, BasicSettingsContract.Switches switches, int i, Object obj) {
        if ((i & 1) != 0) {
            switches = BasicSettingsContract.Switches.NONE;
        }
        basicSettingsPresenter.attemptShowSettingsSavedSnackbar(switches);
    }

    private final HeaderPromptType determineHeaderPromptValue() {
        BasicSettingsContract.View view = this.view.get();
        return !CallerYDHelper.INSTANCE.isCydActive() ? HeaderPromptType.NothingNeeded : !this.model.isNumberVerified() ? HeaderPromptType.NumberVerificationNeeded : !(view != null ? view.hasOverlayPermission() : true) ? HeaderPromptType.PermissionsNeeded : HeaderPromptType.NothingNeeded;
    }

    private final void launchNumberVerification() {
        Timber.m37d("Launching number verification for CallerYD.", new Object[0]);
        this.model.saveNumberVerification(false, false);
        SystemUtil.internallyRestartApp$default(SystemUtil.INSTANCE, null, 1, null);
    }

    private final void setupHeader() {
        this.headerPromptDisplayed = determineHeaderPromptValue();
        Timber.m37d("Header prompt value calculated as [" + this.headerPromptDisplayed + "].", new Object[0]);
        BasicSettingsContract.View view = this.view.get();
        if (view != null) {
            switch (this.headerPromptDisplayed) {
                case NumberVerificationNeeded:
                    view.setupHeaderForNumberVerification();
                    return;
                case PermissionsNeeded:
                    view.setupHeaderForPermissions();
                    return;
                default:
                    view.setupHeaderHide();
                    return;
            }
        }
    }

    @NotNull
    public final BasicSettingsContract.Model getModel() {
        return this.model;
    }

    @NotNull
    public final BasicSettingsContract.OnAddBlockGroupListener getOnAddBlockGroupListener() {
        return this.onAddBlockGroupListener;
    }

    @NotNull
    public final BasicSettingsContract.OnUnblockClickListener getOnUnblockClickListener() {
        return this.onUnblockClickListener;
    }

    public final void onAddGroupBlockingButton() {
        BasicSettingsContract.View view = this.view.get();
        if (view != null) {
            view.launchAddGroupBlockingDialog();
        }
    }

    public final void onAllServicesClicked(boolean z) {
        BasicSettingsContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (z) {
            view.showPsServicesDisableDialog(this.manager.shouldShowSettingSavedSnackbar());
        } else {
            view.togglePSServiceSwitchAndShowSnackbar(this.manager.shouldShowSettingSavedSnackbar());
        }
    }

    public final void onCreateView() {
        BasicSettingsContract.View view = this.view.get();
        if (view != null) {
            view.setupGroupBlockingList(this.model.getGroupBlockingList());
            view.setupToolbar();
            if (!this.model.shouldShowFullUX()) {
                view.hideNonActiveUxViews();
            }
            if (Build.VERSION.SDK_INT >= 26 && this.manager.shouldShowOptionVoicemail()) {
                view.addSendToVoiceMailOption(this.model.savedFeatureSendToVoicemail());
            }
            if (this.manager.doesContainProtectionLevels()) {
                view.showCustomProtectionLevelAsRadioButton();
            }
            if (this.model.isProtectionLevelSetup()) {
                ProtectionLevel protectionLevel = ProtectionLevel.byIndex(this.model.getProtectionLevel());
                BasicSettingsContract.Model model = this.model;
                Intrinsics.checkExpressionValueIsNotNull(protectionLevel, "protectionLevel");
                model.setProtectionLevel(protectionLevel);
                view.selectRadioButton(protectionLevel);
            }
        }
        AnalyticsManager.INSTANCE.fire(Event.SettingsPageView.INSTANCE);
    }

    public final void onCydResponseClicked() {
        BasicSettingsContract.View view = this.view.get();
        if (view != null) {
            switch (this.headerPromptDisplayed) {
                case NumberVerificationNeeded:
                    launchNumberVerification();
                    return;
                case PermissionsNeeded:
                    view.launchOverlayPermissionSettings();
                    return;
                default:
                    Timber.m37d("CallerYD response button clicked without a valid response target.", new Object[0]);
                    return;
            }
        }
    }

    public final void onOpenCustomSettings() {
        Timber.m28v("Show advanced settings.", new Object[0]);
        BasicSettingsContract.View view = this.view.get();
        if (view != null) {
            view.launchCustomSettings();
        }
    }

    public final void onOpenStateSettings() {
        Timber.m28v("Show State of Residence settings.", new Object[0]);
        BasicSettingsContract.View view = this.view.get();
        if (view != null) {
            view.launchStateSettings();
        }
    }

    public final void onPause() {
        this.model.saveProtectionLevelSetting();
    }

    public final void onProtectionLevelSelected(@NotNull ProtectionLevel level) {
        Intrinsics.checkParameterIsNotNull(level, "level");
        Timber.m37d("Protection level set to " + level + '.', new Object[0]);
        if (this.model.canUseProtectionLevel(level)) {
            BasicSettingsContract.View view = this.view.get();
            if (view != null) {
                view.selectRadioButton(level);
                this.model.setProtectionLevel(level);
                if (level == ProtectionLevel.CUSTOM) {
                    view.launchCustomSettings();
                    return;
                }
                return;
            }
            return;
        }
        BasicSettingsContract.View view2 = this.view.get();
        if (view2 != null) {
            view2.launchSubscribe();
        }
    }

    public final void onResume() {
        setupHeader();
        BasicSettingsContract.View view = this.view.get();
        if (view != null) {
            boolean savedFeatureGroupBlocking = this.model.savedFeatureGroupBlocking();
            view.enableFeatureGroupBlocking(savedFeatureGroupBlocking);
            view.enableGroupBlockingUI(savedFeatureGroupBlocking);
            view.enableFeatureNeighborhoodSpoofing(this.model.savedFeatureSpoofing());
            view.enableFeatureUnknownBlocking(this.model.savedFeatureUnknownBlocking());
            view.enableFeatureSendToVoicemail(this.model.savedFeatureSendToVoicemail());
            view.enableFeatureCallCenter(this.model.savedFeatureCallCenter());
            view.enableFeaturePostCallNotifications(this.model.savedFeaturePostCallNotification());
            view.enableFeatureDashboardNotification(this.model.savedFeatureDashboardNotification());
            view.setupPsServiceSelection(this.model.savedFeaturePSService());
            view.setupListenerPsService();
            view.setupListenerCallCenter();
            view.setupListenerPostCallNotification();
            view.setupListenerUnknownNumber();
            view.setupListenerGroupBlocking();
            view.setupListenerSpoofing();
            view.setupListenerDashboardNotification();
            view.setupListenerSendToVoicemail();
            ProtectionLevel protectionLevel = ProtectionLevel.byIndex(this.model.getProtectionLevel());
            BasicSettingsContract.Model model = this.model;
            Intrinsics.checkExpressionValueIsNotNull(protectionLevel, "protectionLevel");
            if (!model.canUseProtectionLevel(protectionLevel)) {
                view.selectRadioButton(ProtectionLevel.BASIC);
                this.model.setProtectionLevel(ProtectionLevel.BASIC);
            }
            if (this.model.shouldJumpToSpoofingSetting()) {
                view.jumpToNeighborhoodSpoofingSetting();
                this.model.saveSpoofSettingShowed();
            }
            if (this.model.shouldShowSavedSnack() && this.manager.shouldShowSettingSavedSnackbar()) {
                this.model.saveShouldShowSavedSnack(false);
                attemptShowSettingsSavedSnackbar$default(this, null, 1, null);
            }
        }
    }

    public final void onSwitchChangedCallCenter(boolean z) {
        Timber.m37d("Call Cente switch is " + z, new Object[0]);
        BasicSettingsContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (this.model.isFeatureCallCenterAvailable()) {
            this.model.saveCallCenterEnabled(z);
            attemptShowSettingsSavedSnackbar(BasicSettingsContract.Switches.CALL_CENTER_SWITCH);
            Timber.m37d("Call Center set to: %sabled", z ? "en" : "dis");
        } else if (z) {
            view.toggleSwitchWithListeners(BasicSettingsContract.Switches.CALL_CENTER_SWITCH, false);
            view.launchSubscribe();
        }
    }

    public final void onSwitchChangedDashboardNotification(boolean z) {
        Timber.m37d("Enable dashboard notifications? " + z, new Object[0]);
        this.model.saveDashboardNotificationsEnabled(z);
        attemptShowSettingsSavedSnackbar(BasicSettingsContract.Switches.DASHBOARD_SWITCH);
    }

    public final void onSwitchChangedGroupBlocking(boolean z) {
        Timber.m37d("Group Blocking is " + z, new Object[0]);
        BasicSettingsContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (this.model.isFeatureGroupBlockingAvailable()) {
            Timber.m37d("enable group blocking function", new Object[0]);
            view.enableGroupBlockingUI(z);
            this.model.saveGroupBlockingEnabled(z);
            attemptShowSettingsSavedSnackbar(BasicSettingsContract.Switches.GROUP_BLOCKING);
        } else if (z) {
            view.toggleSwitchWithListeners(BasicSettingsContract.Switches.GROUP_BLOCKING, false);
            view.launchSubscribe();
        }
    }

    public final void onSwitchChangedPostCallNotification(boolean z) {
        BasicSettingsContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (this.model.isFeaturePostCallNotificationsAvailable()) {
            attemptShowSettingsSavedSnackbar(BasicSettingsContract.Switches.POST_CALL_NOTIFICATION_SWITCH);
            this.model.savePostCallNotificationsEnabled(z);
            Timber.m37d("Post Call Notifications set to: %sabled", z ? "en" : "dis");
        } else if (z) {
            view.toggleSwitchWithListeners(BasicSettingsContract.Switches.POST_CALL_NOTIFICATION_SWITCH, false);
            view.launchSubscribe();
        }
    }

    public final void onSwitchChangedPsService(boolean z) {
        this.model.saveApplicationEnabled(z);
        Timber.m37d("PrivacyStar Service (Application) set to: %sabled", z ? "en" : "dis");
    }

    public final void onSwitchChangedSendToVoicemail(boolean z) {
        Timber.m37d("Send to Voice Mail is " + z, new Object[0]);
        if (this.model.isFeatureVoicemailAvailable()) {
            Timber.m37d("And Voicemail feature is available", new Object[0]);
            this.model.saveSendToVoicemailEnabled(z);
            attemptShowSettingsSavedSnackbar(BasicSettingsContract.Switches.SEND_TO_VOICEMAIL_SWITCH);
            return;
        }
        Timber.m37d("BUT Voicemail featrue is NOT available", new Object[0]);
    }

    public final void onSwitchChangedSpoofing(boolean z) {
        BasicSettingsContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (this.model.isFeatureSpoofingAvailable()) {
            Timber.m37d("Enable spoofing protection? " + z, new Object[0]);
            this.model.saveSpoofBlockingEnabled(z);
            attemptShowSettingsSavedSnackbar(BasicSettingsContract.Switches.SPOOFING_SWITCH);
        } else if (z) {
            view.toggleSwitchWithListeners(BasicSettingsContract.Switches.SPOOFING_SWITCH, false);
            view.launchSubscribe();
        }
    }

    public final void onSwitchChangedUnknownNumber(boolean z) {
        BasicSettingsContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (this.model.isFeatureUnknownBlockingAvailable()) {
            this.model.saveUnknownBlockingEnabled(z);
            Timber.m37d("Unknown blocking set to %sabled", z ? "en" : "dis");
            attemptShowSettingsSavedSnackbar(BasicSettingsContract.Switches.UNKNOWN_NUMBER_SWITCH);
        } else if (z) {
            view.toggleSwitchWithListeners(BasicSettingsContract.Switches.UNKNOWN_NUMBER_SWITCH, false);
            view.launchSubscribe();
        }
    }
}
