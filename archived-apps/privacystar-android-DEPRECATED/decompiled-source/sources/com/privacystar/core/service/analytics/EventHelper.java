package com.privacystar.core.service.analytics;

import com.privacystar.core.service.analytics.Event;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\u000f\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0006¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/service/analytics/EventHelper;", "", "()V", "getActivationCategoryEvent", "Lcom/privacystar/core/service/analytics/Event;", "showUpsell", "", "enabled", "category", "Lcom/privacystar/core/service/analytics/Event$CategoryType;", "getSettingCategoryEvent", "handlePermissionRequestEvent", "", "permission", "", "handlePermissionsResultEvent", "granted", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/EventHelper.class */
public final class EventHelper {
    public static final EventHelper INSTANCE = new EventHelper();

    private EventHelper() {
    }

    @NotNull
    public final Event getActivationCategoryEvent(boolean z, boolean z2, @NotNull Event.CategoryType category) {
        Intrinsics.checkParameterIsNotNull(category, "category");
        switch (category) {
            case SCAM:
                return z2 ? Event.ActivationScamOn.INSTANCE : Event.ActivationScamOff.INSTANCE;
            case NUISANCE:
                return z ? Event.ActivationNuisanceUpsellClick.INSTANCE : z2 ? Event.ActivationNuisanceOn.INSTANCE : Event.ActivationNuisanceOff.INSTANCE;
            case TELEMARKETER:
                return z ? Event.ActivationTelemarketingUpsellClick.INSTANCE : z2 ? Event.ActivationTelemarketingOn.INSTANCE : Event.ActivationTelemarketingOff.INSTANCE;
            case ACCOUNT_SERVICES:
                return z ? Event.ActivationAccountServicesUpsellClick.INSTANCE : z2 ? Event.ActivationAccountServicesOn.INSTANCE : Event.ActivationAccountServicesOff.INSTANCE;
            case POLITICAL:
                return z ? Event.ActivationPoliticalUpsellClick.INSTANCE : z2 ? Event.ActivationPoliticalOn.INSTANCE : Event.ActivationPoliticalOff.INSTANCE;
            case SURVEY:
                return z ? Event.ActivationSurveyUpsellClick.INSTANCE : z2 ? Event.ActivationSurveyOn.INSTANCE : Event.ActivationSurveyOff.INSTANCE;
            case CHARITY:
                return z ? Event.ActivationCharityUpsellClick.INSTANCE : z2 ? Event.ActivationCharityOn.INSTANCE : Event.ActivationCharityOff.INSTANCE;
            case PRISON:
                return z ? Event.ActivationPrisonUpsellClick.INSTANCE : z2 ? Event.ActivationPrisonOn.INSTANCE : Event.ActivationPrisonOff.INSTANCE;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    @NotNull
    public final Event getSettingCategoryEvent(boolean z, boolean z2, @NotNull Event.CategoryType category) {
        Intrinsics.checkParameterIsNotNull(category, "category");
        switch (category) {
            case SCAM:
                return z2 ? Event.SettingsScamOn.INSTANCE : Event.SettingsScamOff.INSTANCE;
            case NUISANCE:
                return z ? Event.SettingsNuisanceUpsellClick.INSTANCE : z2 ? Event.SettingsNuisanceOn.INSTANCE : Event.SettingsNuisanceOff.INSTANCE;
            case TELEMARKETER:
                return z ? Event.SettingsTelemarketingUpsellClick.INSTANCE : z2 ? Event.SettingsTelemarketingOn.INSTANCE : Event.SettingsTelemarketingOff.INSTANCE;
            case ACCOUNT_SERVICES:
                return z ? Event.SettingsAccountServicesUpsellClick.INSTANCE : z2 ? Event.SettingsAccountServicesOn.INSTANCE : Event.SettingsAccountServicesOff.INSTANCE;
            case POLITICAL:
                return z ? Event.SettingsPoliticalUpsellClick.INSTANCE : z2 ? Event.SettingsPoliticalOn.INSTANCE : Event.SettingsPoliticalOff.INSTANCE;
            case SURVEY:
                return z ? Event.SettingsSurveyUpsellClick.INSTANCE : z2 ? Event.SettingsSurveyOn.INSTANCE : Event.SettingsSurveyOff.INSTANCE;
            case CHARITY:
                return z ? Event.SettingsCharityUpsellClick.INSTANCE : z2 ? Event.SettingsCharityOn.INSTANCE : Event.SettingsCharityOff.INSTANCE;
            case PRISON:
                return z ? Event.SettingsPrisonUpsellClick.INSTANCE : z2 ? Event.SettingsPrisonOn.INSTANCE : Event.SettingsPrisonOff.INSTANCE;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public final void handlePermissionRequestEvent(@NotNull String permission) {
        Intrinsics.checkParameterIsNotNull(permission, "permission");
        String lowerCase = permission.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
        String lowerCase2 = "android.permission.READ_CONTACTS".toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase2, "(this as java.lang.String).toLowerCase()");
        if (Intrinsics.areEqual(lowerCase, lowerCase2)) {
            AnalyticsManager.INSTANCE.fire(Event.PermissionsContactsPopupView.INSTANCE);
            return;
        }
        String lowerCase3 = "android.permission.READ_CALL_LOG".toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase3, "(this as java.lang.String).toLowerCase()");
        if (Intrinsics.areEqual(lowerCase, lowerCase3)) {
            AnalyticsManager.INSTANCE.fire(Event.PermissionsCallLogsPopupView.INSTANCE);
            return;
        }
        String lowerCase4 = "android.permission.READ_PHONE_STATE".toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase4, "(this as java.lang.String).toLowerCase()");
        if (Intrinsics.areEqual(lowerCase, lowerCase4)) {
            AnalyticsManager.INSTANCE.fire(Event.PermissionsManageCallsPopupView.INSTANCE);
            return;
        }
        String lowerCase5 = "android.permission.ANSWER_PHONE_CALLS".toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase5, "(this as java.lang.String).toLowerCase()");
        if (!Intrinsics.areEqual(lowerCase, lowerCase5)) {
            String lowerCase6 = "android.permission.CALL_PHONE".toLowerCase();
            Intrinsics.checkExpressionValueIsNotNull(lowerCase6, "(this as java.lang.String).toLowerCase()");
            Intrinsics.areEqual(lowerCase, lowerCase6);
        }
    }

