package com.privacystar.core.p011ui.report;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.providers.DeviceNumberProvider;
import com.privacystar.core.p011ui.report.GenericReportContract;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.OffenderUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��n\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t*\u0002\u0006\u0014\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\nH\u0002J\u0006\u0010\"\u001a\u00020#J\u0006\u0010$\u001a\u00020#J\u0006\u0010%\u001a\u00020 J\b\u0010&\u001a\u00020 H\u0002J\u0018\u0010'\u001a\u00020 2\u0006\u0010!\u001a\u00020\n2\u0006\u0010(\u001a\u00020)H\u0002J\u0006\u0010*\u001a\u00020 J\u000e\u0010+\u001a\u00020 2\u0006\u0010,\u001a\u00020)J\u0010\u0010-\u001a\u00020 2\u0006\u0010.\u001a\u00020\nH\u0002J\u0006\u0010/\u001a\u00020)J\b\u00100\u001a\u00020)H\u0002J&\u00101\u001a\u00020 2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u0012R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00120\u001bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\u001eX\u0082\u0004¢\u0006\u0002\n��¨\u00062"}, m254d2 = {"Lcom/privacystar/core/ui/report/GenericReportPresenter;", "", Promotion.ACTION_VIEW, "Lcom/privacystar/core/ui/report/GenericReportContract$View;", "(Lcom/privacystar/core/ui/report/GenericReportContract$View;)V", "animationEndedListenerImpl", "com/privacystar/core/ui/report/GenericReportPresenter$animationEndedListenerImpl$1", "Lcom/privacystar/core/ui/report/GenericReportPresenter$animationEndedListenerImpl$1;", "backStack", "Ljava/util/ArrayDeque;", "Lcom/privacystar/core/ui/report/GenericReportContract$ReportNavigation;", "callTime", "", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "manager", "Lcom/privacystar/core/ui/report/GenericReportManagerImpl;", "name", "", "navigationListener", "com/privacystar/core/ui/report/GenericReportPresenter$navigationListener$1", "Lcom/privacystar/core/ui/report/GenericReportPresenter$navigationListener$1;", "number", "page", "preferenceChangedListener", "Ljava/lang/Runnable;", "reportItems", "Ljava/util/HashMap;", "", "text", "Ljava/lang/ref/WeakReference;", "animateNavigation", "", "nextPage", "buttonOptionIfNextAvailable", "Lcom/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption;", "buttonOptionIfNextNotAvailable", "closePageRequested", "finishReportFlow", "goToView", "backward", "", "onBackPressed", "onReadyToMoveToNextPage", "isReady", "saveStack", "currentPage", "shouldHideBottomNextButton", "shouldShowSuccessAsActivity", "viewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.GenericReportPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/GenericReportPresenter.class */
public final class GenericReportPresenter {
    private long callTime;
    private Caller caller;
    private final WeakReference<GenericReportContract.View> view;
    private final GenericReportManagerImpl manager = GenericReportManagerImpl.INSTANCE;
    private String name = "";
    private String text = "";
    private String number = "";
    private final HashMap<Integer, String> reportItems = new HashMap<>();
    private final ArrayDeque<GenericReportContract.ReportNavigation> backStack = new ArrayDeque<>();
    private GenericReportContract.ReportNavigation page = GenericReportContract.ReportNavigation.NONE;
    private final Runnable preferenceChangedListener = new Runnable() { // from class: com.privacystar.core.ui.report.GenericReportPresenter$preferenceChangedListener$1
        @Override // java.lang.Runnable
        public final void run() {
            do {
            } while (!PreferenceUtil.getShowReportSubmittedMessage());
            GenericReportPresenter.this.finishReportFlow();
        }
    };
    private final GenericReportPresenter$navigationListener$1 navigationListener = new GenericReportContract.ReportNavigationListener() { // from class: com.privacystar.core.ui.report.GenericReportPresenter$navigationListener$1
        @Override // com.privacystar.core.p011ui.report.GenericReportContract.ReportNavigationListener
        public void onNavigation(@NotNull GenericReportContract.ReportNavigation page) {
            Intrinsics.checkParameterIsNotNull(page, "page");
            GenericReportPresenter.this.animateNavigation(page);
        }
    };
    private final GenericReportPresenter$animationEndedListenerImpl$1 animationEndedListenerImpl = new GenericReportPresenter$animationEndedListenerImpl$1(this);

    /* JADX WARN: Type inference failed for: r1v11, types: [com.privacystar.core.ui.report.GenericReportPresenter$navigationListener$1] */
    public GenericReportPresenter(@NotNull GenericReportContract.View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = new WeakReference<>(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void animateNavigation(GenericReportContract.ReportNavigation reportNavigation) {
        boolean z;
        if (reportNavigation == GenericReportContract.ReportNavigation.BACK) {
            z = false;
            if (this.backStack.isEmpty()) {
                reportNavigation = GenericReportContract.ReportNavigation.NONE;
                onBackPressed();
            } else {
                GenericReportContract.ReportNavigation pop = this.backStack.pop();
                Intrinsics.checkExpressionValueIsNotNull(pop, "backStack.pop()");
                reportNavigation = pop;
            }
        } else {
            saveStack(this.page);
            z = true;
        }
        this.animationEndedListenerImpl.setActualPage(reportNavigation);
        this.animationEndedListenerImpl.setForward(z);
        GenericReportContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (z) {
            view.animateReportContentOut(this.animationEndedListenerImpl);
        } else {
            view.animateReportContentIn(this.animationEndedListenerImpl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void finishReportFlow() {
        if (shouldShowSuccessAsActivity()) {
            GenericReportContract.View view = this.view.get();
            if (view != null) {
                view.launchThankYouPage(this.number);
                return;
            }
            return;
        }
        closePageRequested();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void goToView(GenericReportContract.ReportNavigation reportNavigation, boolean z) {
        this.page = reportNavigation;
        GenericReportContract.View view = this.view.get();
        if (view != null) {
            view.addACleanReportContainer();
            ReportBuilderBundle reportBuilderBundle = view.getReportBuilderBundle(this.navigationListener, z, this.reportItems, this.number);
            boolean z2 = true;
            switch (reportNavigation) {
                case NON_OFFENDER:
                    view.setupNonOffenderView(reportBuilderBundle);
                    z2 = false;
                    break;
                case DEBT_COLLECTOR_START:
                    view.setupDebtCollectorStartView(reportBuilderBundle);
                    z2 = false;
                    break;
                case DEBT_MIDDLE:
                    view.setupGenericEndView(reportBuilderBundle);
                    break;
                case DEBT_END:
                    view.setupDebtConsentView(reportBuilderBundle);
                    z2 = false;
                    break;
                case TELEMARKETER_START:
                    view.setupGenericEndView(reportBuilderBundle);
                    break;
                case SCAMMER_START:
                    view.setupScammerStartView(reportBuilderBundle);
                    z2 = false;
                    break;
                case SCAMMER_END:
                    view.setupScammerEndView(reportBuilderBundle);
                    break;
                case TEXT_MESSAGE:
                    view.setupTextMessageView(reportBuilderBundle);
                    z2 = false;
                    break;
                case THANK_YOU:
                    Timber.m28v("Report data:", new Object[0]);
                    for (Map.Entry<Integer, String> entry : this.reportItems.entrySet()) {
                        Timber.m28v("  [%s:%s]", Integer.valueOf(entry.getKey().intValue()), entry.getValue());
                    }
                    new Thread(this.preferenceChangedListener).start();
                    view.submitComplaint(this.reportItems, this.number, this.callTime);
                    z2 = false;
                    break;
                default:
                    Timber.m25w("Unknown page was navigated to.", new Object[0]);
                    z2 = false;
                    break;
            }
            if (z2) {
                onReadyToMoveToNextPage(false);
            }
        }
    }

    private final void saveStack(GenericReportContract.ReportNavigation reportNavigation) {
        if (reportNavigation != GenericReportContract.ReportNavigation.BACK && reportNavigation != GenericReportContract.ReportNavigation.NONE) {
            this.backStack.push(reportNavigation);
        }
    }

    private final boolean shouldShowSuccessAsActivity() {
        return this.manager.shouldShowSuccessAsANewPage();
    }

    @NotNull
    public final GenericReportContract.ButtonDisplayOption buttonOptionIfNextAvailable() {
        return this.manager.buttonOptionIfNotLastPage();
    }

    @NotNull
    public final GenericReportContract.ButtonDisplayOption buttonOptionIfNextNotAvailable() {
        return this.manager.buttonOptionIfLastPage();
    }

    public final void closePageRequested() {
        GenericReportContract.View view = this.view.get();
        if (view != null) {
            view.finishActivity();
        }
    }

    public final void onBackPressed() {
        GenericReportContract.View view = this.view.get();
        if (view == null) {
            return;
        }
        if (this.backStack.isEmpty()) {
            view.goBackFromActivity();
        } else {
            animateNavigation(GenericReportContract.ReportNavigation.BACK);
        }
    }

    public final void onReadyToMoveToNextPage(boolean z) {
        GenericReportContract.View view;
        Timber.m37d("Is Ready to move to the next page: " + z, new Object[0]);
        if (!this.manager.shouldDynamicallyEnableDisableButtons() || (view = this.view.get()) == null) {
            return;
        }
        if (view.isShowingLastPage()) {
            view.enableActionButtons(z);
        } else {
            view.refreshMenuItem(z);
        }
    }

    public final boolean shouldHideBottomNextButton() {
        return this.manager.buttonOptionIfNotLastPage() == GenericReportContract.ButtonDisplayOption.BUTTON_ON_TOOLBAR;
    }

    public final void viewCreated(@NotNull String name, @NotNull String number, long j, @NotNull String text) {
        GenericReportContract.ReportNavigation reportNavigation;
        char c;
        int i;
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(number, "number");
        Intrinsics.checkParameterIsNotNull(text, "text");
        this.name = name;
        this.number = number;
        this.callTime = j;
        this.text = text;
        Caller populatedCaller = CallerFactory.getInstance().getPopulatedCaller(number);
        Intrinsics.checkExpressionValueIsNotNull(populatedCaller, "CallerFactory.getInstanc…etPopulatedCaller(number)");
        this.caller = populatedCaller;
        GenericReportContract.View view = this.view.get();
        if (view != null) {
            view.setupToolbar();
            if (this.manager.buttonOptionIfNotLastPage() == GenericReportContract.ButtonDisplayOption.BUTTON_ON_TOOLBAR) {
                view.addCloseIconToLeftOfToolbar();
            }
            String str = this.name;
            Caller caller = this.caller;
            if (caller == null) {
                Intrinsics.throwUninitializedPropertyAccessException("caller");
            }
            String displayNumber = caller.getDisplayNumber();
            Intrinsics.checkExpressionValueIsNotNull(displayNumber, "this.caller.displayNumber");
            Caller caller2 = this.caller;
            if (caller2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("caller");
            }
            view.setupCallerInformationText(str, displayNumber, caller2);
        }
        this.reportItems.put(5, name);
        this.reportItems.put(4, number);
        this.reportItems.put(6, DeviceNumberProvider.INSTANCE.getNumber());
        if (PreferenceUtil.getAGServiceConfigured()) {
            HashMap<Integer, String> hashMap = this.reportItems;
            String aGState = PreferenceUtil.getAGState();
            Intrinsics.checkExpressionValueIsNotNull(aGState, "PreferenceUtil.getAGState()");
            hashMap.put(70, aGState);
            this.reportItems.put(71, String.valueOf(PreferenceUtil.getAGServiceEligible()));
        }
        Caller caller3 = this.caller;
        if (caller3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("caller");
        }
        OffenderUtil.EOffenderCategory offenderCategory = caller3.getOffenderCategory();
        Intrinsics.checkExpressionValueIsNotNull(offenderCategory, "caller.offenderCategory");
        switch (offenderCategory.getUiType()) {
            case SCAM:
                reportNavigation = GenericReportContract.ReportNavigation.SCAMMER_START;
                break;
            case TELEMARKETING:
                reportNavigation = GenericReportContract.ReportNavigation.TELEMARKETER_START;
                break;
            case ACCOUNT_SERVICES:
                reportNavigation = GenericReportContract.ReportNavigation.DEBT_COLLECTOR_START;
                break;
            default:
                reportNavigation = GenericReportContract.ReportNavigation.NON_OFFENDER;
                break;
        }
        this.page = reportNavigation;
        boolean z = true;
        if (this.page != GenericReportContract.ReportNavigation.NON_OFFENDER) {
            switch (this.page) {
                case SCAMMER_START:
                    c = 2;
                    break;
                case DEBT_COLLECTOR_START:
                    c = 1;
                    break;
                default:
                    c = 0;
                    break;
            }
            GenericReportContract.View view2 = this.view.get();
            if (view2 != null) {
                this.reportItems.put(2, view2.getDefaultQuestionArray()[c]);
            }
            Caller caller4 = this.caller;
            if (caller4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("caller");
            }
            OffenderUtil.EOffenderCategory offenderCategory2 = caller4.getOffenderCategory();
            Intrinsics.checkExpressionValueIsNotNull(offenderCategory2, "caller.offenderCategory");
            switch (offenderCategory2.getUiType()) {
                case ACCOUNT_SERVICES:
                    i = 53;
                    break;
                case TELEMARKETING:
                    i = 54;
                    break;
                case SCAM:
                    i = 55;
                    break;
                case CHARITY:
                    i = 56;
                    break;
                case POLITICAL:
                    i = 57;
                    break;
                case SURVEY:
                    i = 58;
                    break;
                default:
                    i = 60;
                    break;
            }
            this.reportItems.put(Integer.valueOf(i), "true");
        }
        if (text.length() <= 0) {
            z = false;
        }
        if (z && this.manager.shouldConsiderSMS()) {
            this.page = GenericReportContract.ReportNavigation.TEXT_MESSAGE;
        }
        goToView(this.page, false);
    }
}
