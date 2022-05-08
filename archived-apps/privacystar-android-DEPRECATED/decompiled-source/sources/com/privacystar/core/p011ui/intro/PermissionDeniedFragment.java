package com.privacystar.core.p011ui.intro;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.intro.intro_core.IntroActivity;
import com.privacystar.core.p011ui.intro.intro_core.IntroFragment;
import com.privacystar.core.util.PermissionUtils;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u0005H\u0014J\b\u0010\u000b\u001a\u00020\tH\u0016J&\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\u0006\u0010\u0016\u001a\u00020\u0015J\b\u0010\u0017\u001a\u00020\u0015H\u0016J\b\u0010\u0018\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0019"}, m254d2 = {"Lcom/privacystar/core/ui/intro/PermissionDeniedFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroFragment;", "Lcom/privacystar/core/ui/intro/intro_core/IntroActivity$IntroActivityContent;", "()V", "REQUEST_PERMISSION_SETTING", "", "getREQUEST_PERMISSION_SETTING", "()I", "canAutoTransition", "", "getLayoutResId", "handlesBackButton", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "", "onSettingsClick", "onStart", "shouldDisplay", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.PermissionDeniedFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/PermissionDeniedFragment.class */
public final class PermissionDeniedFragment extends IntroFragment implements IntroActivity.IntroActivityContent {
    private final int REQUEST_PERMISSION_SETTING = 1;
    private HashMap _$_findViewCache;

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
        return C1566R.C1571layout.permission_denied_fragment;
    }

    public final int getREQUEST_PERMISSION_SETTING() {
        return this.REQUEST_PERMISSION_SETTING;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean handlesBackButton() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View view = inflater.inflate(getLayoutResId(), viewGroup, false);
        Intrinsics.checkExpressionValueIsNotNull(view, "view");
        ((CardView) view.findViewById(C1566R.C1569id.permissions_denied_cv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.intro.PermissionDeniedFragment$onCreateView$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                PermissionDeniedFragment.this.onSettingsClick();
            }
        });
        return view;
    }

    @Override // android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        if (PermissionUtils.hasGeneralPermissions(PSApplication.context())) {
            Timber.m37d("Permissions were granted, transitioning view.", new Object[0]);
            transitionIntroFragment();
            return;
        }
        Timber.m37d("App resumed and permissions aren't granted yet.", new Object[0]);
    }

    public final void onSettingsClick() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        Context context = PSApplication.context();
        Intrinsics.checkExpressionValueIsNotNull(context, "PSApplication.context()");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        startActivityForResult(intent, this.REQUEST_PERMISSION_SETTING);
    }

    @Override // com.privacystar.core.p011ui.PSFragment, android.support.p001v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (Build.VERSION.SDK_INT >= 26) {
            requestPermissions(new String[]{"android.permission.ANSWER_PHONE_CALLS", "android.permission.CALL_PHONE"}, 1001);
        }
        if (PermissionUtils.hasGeneralPermissions(PSApplication.context())) {
            Timber.m37d("Permissions are already granted, transitioning view.", new Object[0]);
            transitionIntroFragment();
            return;
        }
        Timber.m37d("Permissions weren't granted or are set to never ask again, inflating this view to instruct user how to grant permissions.", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.intro.intro_core.IntroActivity.IntroActivityContent
    public boolean shouldDisplay() {
        return !PermissionUtils.hasGeneralPermissions(PSApplication.context());
    }
}
