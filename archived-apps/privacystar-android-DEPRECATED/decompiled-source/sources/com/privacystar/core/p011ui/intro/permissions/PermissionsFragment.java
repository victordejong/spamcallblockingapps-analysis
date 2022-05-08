package com.privacystar.core.p011ui.intro.permissions;

import android.os.Build;
import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.service.PreferenceUtil;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0014J\b\u0010\b\u001a\u00020\u0005H\u0016J\b\u0010\t\u001a\u00020\nH\u0002J&\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u001a\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\b\u0010\u0015\u001a\u00020\u0005H\u0016¨\u0006\u0016"}, m254d2 = {"Lcom/privacystar/core/ui/intro/permissions/PermissionsFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "canAutoTransition", "", "getLayoutResId", "", "handlesBackButton", "onAllowPermissionsClicked", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", Promotion.ACTION_VIEW, "shouldDisplay", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.permissions.PermissionsFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/permissions/PermissionsFragment.class */
public final class PermissionsFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private HashMap _$_findViewCache;

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAllowPermissionsClicked() {
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
        return C1566R.C1571layout.permissions_allow_fragment;
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
        ((CardView) _$_findCachedViewById(C1566R.C1569id.permissions_fragment_cv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.permissions.PermissionsFragment$onViewCreated$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PermissionsFragment.this.onAllowPermissionsClicked();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PreferenceUtil.getHasRequestedPermissions() && Build.VERSION.SDK_INT >= 23;
    }
}
