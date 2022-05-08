package com.privacystar.core.p011ui.intro.af_welcome;

import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcome;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import io.realm.Realm;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0010"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_welcome/AFWelcomePresenter;", "", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/intro/af_welcome/AFWelcome$AFWelcomeView;", "(Ljava/lang/ref/WeakReference;)V", "premium", "", "getPremium", "()Z", "getView", "()Ljava/lang/ref/WeakReference;", "onBackButtonClick", "", "onDialogFinished", "onViewCreated", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_welcome.AFWelcomePresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_welcome/AFWelcomePresenter.class */
public final class AFWelcomePresenter {
    private final boolean premium;
    @NotNull
    private final WeakReference<AFWelcome.AFWelcomeView> view;

    public AFWelcomePresenter(@NotNull WeakReference<AFWelcome.AFWelcomeView> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
        Realm defaultInstance = Realm.getDefaultInstance();
        Throwable th = null;
        try {
            boolean isSubscriptionActive = SubscriptionRealm.isSubscriptionActive(defaultInstance);
            CloseableKt.closeFinally(defaultInstance, th);
            this.premium = isSubscriptionActive;
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean getPremium() {
        return this.premium;
    }

    @NotNull
    public final WeakReference<AFWelcome.AFWelcomeView> getView() {
        return this.view;
    }

    public final void onBackButtonClick() {
        if (this.premium) {
            AnalyticsManager.INSTANCE.fire(Event.WelcomeUpsellPremiumUserBackClick.INSTANCE);
        } else {
            AnalyticsManager.INSTANCE.fire(Event.WelcomeUpsellFreeUserBackClick.INSTANCE);
        }
    }

    public final void onDialogFinished() {
        AFWelcome.AFWelcomeView aFWelcomeView = this.view.get();
        if (aFWelcomeView != null) {
            aFWelcomeView.transition();
        }
    }

    public final void onViewCreated() {
        AFWelcome.AFWelcomeView aFWelcomeView = this.view.get();
        if (aFWelcomeView != null) {
            aFWelcomeView.showWelcomeDialog(this.premium);
        }
    }
}
