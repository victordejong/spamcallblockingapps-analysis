package com.privacystar.core.p011ui.intro.verification;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.calleryd.CallerYDHelper;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.privacystar.core.util.SystemUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0016J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0007J\b\u0010\u0014\u001a\u00020\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0005H\u0002J\b\u0010\u0016\u001a\u00020\u0005H\u0016¨\u0006\u0017"}, m254d2 = {"Lcom/privacystar/core/ui/intro/verification/VerificationFailedFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "canAutoTransition", "", "getLayoutResId", "", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "", "onRetryClick", "onStart", "shouldAutoTransition", "shouldDisplay", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.verification.VerificationFailedFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/verification/VerificationFailedFragment.class */
public final class VerificationFailedFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private HashMap _$_findViewCache;

    private final boolean shouldAutoTransition() {
        return PreferenceUtil.getIsNumberVerified() && SubscriptionRealm.getSubscription() != null;
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean canAutoTransition() {
        return true;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.verification_failed_fragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        ButterKnife.bind(this, inflate);
        CallerYDHelper.INSTANCE.resetCodeVerificationSubscriptions();
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (shouldAutoTransition()) {
            Timber.m37d("Number has been verified, transitioning view.", new Object[0]);
            transitionIntroFragment();
            return;
        }
        Timber.m37d("App resumed and still is not verified.", new Object[0]);
    }

    @OnClick({C1566R.C1569id.verification_failed_cv})
    public final void onRetryClick() {
        Timber.m37d("Retry clicked.", new Object[0]);
        if (SubscriptionRealm.getSubscription() == null) {
            RegistrationHandler.getInstance().checkRegistration(PSApplication.context());
        }
        PreferenceUtil.putIsNumberVerifying(false);
        PreferenceUtil.putIsNumberVerificationSkipped(false);
        SystemUtil.internallyRestartApp$default(SystemUtil.INSTANCE, null, 1, null);
    }

    @Override // com.privacystar.core.p011ui.PSFragment, android.support.p001v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (shouldAutoTransition()) {
            Timber.m37d("Number has been verified, transitioning view.", new Object[0]);
            transitionIntroFragment();
            return;
        }
        Timber.m37d("App resumed and still is not verified.", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        Context context = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        if (!context.getResources().getBoolean(C1566R.bool.calleryd_enabled)) {
            return false;
        }
        Context context2 = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context2, "PSApplication.context()");
        boolean z = context2.getResources().getBoolean(C1566R.bool.calleryd_verification_skippable);
        if (!PreferenceUtil.getIsNumberVerified() && !z) {
            Timber.m37d("Verification failure displaying because: ENGAGE number not verified.", new Object[0]);
            return true;
        } else if (SubscriptionRealm.getSubscription() != null || z) {
            return false;
        } else {
            Timber.m37d("Verification failure displaying because: Registration not completed.", new Object[0]);
            return true;
        }
    }
}
