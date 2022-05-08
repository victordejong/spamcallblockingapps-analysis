package com.privacystar.core.p011ui.intro;

import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.jakewharton.rxbinding2.internal.VoidToUnit;
import com.jakewharton.rxbinding2.view.RxView;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.handler.RegistrationHandler;
import com.rey.material.widget.Switch;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0016J&\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0005H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0002¨\u0006\u0014"}, m254d2 = {"Lcom/privacystar/core/ui/intro/AttorneyGeneralFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "canAutoTransition", "", "getLayoutResId", "", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "shouldDisplay", "submitSettings", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.AttorneyGeneralFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/AttorneyGeneralFragment.class */
public final class AttorneyGeneralFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private HashMap _$_findViewCache;

    /* JADX INFO: Access modifiers changed from: private */
    public final void submitSettings() {
        boolean z = false;
        Timber.m37d("Submit button clicked.", new Object[0]);
        Switch r0 = (Switch) _$_findCachedViewById(C1566R.C1569id.attorney_general_alerts_sw);
        PreferenceUtil.putAGAlertsEnabled(r0 != null ? r0.isActivated() : false);
        Switch r02 = (Switch) _$_findCachedViewById(C1566R.C1569id.attorney_general_complaints_sw);
        if (r02 != null) {
            z = r02.isActivated();
        }
        PreferenceUtil.putAGServiceEnabled(z);
        PreferenceUtil.putAGServiceConfigured(true);
        RegistrationHandler.getInstance().checkRegistrationWithPermissions(getContext(), true);
        transitionIntroFragment();
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
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.attorney_general_fragment;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        FrameLayout frameLayout;
        CardView cardView;
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        if (!(inflate == null || (cardView = (CardView) inflate.findViewById(C1566R.C1569id.attorney_general_submit_cv)) == null)) {
            Observable<R> map = RxView.clicks(cardView).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map, "RxView.clicks(this).map(VoidToUnit)");
            map.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.intro.AttorneyGeneralFragment$onCreateView$$inlined$let$lambda$1
                public final void accept(Unit unit) {
                    AttorneyGeneralFragment.this.submitSettings();
                }
            });
        }
        if (!(inflate == null || (frameLayout = (FrameLayout) inflate.findViewById(C1566R.C1569id.attorney_general_state_edit_fl)) == null)) {
            Observable<R> map2 = RxView.clicks(frameLayout).map(VoidToUnit.INSTANCE);
            Intrinsics.checkExpressionValueIsNotNull(map2, "RxView.clicks(this).map(VoidToUnit)");
            map2.subscribe(new Consumer<Unit>() { // from class: com.privacystar.core.ui.intro.AttorneyGeneralFragment$onCreateView$$inlined$let$lambda$2
                public final void accept(Unit unit) {
                    AttorneyGeneralFragment.this.rewindIntroFragment();
                }
            });
        }
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return PreferenceUtil.getAGServiceEligible() && !PreferenceUtil.getAGServiceConfigured();
    }
}
