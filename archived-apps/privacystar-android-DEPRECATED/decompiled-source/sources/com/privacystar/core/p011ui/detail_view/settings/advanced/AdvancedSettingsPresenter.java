package com.privacystar.core.p011ui.detail_view.settings.advanced;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.CategoryToggle;
import com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract;
import com.privacystar.core.service.analytics.IAnalyticsManager;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import io.reactivex.disposables.CompositeDisposable;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\u0018��2\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020 J\u0006\u0010\"\u001a\u00020 J\u0006\u0010#\u001a\u00020 J\u0006\u0010$\u001a\u00020 J\u0006\u0010%\u001a\u00020 J\u0006\u0010&\u001a\u00020 J\u0006\u0010'\u001a\u00020 J\u0006\u0010(\u001a\u00020 J\u0006\u0010)\u001a\u00020 J\u0006\u0010*\u001a\u00020 J\b\u0010+\u001a\u00020 H\u0002R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n��R\u001c\u0010\u001c\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u00030\u00030\u001dX\u0082\u0004¢\u0006\u0002\n��¨\u0006,"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$View;", "manager", "Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Manager;", SettingsJsonConstants.ANALYTICS_KEY, "Lcom/privacystar/core/service/analytics/IAnalyticsManager;", "model", "Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Model;", "(Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$View;Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Manager;Lcom/privacystar/core/service/analytics/IAnalyticsManager;Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Model;)V", "accountServicesToggle", "Lcom/privacystar/core/data/CategoryToggle;", "getAnalytics", "()Lcom/privacystar/core/service/analytics/IAnalyticsManager;", "charityToggle", "disposables", "Lio/reactivex/disposables/CompositeDisposable;", "getManager", "()Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Manager;", "getModel", "()Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Model;", "nuisanceToggle", "politicalToggle", "prisonToggle", "scamToggle", "surveyToggle", "telemarketingToggle", "viewRef", "Ljava/lang/ref/WeakReference;", "kotlin.jvm.PlatformType", "onAccountServicesToggleClicked", "", "onCharityToggleClicked", "onNuisanceToggleClicked", "onPoliticalToggleClicked", "onPrisonToggleClicked", "onSaveButtonClicked", "onScamToggleClicked", "onSurveyToggleClicked", "onTelemarketingToggleClicked", "onViewCreated", "onViewDestroyed", "setCustomProtectionLevels", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsPresenter.class */
public final class AdvancedSettingsPresenter {
    @NotNull
    private final IAnalyticsManager analytics;
    @NotNull
    private final AdvancedSettingsContract.Manager manager;
    @NotNull
    private final AdvancedSettingsContract.Model model;
    private final WeakReference<AdvancedSettingsContract.View> viewRef;
    private final CategoryToggle scamToggle = new CategoryToggle(false, 1, null);
    private final CategoryToggle nuisanceToggle = new CategoryToggle(false, 1, null);
    private final CategoryToggle telemarketingToggle = new CategoryToggle(false, 1, null);
    private final CategoryToggle accountServicesToggle = new CategoryToggle(false, 1, null);
    private final CategoryToggle politicalToggle = new CategoryToggle(false, 1, null);
    private final CategoryToggle surveyToggle = new CategoryToggle(false, 1, null);
    private final CategoryToggle charityToggle = new CategoryToggle(false, 1, null);
    private final CategoryToggle prisonToggle = new CategoryToggle(false, 1, null);
    private final CompositeDisposable disposables = new CompositeDisposable();