    public final void handlePermissionsResultEvent(@NotNull String permission, boolean z) {
        Intrinsics.checkParameterIsNotNull(permission, "permission");
        String lowerCase = permission.toLowerCase();
        Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase()");
        if (!StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "read_contacts", false, 2, (Object) null)) {
            String lowerCase2 = permission.toLowerCase();
            Intrinsics.checkExpressionValueIsNotNull(lowerCase2, "(this as java.lang.String).toLowerCase()");
            if (!StringsKt.contains$default((CharSequence) lowerCase2, (CharSequence) "read_call_log", false, 2, (Object) null)) {
                String lowerCase3 = permission.toLowerCase();
                Intrinsics.checkExpressionValueIsNotNull(lowerCase3, "(this as java.lang.String).toLowerCase()");
                if (!StringsKt.contains$default((CharSequence) lowerCase3, (CharSequence) "read_phone_state", false, 2, (Object) null)) {
                    return;
                }
                if (z) {
                    AnalyticsManager.INSTANCE.fire(Event.PermissionsManageCallsAllow.INSTANCE);
                } else {
                    AnalyticsManager.INSTANCE.fire(Event.PermissionsManageCallsPopupView.INSTANCE);
                }
            } else if (z) {
                AnalyticsManager.INSTANCE.fire(Event.PermissionsCallLogsAllow.INSTANCE);
            } else {
                AnalyticsManager.INSTANCE.fire(Event.PermissionsCallLogsDeny.INSTANCE);
            }
        } else if (z) {
            AnalyticsManager.INSTANCE.fire(Event.PermissionsContactsAllow.INSTANCE);
        } else {
            AnalyticsManager.INSTANCE.fire(Event.PermissionsContactsDeny.INSTANCE);
        }
    }
}
