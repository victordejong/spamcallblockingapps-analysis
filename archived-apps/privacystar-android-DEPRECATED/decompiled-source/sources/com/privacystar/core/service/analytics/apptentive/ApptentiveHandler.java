package com.privacystar.core.service.analytics.apptentive;

import com.privacystar.core.service.analytics.AnalyticHandler;
import com.privacystar.core.service.analytics.Event;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/apptentive/ApptentiveHandler;", "Lcom/privacystar/core/service/analytics/AnalyticHandler;", "()V", "logEvent", "", "event", "Lcom/privacystar/core/service/analytics/Event;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/apptentive/ApptentiveHandler.class */
public final class ApptentiveHandler implements AnalyticHandler {
    @Override // com.privacystar.core.service.analytics.AnalyticHandler
    public void logEvent(@NotNull Event event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        if (event instanceof Event.ActiveToExpiredEvent) {
            new ApptentiveEvent(ApptentiveConstants.LICENSE_ACTIVE_TO_EXPIRED).track();
        } else if (event instanceof Event.ActivityPageView) {
            new ApptentiveEvent(ApptentiveConstants.ACTIVITY_LIST_VIEW_ENTERED).track();
        } else if (event instanceof Event.AllowAddNumber) {
            new ApptentiveEvent(ApptentiveConstants.APPROVED_LIST_VIEW_ENTERED).track();
        } else if (event instanceof Event.ApprovedNumberEvent) {
            if (((Event.ApprovedNumberEvent) event).getAction() == Event.ApprovedListAction.APPROVE) {
                new ApptentiveEvent(ApptentiveConstants.NUMBER_ADDED_TO_APPROVED_LIST).track();
            }
        } else if (event instanceof Event.BlockNumberEvent) {
            if (((Event.BlockNumberEvent) event).getAction() == Event.BlockListAction.BLOCK) {
                new ApptentiveEvent(ApptentiveConstants.NUMBER_ADDED_TO_BLOCK_LIST).track();
            }
        } else if (event instanceof Event.BlockViewDetails) {
            new ApptentiveEvent(ApptentiveConstants.BLOCK_LIST_VIEW_ENTERED).track();
        } else if (event instanceof Event.ComplaintFeedbackEvent) {
            new ApptentiveEvent("Complaint_Filed").track();
        } else if (event instanceof Event.NumberDetailsReport) {
            new ApptentiveEvent(ApptentiveConstants.COMPLAINT_STARTED_FROM_DETAILS).track();
        } else if (event instanceof Event.ComplaintFromHomeEvent) {
            new ApptentiveEvent(ApptentiveConstants.COMPLAINT_STARTED_FROM_HOME).track();
        } else if (event instanceof Event.ComplaintFromOthersEvent) {
            new ApptentiveEvent(ApptentiveConstants.COMPLAINT_STARTED_FROM_OTHERS).track();
        } else if (event instanceof Event.NumberDetailsView) {
            new ApptentiveEvent(ApptentiveConstants.DETAILS_VIEW_ENTERED).track();
        } else if (event instanceof Event.HotlistCallEvent) {
            new ApptentiveEvent(ApptentiveConstants.HOT_LIST_OFFENDER_CALLED).track();
        } else if (event instanceof Event.NotificationsPageView) {
            new ApptentiveEvent(ApptentiveConstants.INBOX_VIEW_ENTERED).track();
        } else if (event instanceof Event.IncomingCallBlockedEvent) {
            new ApptentiveEvent(ApptentiveConstants.CALL_BLOCKED).track();
        } else if (event instanceof Event.InitiatedCallEvent) {
            new ApptentiveEvent(ApptentiveConstants.INITIATED_CALL).track();
        } else if (event instanceof Event.InitiatedMessageEvent) {
            new ApptentiveEvent(ApptentiveConstants.INITIATED_SMS).track();
        } else if (event instanceof Event.ManualLookupEvent) {
            new ApptentiveEvent(ApptentiveConstants.MANUAL_NUMBER_LOOKUP).track();
        } else if (event instanceof Event.OnboardingSubscription) {
            new ApptentiveEvent(ApptentiveConstants.ONBOARDING_SUBSCRIPTION, MapsKt.mapOf(TuplesKt.m248to(ApptentiveConstants.ONBOARDING_SUBSCRIPTION_KEY, ((Event.OnboardingSubscription) event).getAction()))).track();
        } else if (event instanceof Event.OpenedContactsEvent) {
            new ApptentiveEvent(ApptentiveConstants.OPENED_CONTACTS).track();
        } else if (event instanceof Event.OpenedFromAppNotifEvent) {
            new ApptentiveEvent(ApptentiveConstants.APP_OPENED_FROM_INAPP_NOTIFICATION).track();
        } else if (event instanceof Event.OpenedFromCampaignNotifEvent) {
            new ApptentiveEvent(ApptentiveConstants.APP_OPENED_FROM_XTIFY_NOTIFICATION).track();
        } else if (event instanceof Event.PaymentStartedEvent) {
            new ApptentiveEvent(ApptentiveConstants.SUBSCRIPTION_FLOW_STARTED).track();
        } else if (event instanceof Event.PaymentResultEvent) {
            new ApptentiveEvent(ApptentiveConstants.SUBSCRIPTION_FLOW_COMPLETED).track();
            if (((Event.PaymentResultEvent) event).getPaymentSucceeded()) {
                new ApptentiveEvent(ApptentiveConstants.SUBSCRIPTION_SUCCESSFUL).track();
            }
        } else if (event instanceof Event.ScammerBlockedEvent) {
            new ApptentiveEvent(ApptentiveConstants.SCAMMER_BLOCKED).track();
        } else if (event instanceof Event.SharedLinkEvent) {
            new ApptentiveEvent(ApptentiveConstants.SHARED_LINK_HIT).track();
        } else if (event instanceof Event.SettingsPageView) {
            new ApptentiveEvent(ApptentiveConstants.SETTINGS_VIEW_ENTERED).track();
        } else if (event instanceof Event.StartupApplicationEvent) {
            new ApptentiveEvent(ApptentiveConstants.APP_UI_STARTED).track();
        } else if (event instanceof Event.UserNumberBlockedEvent) {
            new ApptentiveEvent(ApptentiveConstants.USER_NUMBER_BLOCKED).track();
        } else if (event instanceof Event.WalkthroughSkippedEvent) {
            new ApptentiveEvent(ApptentiveConstants.WALKTHROUGH_SKIP_ACTION, MapsKt.mapOf(TuplesKt.m248to(ApptentiveConstants.WALKTHROUGH_SKIP_KEY, ((Event.WalkthroughSkippedEvent) event).getAction()))).track();
        } else {
            Timber.m37d("Event [" + event.getClass().getSimpleName() + "] not defined", new Object[0]);
        }
    }
}
