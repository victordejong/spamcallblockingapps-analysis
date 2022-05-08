package com.privacystar.core.p011ui.intro;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import com.jakewharton.rxbinding2.view.RxView;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0016J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0014\u001a\u00020\u0005H\u0016J\b\u0010\u0015\u001a\u00020\u0012H\u0002J\b\u0010\u0016\u001a\u00020\u0012H\u0002¨\u0006\u0017"}, m254d2 = {"Lcom/privacystar/core/ui/intro/OnboardingCallerYDFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "canAutoTransition", "", "getLayoutResId", "", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", Promotion.ACTION_VIEW, "shouldDisplay", "transitionWalkthrough", "updateText", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.OnboardingCallerYDFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/OnboardingCallerYDFragment.class */
public final class OnboardingCallerYDFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private HashMap _$_findViewCache;

    /* JADX INFO: Access modifiers changed from: private */
    public final void transitionWalkthrough() {
        Timber.m37d("Beginning ENGAGE verification flow.", new Object[0]);
        PreferenceUtil.putCYDVerificationStarted(true);
        transitionIntroFragment();
    }

    private final void updateText() {
        TextView walkthrough_title = (TextView) _$_findCachedViewById(C1566R.C1569id.walkthrough_title);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_title, "walkthrough_title");
        walkthrough_title.setText(getResources().getString(C1566R.string.onboarding_cyd_title));
        TextView walkthrough_subtitle = (TextView) _$_findCachedViewById(C1566R.C1569id.walkthrough_subtitle);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_subtitle, "walkthrough_subtitle");
        walkthrough_subtitle.setText(getResources().getString(C1566R.string.onboarding_cyd_subtitle));
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.walkthrough_icon)).setImageResource(C1566R.C1568drawable.ic_onboard_id_verification);
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
        return C1566R.C1571layout.walkthrough_fragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(getLayoutResId(), viewGroup, false);
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        FrameLayout walkthrough_next_fl = (FrameLayout) _$_findCachedViewById(C1566R.C1569id.walkthrough_next_fl);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_next_fl, "walkthrough_next_fl");
        Observable<R> map = RxView.clicks(walkthrough_next_fl).map(VoidToUnit.INSTANCE);
        Intrinsics.checkExpressionValueIsNotNull(map, "RxView.clicks(this).map(VoidToUnit)");
        map.throttleFirst(2L, TimeUnit.SECONDS).subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.intro.OnboardingCallerYDFragment$onViewCreated$1
            public final void accept(Unit unit) {
                OnboardingCallerYDFragment.this.transitionWalkthrough();
            }
        });
        LinearLayout walkthrough_dot_holder = (LinearLayout) _$_findCachedViewById(C1566R.C1569id.walkthrough_dot_holder);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_dot_holder, "walkthrough_dot_holder");
        ViewExtensionsKt.invisible(walkthrough_dot_holder);
        FrameLayout walkthrough_skip_fl = (FrameLayout) _$_findCachedViewById(C1566R.C1569id.walkthrough_skip_fl);
        Intrinsics.checkExpressionValueIsNotNull(walkthrough_skip_fl, "walkthrough_skip_fl");
        ViewExtensionsKt.gone(walkthrough_skip_fl);
        updateText();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        Context context = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        return context.getResources().getBoolean(C1566R.bool.calleryd_enabled) && !PreferenceUtil.getIsNumberVerified() && !PreferenceUtil.getIsNumberVerifying() && !PreferenceUtil.getIsNumberVerificationSkipped() && !PreferenceUtil.getCYDVerificationStarted();
    }
}
