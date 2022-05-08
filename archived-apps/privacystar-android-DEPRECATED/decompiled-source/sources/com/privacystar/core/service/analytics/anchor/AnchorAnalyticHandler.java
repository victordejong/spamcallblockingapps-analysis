package com.privacystar.core.service.analytics.anchor;

import com.privacystar.core.service.analytics.AnalyticHandler;
import com.privacystar.core.service.analytics.Event;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JZ\u0010\r\u001aT\u0012\u0004\u0012\u00020\u0005\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u00060\u0004j)\u0012\u0004\u0012\u00020\u0005\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0006`\fH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007H\u0016R`\u0010\u0003\u001aT\u0012\u0004\u0012\u00020\u0005\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u00060\u0004j)\u0012\u0004\u0012\u00020\u0005\u0012\u001f\u0012\u001d\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\b\u0012\b\b\t\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0006`\fX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/service/analytics/anchor/AnchorAnalyticHandler;", "Lcom/privacystar/core/service/analytics/AnalyticHandler;", "()V", "eventMap", "Ljava/util/HashMap;", "", "Lkotlin/Function1;", "Lcom/privacystar/core/service/analytics/Event;", "Lkotlin/ParameterName;", "name", "event", "", "Lkotlin/collections/HashMap;", "createEventMap", "logEvent", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/anchor/AnchorAnalyticHandler.class */
public final class AnchorAnalyticHandler implements AnalyticHandler {
    public static final AnchorAnalyticHandler INSTANCE;
    private static final HashMap<Integer, Function1<Event, Unit>> eventMap;

    static {
        AnchorAnalyticHandler anchorAnalyticHandler = new AnchorAnalyticHandler();
        INSTANCE = anchorAnalyticHandler;
        eventMap = anchorAnalyticHandler.createEventMap();
    }

    private AnchorAnalyticHandler() {
    }

    private final HashMap<Integer, Function1<Event, Unit>> createEventMap() {
        HashMap<Integer, Function1<Event, Unit>> hashMap = new HashMap<>(150);
        HashMap<Integer, Function1<Event, Unit>> hashMap2 = hashMap;
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeLogoSplashPageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$1.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserPageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$2.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserCloseClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$3.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserTrialClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$4.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserPpClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$5.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserTacClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$6.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellFreeUserBackClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$7.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserPageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$8.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserBackClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$9.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserContinueClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$10.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserPpClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$11.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.WelcomeUpsellPremiumUserTacClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$12.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PrivacyPolicyView.class).hashCode()), AnchorAnalyticHandler$createEventMap$13.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PrivacyPolicyContinueClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$14.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNumberVerificationView.class).hashCode()), AnchorAnalyticHandler$createEventMap$15.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNumberVerificationNumberEnterClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$16.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNumberVerificationSendClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$17.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsSmsPopupView.class).hashCode()), AnchorAnalyticHandler$createEventMap$18.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsSmsAllow.class).hashCode()), AnchorAnalyticHandler$createEventMap$19.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionSmsDeny.class).hashCode()), AnchorAnalyticHandler$createEventMap$20.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationCodePageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$21.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationCodeNumberEnterClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$22.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationCodeResendClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$23.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationErrorCode.class).hashCode()), AnchorAnalyticHandler$createEventMap$24.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNumberVerifyingView.class).hashCode()), AnchorAnalyticHandler$createEventMap$25.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerificationCodeBackClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$26.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerifyYourNumberView.class).hashCode()), AnchorAnalyticHandler$createEventMap$27.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerifyYourNumberEnterNumberClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$28.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationVerifyYourNumberSendClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$29.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCallCategoryPageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$30.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCallCategoryctaClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$31.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCategorySettingView.class).hashCode()), AnchorAnalyticHandler$createEventMap$32.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationScamOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$33.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationScamOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$34.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNuisanceOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$35.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNuisanceOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$36.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationNuisanceUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$37.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationTelemarketingOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$38.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationTelemarketingOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$39.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationTelemarketingUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$40.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationAccountServicesOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$41.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationAccountServicesOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$42.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationAccountServicesUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$43.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPoliticalOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$44.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPoliticalOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$45.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPoliticalUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$46.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSurveyOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$47.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSurveyOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$48.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSurveyUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$49.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCharityOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$50.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCharityOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$51.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationCharityUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$52.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPrisonOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$53.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPrisonOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$54.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationPrisonUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$55.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsPageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$56.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsAllowClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$57.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsCloseClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$58.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsCallLogsPopupView.class).hashCode()), AnchorAnalyticHandler$createEventMap$59.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsCallLogsAllow.class).hashCode()), AnchorAnalyticHandler$createEventMap$60.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsCallLogsDeny.class).hashCode()), AnchorAnalyticHandler$createEventMap$61.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsManageCallsPopupView.class).hashCode()), AnchorAnalyticHandler$createEventMap$62.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsManageCallsAllow.class).hashCode()), AnchorAnalyticHandler$createEventMap$63.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsManageCallsDeny.class).hashCode()), AnchorAnalyticHandler$createEventMap$64.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsContactsPopupView.class).hashCode()), AnchorAnalyticHandler$createEventMap$65.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsContactsAllow.class).hashCode()), AnchorAnalyticHandler$createEventMap$66.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionsContactsDeny.class).hashCode()), AnchorAnalyticHandler$createEventMap$67.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionRequiredView.class).hashCode()), AnchorAnalyticHandler$createEventMap$68.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.PermissionRequiredToggleClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$69.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$70.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivityPageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$71.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivityNumberLookupClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$72.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivityInactivityVerifyView.class).hashCode()), AnchorAnalyticHandler$createEventMap$73.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivityInactivityVerifyClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$74.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsView.class).hashCode()), AnchorAnalyticHandler$createEventMap$75.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsCall.class).hashCode()), AnchorAnalyticHandler$createEventMap$76.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsText.class).hashCode()), AnchorAnalyticHandler$createEventMap$77.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsBlock.class).hashCode()), AnchorAnalyticHandler$createEventMap$78.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsAllow.class).hashCode()), AnchorAnalyticHandler$createEventMap$79.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsReport.class).hashCode()), AnchorAnalyticHandler$createEventMap$80.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsAddContact.class).hashCode()), AnchorAnalyticHandler$createEventMap$81.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsRoboSurveyClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$82.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberDetailsCategorySurveyClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$83.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberReportView.class).hashCode()), AnchorAnalyticHandler$createEventMap$84.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NumberReportSubmit.class).hashCode()), AnchorAnalyticHandler$createEventMap$85.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuView.class).hashCode()), AnchorAnalyticHandler$createEventMap$86.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuActivity.class).hashCode()), AnchorAnalyticHandler$createEventMap$87.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuBlockAllowList.class).hashCode()), AnchorAnalyticHandler$createEventMap$88.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuNotification.class).hashCode()), AnchorAnalyticHandler$createEventMap$89.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuSetting.class).hashCode()), AnchorAnalyticHandler$createEventMap$90.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SideMenuDashboard.class).hashCode()), AnchorAnalyticHandler$createEventMap$91.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.BlockNewEntry.class).hashCode()), AnchorAnalyticHandler$createEventMap$92.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.BlockAddNumber.class).hashCode()), AnchorAnalyticHandler$createEventMap$93.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.BlockRemoveNumber.class).hashCode()), AnchorAnalyticHandler$createEventMap$94.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.BlockViewDetails.class).hashCode()), AnchorAnalyticHandler$createEventMap$95.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.AllowNewEntry.class).hashCode()), AnchorAnalyticHandler$createEventMap$96.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.AllowAddNumber.class).hashCode()), AnchorAnalyticHandler$createEventMap$97.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.AllowRemoveNumber.class).hashCode()), AnchorAnalyticHandler$createEventMap$98.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.AllowViewDetails.class).hashCode()), AnchorAnalyticHandler$createEventMap$99.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NotificationsPageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$100.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NotificationsMessageDelete.class).hashCode()), AnchorAnalyticHandler$createEventMap$101.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.NotificationsMessageRead.class).hashCode()), AnchorAnalyticHandler$createEventMap$102.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$103.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsHelp.class).hashCode()), AnchorAnalyticHandler$createEventMap$104.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsAbout.class).hashCode()), AnchorAnalyticHandler$createEventMap$105.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsShare.class).hashCode()), AnchorAnalyticHandler$createEventMap$106.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsRate.class).hashCode()), AnchorAnalyticHandler$createEventMap$107.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsScamOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$108.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsScamOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$109.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsNuisanceOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$110.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsNuisanceOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$111.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsNuisanceUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$112.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsTelemarketingOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$113.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsTelemarketingOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$114.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsTelemarketingUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$115.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsAccountServicesOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$116.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsAccountServicesOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$117.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsAccountServicesUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$118.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPoliticalOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$119.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPoliticalOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$120.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPoliticalUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$121.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsSurveyOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$122.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsSurveyOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$123.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsSurveyUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$124.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsCharityOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$125.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsCharityOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$126.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsCharityUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$127.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPrisonOn.class).hashCode()), AnchorAnalyticHandler$createEventMap$128.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPrisonOff.class).hashCode()), AnchorAnalyticHandler$createEventMap$129.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SettingsPrisonUpsellClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$130.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.DashboardPageView.class).hashCode()), AnchorAnalyticHandler$createEventMap$131.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.CallerIdentifierPopup.class).hashCode()), AnchorAnalyticHandler$createEventMap$132.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.CallerIdentifierBlock.class).hashCode()), AnchorAnalyticHandler$createEventMap$133.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.CallerIdentifierClose.class).hashCode()), AnchorAnalyticHandler$createEventMap$134.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.DropdownNotificationBlock.class).hashCode()), AnchorAnalyticHandler$createEventMap$135.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.DropdownNotificationReport.class).hashCode()), AnchorAnalyticHandler$createEventMap$136.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.DropdownNotificationClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$137.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.SkippedPhoneVerification.class).hashCode()), AnchorAnalyticHandler$createEventMap$138.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.LookupEvent.class).hashCode()), AnchorAnalyticHandler$createEventMap$139.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.OffenderListSyncEvent.class).hashCode()), AnchorAnalyticHandler$createEventMap$140.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ComplaintFeedback.class).hashCode()), AnchorAnalyticHandler$createEventMap$141.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ComplaintFiled.class).hashCode()), AnchorAnalyticHandler$createEventMap$142.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSuccessView.class).hashCode()), AnchorAnalyticHandler$createEventMap$143.INSTANCE);
        hashMap2.put(Integer.valueOf(Reflection.getOrCreateKotlinClass(Event.ActivationSuccessClick.class).hashCode()), AnchorAnalyticHandler$createEventMap$144.INSTANCE);
        return hashMap;
    }

    @Override // com.privacystar.core.service.analytics.AnalyticHandler
    public void logEvent(@NotNull Event event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        Timber.m37d("Logging AnchorAnalyticEvent: " + event, new Object[0]);
        Function1<Event, Unit> function1 = eventMap.get(Integer.valueOf(Reflection.getOrCreateKotlinClass(event.getClass()).hashCode()));
        if (function1 != null) {
            function1.invoke(event);
        }
    }
}
