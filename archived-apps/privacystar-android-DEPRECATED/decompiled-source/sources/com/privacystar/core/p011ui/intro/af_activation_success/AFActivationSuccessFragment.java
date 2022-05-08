package com.privacystar.core.p011ui.intro.af_activation_success;

import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.intro.af_activation_success.AFActivationSuccessContract;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\fH\u0014J\b\u0010\r\u001a\u00020\nH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\b\u0010\u0019\u001a\u00020\u0017H\u0016J\b\u0010\u001a\u001a\u00020\nH\u0016J\b\u0010\u001b\u001a\u00020\u0017H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u001c"}, m254d2 = {"Lcom/privacystar/core/ui/intro/af_activation_success/AFActivationSuccessFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "Lcom/privacystar/core/ui/intro/af_activation_success/AFActivationSuccessContract$View;", "()V", "presenter", "Lcom/privacystar/core/ui/intro/af_activation_success/AFActivationSuccessPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/intro/af_activation_success/AFActivationSuccessPresenter;", "canAutoTransition", "", "getLayoutResId", "", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", Promotion.ACTION_VIEW, "setClickListeners", "shouldDisplay", "transition", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.af_activation_success.AFActivationSuccessFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/af_activation_success/AFActivationSuccessFragment.class */
public final class AFActivationSuccessFragment extends IntroFragment implements IntroActivity.IntroActivityContent, AFActivationSuccessContract.View {
    private HashMap _$_findViewCache;
    @NotNull
    private final AFActivationSuccessPresenter presenter = new AFActivationSuccessPresenter(this);

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
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.af_activation_success_fragment;
    }

    @NotNull
    public final AFActivationSuccessPresenter getPresenter() {
        return this.presenter;
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
        this.presenter.onViewCreated();
    }

    @Override // com.privacystar.core.p011ui.intro.af_activation_success.AFActivationSuccessContract.View
    public void setClickListeners() {
        ((CardView) _$_findCachedViewById(C1566R.C1569id.anchor_free_activation_success_cv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.af_activation_success.AFActivationSuccessFragment$setClickListeners$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFActivationSuccessFragment.this.getPresenter().onButtonPressed();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getActivationScreenVisited();
    }

    @Override // com.privacystar.core.p011ui.intro.af_activation_success.AFActivationSuccessContract.View
    public void transition() {
        transitionIntroFragment();
    }
}
