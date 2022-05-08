package com.privacystar.core.p011ui.detail_view.settings.advanced;

import com.privacystar.core.BuildConfig;
import com.privacystar.core.data.model.helper.LicenseFeatureRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.Feature;
import com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract;
import com.privacystar.core.service.PreferenceUtil;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\f\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\bH\u0016J\b\u0010\n\u001a\u00020\bH\u0016J\b\u0010\u000b\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\bH\u0016J\b\u0010\r\u001a\u00020\bH\u0016J\b\u0010\u000e\u001a\u00020\bH\u0016J\b\u0010\u000f\u001a\u00020\bH\u0016J\b\u0010\u0010\u001a\u00020\bH\u0016J\b\u0010\u0011\u001a\u00020\bH\u0016J\b\u0010\u0012\u001a\u00020\bH\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\bH\u0016J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006 "}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsModel;", "Lcom/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsContract$Model;", "realm", "Lio/realm/Realm;", "(Lio/realm/Realm;)V", "getRealm", "()Lio/realm/Realm;", "getAccountServicesProtectionEnabled", "", "getCharityProtectionEnabled", "getNuisanceProtectionEnabled", "getPoliticalProtectionEnabled", "getPrisonProtectionEnabled", "getScamProtectionEnabled", "getSurveyProtectionEnabled", "getTelemarketingProtectionEnabled", "isCategoryBlockingAvailable", "isNuisanceBlockingAvailable", "isScamBlockingAvailable", "putAccountServicesProtectionEnabled", "", "enabled", "putCharityProtectionEnabled", "putCustomProtectionEnabled", "putNuisanceProtectionEnabled", "putPoliticalProtectionEnabled", "putPrisonProtectionEnabled", "putScamProtectionEnabled", "putShowCallTypesSavedSnack", "show", "putSurveyProtectionEnabled", "putTelemarketingProtectionEnabled", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.advanced.AdvancedSettingsModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/advanced/AdvancedSettingsModel.class */
public final class AdvancedSettingsModel implements AdvancedSettingsContract.Model {
    @NotNull
    private final Realm realm;

    public AdvancedSettingsModel(@NotNull Realm realm) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        this.realm = realm;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean getAccountServicesProtectionEnabled() {
        return PreferenceUtil.getProtectionDebtCollectionEnabled();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean getCharityProtectionEnabled() {
        return PreferenceUtil.getProtectionCharityEnabled();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean getNuisanceProtectionEnabled() {
        return PreferenceUtil.getProtectionNuisanceEnabled();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean getPoliticalProtectionEnabled() {
        return PreferenceUtil.getProtectionPoliticalEnabled();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean getPrisonProtectionEnabled() {
        return PreferenceUtil.getProtectionPrisonEnabled();
    }

    @NotNull
    public final Realm getRealm() {
        return this.realm;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean getScamProtectionEnabled() {
        return PreferenceUtil.getProtectionScammersEnabled();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean getSurveyProtectionEnabled() {
        return PreferenceUtil.getProtectionSurveyEnabled();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean getTelemarketingProtectionEnabled() {
        return PreferenceUtil.getProtectionTelemarketingEnabled();
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean isCategoryBlockingAvailable() {
        return SubscriptionRealm.isSubscriptionOngoing(this.realm);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean isNuisanceBlockingAvailable() {
        boolean z = false;
        if (isCategoryBlockingAvailable() || StringsKt.contains$default((CharSequence) BuildConfig.FLAVOR, (CharSequence) "pstar", false, 2, (Object) null)) {
            z = true;
        }
        return z;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public boolean isScamBlockingAvailable() {
        return LicenseFeatureRealm.isFeatureAvailable(this.realm, Feature.SCAM_BLOCKING);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putAccountServicesProtectionEnabled(boolean z) {
        PreferenceUtil.putProtectionDebtCollectionEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putCharityProtectionEnabled(boolean z) {
        PreferenceUtil.putProtectionCharityEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putCustomProtectionEnabled(boolean z) {
        PreferenceUtil.putCustomProtectionEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putNuisanceProtectionEnabled(boolean z) {
        PreferenceUtil.putProtectionNuisanceEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putPoliticalProtectionEnabled(boolean z) {
        PreferenceUtil.putProtectionPoliticalEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putPrisonProtectionEnabled(boolean z) {
        PreferenceUtil.putProtectionPrisonEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putScamProtectionEnabled(boolean z) {
        PreferenceUtil.putProtectionScammersEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putShowCallTypesSavedSnack(boolean z) {
        PreferenceUtil.putShowCallTypesSavedSnack(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putSurveyProtectionEnabled(boolean z) {
        PreferenceUtil.putProtectionSurveyEnabled(z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.advanced.AdvancedSettingsContract.Model
    public void putTelemarketingProtectionEnabled(boolean z) {
        PreferenceUtil.putProtectionTelemarketingEnabled(z);
    }
}