    public AdvancedSettingsPresenter(@NotNull AdvancedSettingsContract.View view, @NotNull AdvancedSettingsContract.Manager manager, @NotNull IAnalyticsManager analytics, @NotNull AdvancedSettingsContract.Model model) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(manager, "manager");
        Intrinsics.checkParameterIsNotNull(analytics, "analytics");
        Intrinsics.checkParameterIsNotNull(model, "model");
        this.manager = manager;
        this.analytics = analytics;
        this.model = model;
        this.viewRef = new WeakReference<>(view);
    }

    private final void setCustomProtectionLevels() {
        this.model.putScamProtectionEnabled(this.scamToggle.getEnabled());
        this.model.putNuisanceProtectionEnabled(this.nuisanceToggle.getEnabled());
        this.model.putTelemarketingProtectionEnabled(this.telemarketingToggle.getEnabled());
        this.model.putAccountServicesProtectionEnabled(this.accountServicesToggle.getEnabled());
        this.model.putPoliticalProtectionEnabled(this.politicalToggle.getEnabled());
        this.model.putSurveyProtectionEnabled(this.surveyToggle.getEnabled());
        this.model.putCharityProtectionEnabled(this.charityToggle.getEnabled());
        this.model.putPrisonProtectionEnabled(this.prisonToggle.getEnabled());
    }

    @NotNull
    public final IAnalyticsManager getAnalytics() {
        return this.analytics;
    }

    @NotNull
    public final AdvancedSettingsContract.Manager getManager() {
        return this.manager;
    }

    @NotNull
    public final AdvancedSettingsContract.Model getModel() {
        return this.model;
    }

    public final void onAccountServicesToggleClicked() {
        if (this.model.isCategoryBlockingAvailable()) {
            this.accountServicesToggle.toggle();
            AdvancedSettingsContract.View view = this.viewRef.get();
            if (view != null) {
                view.setAccountServices(this.accountServicesToggle.getEnabled());
                return;
            }
            return;
        }
        AdvancedSettingsContract.View view2 = this.viewRef.get();
        if (view2 != null) {
            view2.showSubscriptionPage();
        }
    }

    public final void onCharityToggleClicked() {
        if (this.model.isCategoryBlockingAvailable()) {
            this.charityToggle.toggle();
            AdvancedSettingsContract.View view = this.viewRef.get();
            if (view != null) {
                view.setCharity(this.charityToggle.getEnabled());
                return;
            }
            return;
        }
        AdvancedSettingsContract.View view2 = this.viewRef.get();
        if (view2 != null) {
            view2.showSubscriptionPage();
        }
    }

    public final void onNuisanceToggleClicked() {
        if (this.model.isNuisanceBlockingAvailable()) {
            this.nuisanceToggle.toggle();
            AdvancedSettingsContract.View view = this.viewRef.get();
            if (view != null) {
                view.setNuisance(this.nuisanceToggle.getEnabled());
                return;
            }
            return;
        }
        AdvancedSettingsContract.View view2 = this.viewRef.get();
        if (view2 != null) {
            view2.showSubscriptionPage();
        }
    }

    public final void onPoliticalToggleClicked() {
        if (this.model.isCategoryBlockingAvailable()) {
            this.politicalToggle.toggle();
            AdvancedSettingsContract.View view = this.viewRef.get();
            if (view != null) {
                view.setPolitical(this.politicalToggle.getEnabled());
                return;
            }
            return;
        }
        AdvancedSettingsContract.View view2 = this.viewRef.get();
        if (view2 != null) {
            view2.showSubscriptionPage();
        }
    }

    public final void onPrisonToggleClicked() {
        if (this.model.isCategoryBlockingAvailable()) {
            this.prisonToggle.toggle();
            AdvancedSettingsContract.View view = this.viewRef.get();
            if (view != null) {
                view.setPrison(this.prisonToggle.getEnabled());
                return;
            }
            return;
        }
        AdvancedSettingsContract.View view2 = this.viewRef.get();
        if (view2 != null) {
            view2.showSubscriptionPage();
        }
    }

    public final void onSaveButtonClicked() {
        this.model.putShowCallTypesSavedSnack(this.manager.shouldShowSettingSavedSnackbar());
        AdvancedSettingsContract.View view = this.viewRef.get();
        if (view != null) {
            view.closeSettings();
        }
    }

    public final void onScamToggleClicked() {
        if (this.model.isScamBlockingAvailable()) {
            this.scamToggle.toggle();
            AdvancedSettingsContract.View view = this.viewRef.get();
            if (view != null) {
                view.setScam(this.scamToggle.getEnabled());
            }
        }
    }

    public final void onSurveyToggleClicked() {
        if (this.model.isCategoryBlockingAvailable()) {
            this.surveyToggle.toggle();
            AdvancedSettingsContract.View view = this.viewRef.get();
            if (view != null) {
                view.setSurvey(this.surveyToggle.getEnabled());
                return;
            }
            return;
        }
        AdvancedSettingsContract.View view2 = this.viewRef.get();
        if (view2 != null) {
            view2.showSubscriptionPage();
        }
    }

    public final void onTelemarketingToggleClicked() {
        if (this.model.isCategoryBlockingAvailable()) {
            this.telemarketingToggle.toggle();
            AdvancedSettingsContract.View view = this.viewRef.get();
            if (view != null) {
                view.setTelemarketing(this.telemarketingToggle.getEnabled());
                return;
            }
            return;
        }
        AdvancedSettingsContract.View view2 = this.viewRef.get();
        if (view2 != null) {
            view2.showSubscriptionPage();
        }
    }

    public final void onViewCreated() {
        boolean z = true;
        this.model.putCustomProtectionEnabled(true);
        AdvancedSettingsContract.View view = this.viewRef.get();
        if (view != null) {
            view.setupToolbar();
            view.setupSaveButton(this.manager.shouldShowSaveButton());
            view.setupCategories();
            view.setupClickListeners();
            this.scamToggle.setEnabled(this.model.getScamProtectionEnabled() && this.model.isScamBlockingAvailable());
            this.nuisanceToggle.setEnabled(this.model.getNuisanceProtectionEnabled() && this.model.isNuisanceBlockingAvailable());
            this.telemarketingToggle.setEnabled(this.model.getTelemarketingProtectionEnabled() && this.model.isCategoryBlockingAvailable());
            this.accountServicesToggle.setEnabled(this.model.getAccountServicesProtectionEnabled() && this.model.isCategoryBlockingAvailable());
            this.politicalToggle.setEnabled(this.model.getPoliticalProtectionEnabled() && this.model.isCategoryBlockingAvailable());
            this.surveyToggle.setEnabled(this.model.getSurveyProtectionEnabled() && this.model.isCategoryBlockingAvailable());
            this.charityToggle.setEnabled(this.model.getCharityProtectionEnabled() && this.model.isCategoryBlockingAvailable());
            CategoryToggle categoryToggle = this.prisonToggle;
            if (!this.model.getPrisonProtectionEnabled() || !this.model.isCategoryBlockingAvailable()) {
                z = false;
            }
            categoryToggle.setEnabled(z);
            view.setScam(this.scamToggle.getEnabled());
            view.setNuisance(this.nuisanceToggle.getEnabled());
            view.setTelemarketing(this.telemarketingToggle.getEnabled());
            view.setAccountServices(this.accountServicesToggle.getEnabled());
            view.setPolitical(this.politicalToggle.getEnabled());
            view.setSurvey(this.surveyToggle.getEnabled());
            view.setCharity(this.charityToggle.getEnabled());
            view.setPrison(this.prisonToggle.getEnabled());
        }
    }

    public final void onViewDestroyed() {
        this.disposables.dispose();
        setCustomProtectionLevels();
    }
}
